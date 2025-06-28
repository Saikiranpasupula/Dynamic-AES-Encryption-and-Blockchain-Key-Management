package com.database;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class Dbconnection {
	
	
	public static Connection getconnection() throws ClassNotFoundException, SQLException{
		
		String url="jdbc:mysql://localhost:3306/vc12?user=root && password=root";
		Class.forName("com.mysql.jdbc.Driver");
		Connection connection= DriverManager.getConnection(url);
		return connection;
	}

}
