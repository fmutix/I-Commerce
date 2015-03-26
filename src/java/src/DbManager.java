/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package src;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author mute
 */
public class DbManager {
    private static Connection DB;
    private static PreparedStatement STMT;
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
}
