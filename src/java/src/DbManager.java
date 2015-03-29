package src;

import bean.Item;
import bean.Member;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.HashMap;
import java.util.LinkedHashMap;
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
	
	public void insertMember(Member member){
		String name = member.getName();
		String password = member.getPassword();
		String email = member.getEmail();
		Boolean guild = member.getGuild();
		
		
		String query = "INSERT INTO APP.MEMBER (Name, Password, Email, Guild) VALUES" +
				  "('" + name + "'," +
				  "'" + password + "'," +
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
	
	public Item getItem(String itemName){
		Item item = new Item();
		try {
			String query = "SELECT * FROM APP.ITEM WHERE Name='" + itemName + "'";
			STMT = DB.createStatement();
			ResultSet rs = STMT.executeQuery(query);
			while(rs.next()){
				item.setName(rs.getString("name"));
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
			}
		} catch (SQLException ex) {
			Logger.getLogger(DbManager.class.getName()).log(Level.SEVERE, null, ex);
		}
		return item;
	}
	
	public HashMap<String, Item> selectItems(){
		HashMap<String, Item> itemList = new HashMap<String, Item>();
		try {
			String query = "SELECT * FROM APP.ITEM ORDER BY Price";
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
		HashMap<String, Item> itemList = new LinkedHashMap<String, Item>();
		try {
			String query = "SELECT * FROM APP.ITEM WHERE Type='" + type + "' ORDER BY Price";
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
	
	public HashMap<String,Item> selectItemsByCategory(String category){
		HashMap<String, Item> itemList = new LinkedHashMap<String, Item>();
		try {
			String query = "SELECT * FROM APP.ITEM WHERE Category='" + category + "' ORDER BY Price";
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
	
	public Member getMember(String memberName){
		Member member = null;
		try{
			String query = "SELECT * from APP.MEMBER where NAME='"+memberName+"'";
			STMT = DB.createStatement();
			ResultSet rs = STMT.executeQuery(query);
			if(rs.next()){
				member = new Member();
				member.setName(rs.getString("name"));
				member.setPassword(rs.getString("password"));
				member.setEmail(rs.getString("email"));
				member.setGuild(rs.getBoolean("guild"));
			}
		}catch(SQLException ex){
			Logger.getLogger(DbManager.class.getName()).log(Level.SEVERE, null, ex);
		}
		return member;
	}
}
