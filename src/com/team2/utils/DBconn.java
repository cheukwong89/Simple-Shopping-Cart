package com.team2.utils;

/**
 * 
 */
import java.io.*;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
/**
 * @author Zhuo Wang
 *
 */
public class DBconn {
	public static String driver;    
    public static String url;     
    public static String username;   
    public static String password;     
    public static Connection conn;     
    public static Statement stmt;    
    public ResultSet rs;
    
    static{
    	try{
    		driver = "com.mysql.jdbc.Driver";
    		Class.forName(driver);
    		url = "jdbc:mysql://172.99.96.76/956744_marlabs";
            username = "956744_root";
            password = "Marlabs12java";
            conn = DriverManager.getConnection(url, username, password);
            System.out.println("Connection established successfully ");
    	}catch(ClassNotFoundException classnotfoundex){
    		classnotfoundex.printStackTrace();
    		System.err.println("db: " + classnotfoundex.getMessage());
    	}catch(SQLException sqlex){
    		sqlex.printStackTrace();
    		System.err.println("db.getconn(): " + sqlex.getMessage());
    	}
    }
    public DBconn(){
    	this.conn = this.getConn();
    }
    public Connection getConn(){
    	return this.conn;
    }
    
    public void doInsert(String sql) {     
        try {     
            stmt = conn.createStatement();     
            int i = stmt.executeUpdate(sql);     
        } catch(SQLException sqlexception) {     
            System.err.println("db.executeInset:" + sqlexception.getMessage());     
        }finally{     
                 
        }     
    } 
    
    public void doDelete(String sql) {     
        try {     
            stmt = conn.createStatement();     
            int i = stmt.executeUpdate(sql);     
        } catch(SQLException sqlexception) {     
            System.err.println("db.executeDelete:" + sqlexception.getMessage());     
        }     
    }  
    
    public void doUpdate(String sql) {     
        try {     
            stmt = conn.createStatement();     
            int i = stmt.executeUpdate(sql);     
        } catch(SQLException sqlexception) {     
            System.err.println("db.executeUpdate:" + sqlexception.getMessage());     
        }     
    }     
    
    public ResultSet doSelect(String sql) {     
        try {  
            conn=DriverManager.getConnection(url,username,password);  
            stmt = conn.createStatement(java.sql.ResultSet.TYPE_SCROLL_INSENSITIVE,java.sql.ResultSet.CONCUR_READ_ONLY);       
            rs = stmt.executeQuery(sql);   
            System.out.println("Get resultset");  
        } catch(SQLException sqlexception) {     
            System.err.println("db.executeQuery: " + sqlexception.getMessage());     
        }     
        return rs;     
    }  
    
    public void close(ResultSet rs) throws SQLException, Exception {     
        
        if (rs != null) {     
          rs.close();     
          rs = null;     
        }     
     
        if (stmt != null) {     
          stmt.close();     
          stmt = null;     
        }     
     
        if (conn != null) {     
          conn.close();     
          conn = null;     
        }     
      }    
    
    public void close() throws SQLException, Exception {     
        if (stmt != null) {     
          stmt.close();     
          stmt = null;     
        }     
     
        if (conn != null) {     
          conn.close();     
          conn = null;     
        }     
      }  
	

}
