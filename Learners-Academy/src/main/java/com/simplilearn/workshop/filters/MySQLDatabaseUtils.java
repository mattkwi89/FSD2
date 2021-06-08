package com.simplilearn.workshop.filters;

import java.sql.*; //jdbc api

public class MySQLDatabaseUtils {

	public static Connection getConnection() 
			throws SQLException,ClassNotFoundException{
		String driverClassName = "com.mysql.cj.jdbc.Driver";
		String url = "jdbc:mysql://localhost:3306/lms?useSSL=false";
		String user = "root";
		String password = "m1Jew24mk";
		//step 1 load a driver
		Class.forName(driverClassName);
		//step 2 obtain a connection using driver manager class
		Connection connection = DriverManager.getConnection(url,user,password);
		return connection;
		
	}
}
