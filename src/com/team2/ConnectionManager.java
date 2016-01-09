package com.team2;
import java.sql.Connection;
import java.sql.DriverManager;

public class ConnectionManager {

	    static Connection getMysqlConnection()
	    {
	        Connection conn = null;
	        try{
	            Class.forName("com.mysql.jdbc.Driver");
	            String url = "jdbc:mysql://172.99.96.76/956744_marlabs";
	            String username = "956744_root";
	            String password = "Marlabs12java";
	            conn = DriverManager.getConnection(url, username, password);
	            System.out.println("Connection established successfully ");
	        }catch(Exception e)
	        {
	            e.printStackTrace();
	        }
	        return conn;
	    }
}
