package com.simplilearn.workshop;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.simplilearn.workshop.filters.MySQLDatabaseUtils;
//SUPER IMPORTANT PACKAGE TO IMPORT
import java.sql.*;
import java.sql.Connection;


@WebServlet("/insert-data")
public class InsertSqlServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    //doPost in register.html the method is post - so we use doPost method!
	protected void doPost(HttpServletRequest request, HttpServletResponse response) 
			throws ServletException, IOException {
	//read parameters from request
		String subject1 = request.getParameter("SUBJECT1");
		/*
		 * String subject2 = request.getParameter("SUBJECT2"); String subject3 =
		 * request.getParameter("SUBJECT3"); String subject4 =
		 * request.getParameter("SUBJECT4");
		 */
	
		
		
		
		
	//initialize the database
		try {
			Connection connection = com.simplilearn.workshop.filters.MySQLDatabaseUtils.getConnection();
			String INSERT_SQL = "insert into subjects(subject1) values(?)";
			
			//create a Prepared Statement
			PreparedStatement preparedStatement = connection.prepareStatement(INSERT_SQL);
			
			preparedStatement.setString(1, subject1);
			/*
			 * preparedStatement.setString(2, subject2); preparedStatement.setString(3,
			 * subject3); preparedStatement.setString(4, subject4);
			 */
			
			preparedStatement.executeUpdate();
			
			//close the prepared statement and connection
			preparedStatement.close();
			connection.close();
			
			response.setContentType("text/html");
			
			PrintWriter out = response.getWriter();
			out.println("<html>");
			out.println("<head>");
			out.println("<title>Connection!</title>");
			out.println("</head>");
			out.println("<body>");
			out.println("<h3>Classes Added Successfully!</h3>");
			out.println("<form action='/Learners-Academy/subject.jsp' method='post'>");
			out.println("<input type='submit' value='Add Subject'/>");
			out.println("</form>");
			out.println("<form action='/Learners-Academy/teacher.jsp' method='post'>");
			out.println("<input type='submit' value='Add Teachers'/>");
			out.println("</form>");
			out.println("</body>");
			out.println("</html>");
			
		} catch (ClassNotFoundException | SQLException e) {
			e.printStackTrace();
		}
		
	}

}
