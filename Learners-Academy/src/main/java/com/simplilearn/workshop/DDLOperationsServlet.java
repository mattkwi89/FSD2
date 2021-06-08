package com.simplilearn.workshop;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.SQLException;
import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.simplilearn.workshop.filters.MySQLDatabaseUtils;


@WebServlet("/ddl-operations")
public class DDLOperationsServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

	protected void doGet(HttpServletRequest request, HttpServletResponse response) 
			throws ServletException, IOException {
		
		try {
			Connection connection = com.simplilearn.workshop.filters.MySQLDatabaseUtils.getConnection();
			//create SQL table
			String CREATE_SQL = "create table teachers (eid int(5), firstName char(45), lastName varchar(45))";
			
			Statement statement = connection.createStatement();
			
			statement.execute(CREATE_SQL);
			
			
			
		///alter table
		/*	String ALTER_SQL = "ALTER TABLE department add depthead varchar(15)";
			
			Statement statement = connection.createStatement();
			statement.execute(ALTER_SQL);
		*/
			//drop SQL table
	/*	String DROP_SQL = "drop table department";
		Statement statement = connection.createStatement();
		statement.execute(DROP_SQL);
		*/
			statement.close();
			connection.close();
			
			response.setContentType("text/html");
			PrintWriter out = response.getWriter();
			out.println("<h3>Table Created</h3>");
		//	out.println("<h3>Table Altered</h3>");
		//	out.println("<h3>Table Dropped</h3>");
		} catch (ClassNotFoundException |SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}


}
