package src;

import bean.Item;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.HashMap;
import java.util.logging.Level;
import java.util.logging.Logger;

public class DbManager {
	private static Connection DB;
	private static Statement STMT;
	private static ResultSet RS;
	
	private static String DB_URL;
	
	public DbManager(){
		DB_URL = "jdbc:derby://localhost:1527/icommerce";
		DB = null;
		STMT = null;
		RS = null;
	}
	
	public void connect() throws ClassNotFoundException{
		try{
			Class.forName("org.apache.derby.jdbc.ClientDriver");
			DB = DriverManager.getConnection(DB_URL);
			System.out.println("Connection OK");
		}catch(SQLException e){
			Logger.getLogger(DbManager.class.getName()).log(Level.SEVERE, null, e);
		}
	}
	
	
	public void close(){
		if(RS != null){
			try{
				RS.close();
			}catch(SQLException e){
				Logger.getLogger(DbManager.class.getName()).log(Level.SEVERE, null, e);
			}
		}
		
		if(STMT != null){
			try{
				STMT.close();
			}catch(SQLException e){
				Logger.getLogger(DbManager.class.getName()).log(Level.SEVERE, null, e);
			}
		}
		
		if(DB != null){
			try{
				DB.close();
			}catch(SQLException e){
				Logger.getLogger(DbManager.class.getName()).log(Level.SEVERE, null, e);
			}
		}
		System.out.println("Close OK");
	}
	
	public void insertMember(String name, String password, String email, Boolean guild){
		MessageDigest md;
		String out = "";
		try{
			md = MessageDigest.getInstance("SHA-512");
			md.update(password.getBytes());
			byte[] mb = md.digest();
			
			for (int i = 0; i < mb.length; i++) {
				byte temp = mb[i];
				String s = Integer.toHexString(new Byte(temp));
				while (s.length() < 2) {
					s = "0" + s;
				}
				s = s.substring(s.length() - 2);
				out += s;
			}
		}catch (NoSuchAlgorithmException e) {
			System.out.println("ERROR: " + e.getMessage());
		}
		
		String query = "INSERT INTO APP.MEMBER (Name, Password, Email, Guild) VALUES" +
				  "('" + name + "'," +
				  "'" + out + "'," +
				  "'" + email + "'," +
				  guild + ")";
		try {
			STMT = DB.createStatement();
			STMT.executeUpdate(query);
			System.out.println(query);
		}catch(SQLException ex){
			Logger.getLogger(DbManager.class.getName()).log(Level.SEVERE, null, ex);
		}
	}
	
	public HashMap<String, Item> selectItems(){
		HashMap<String, Item> itemList = new HashMap<String, Item>();
		try {
			String query = "SELECT * FROM APP.ITEM";
			STMT = DB.createStatement();
			ResultSet rs = STMT.executeQuery(query);
			while(rs.next()){
				String name = rs.getString("name");
				Item item = new Item();
				item.setName(name);
				item.setType(rs.getString("type"));
				item.setCategory(rs.getString("category"));
				item.setPrice(rs.getInt("price"));
				item.setAttack(rs.getInt("attack"));
				item.setDefense(rs.getInt("defense"));
				item.setMagic(rs.getInt("magic"));
				item.setResistance(rs.getInt("resistance"));
				item.setSpeed(rs.getInt("speed"));
				item.setMove(rs.getInt("move"));
				item.setJump(rs.getInt("jump"));
				item.setEvasion(rs.getInt("evasion"));
				item.setPath(rs.getString("path"));
				itemList.put(name, item);
			}
		} catch (SQLException ex) {
			Logger.getLogger(DbManager.class.getName()).log(Level.SEVERE, null, ex);
		}
		return itemList;
	}
	
	public HashMap<String,Item> selectItemsByType(String type){
		HashMap<String, Item> itemList = new HashMap<String, Item>();
		try {
			String query = "SELECT * FROM APP.ITEM WHERE Type='" + type + "'";
			STMT = DB.createStatement();
			ResultSet rs = STMT.executeQuery(query);
			while(rs.next()){
				String name = rs.getString("name");
				Item item = new Item();
				item.setName(name);
				item.setType(rs.getString("type"));
				item.setCategory(rs.getString("category"));
				item.setPrice(rs.getInt("price"));
				item.setAttack(rs.getInt("attack"));
				item.setDefense(rs.getInt("defense"));
				item.setMagic(rs.getInt("magic"));
				item.setResistance(rs.getInt("resistance"));
				item.setSpeed(rs.getInt("speed"));
				item.setMove(rs.getInt("move"));
				item.setJump(rs.getInt("jump"));
				item.setEvasion(rs.getInt("evasion"));
				item.setPath(rs.getString("path"));
				itemList.put(name, item);
			}
		} catch (SQLException ex) {
			Logger.getLogger(DbManager.class.getName()).log(Level.SEVERE, null, ex);
		}
		return itemList;
	}
	
	public boolean isMember(String memberName){
		boolean isMember = false;
		try{
			String query = "SELECT * from APP.MEMBER where name='"+memberName+"'";
			STMT = DB.createStatement();
			ResultSet rs = STMT.executeQuery(query);
			if(rs.next()){
				isMember = true;
			}
		}catch(SQLException ex){
			Logger.getLogger(DbManager.class.getName()).log(Level.SEVERE, null, ex);
		}
		return isMember;
	}
}
