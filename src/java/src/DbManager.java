/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package src;

import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author mute
 */
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
}
