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


@WebServlet("/insert-data2")
public class InsertSqlServlet2Teachers extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    //doPost in register.html the method is post - so we use doPost method!
	protected void doPost(HttpServletRequest request, HttpServletResponse response) 
			throws ServletException, IOException {
	//read parameters from request
		String firstName = request.getParameter("FIRSTNAME");
		String lastName = request.getParameter("LASTNAME");
		String subjectTaught = request.getParameter("SUBJECTTAUGHT");
		
	
		
		
		
		
	//initialize the database
		try {
			Connection connection = com.simplilearn.workshop.filters.MySQLDatabaseUtils.getConnection();
			String INSERT_SQL = "insert into teachers(firstName,lastName,subjectTaught) values(?,?,?)";
			
			//create a Prepared Statement
			PreparedStatement preparedStatement = connection.prepareStatement(INSERT_SQL);
			
			preparedStatement.setString(1, firstName);
			preparedStatement.setString(2, lastName);
			preparedStatement.setString(3, subjectTaught);
		
			
			preparedStatement.executeUpdate();
			
			//close the prepared statement and connection
			preparedStatement.close();
			connection.close();
			
			response.setContentType("text/html");
			
			PrintWriter out = response.getWriter();
			out.println("<html>");
			out.println("<head>");
			out.println("<title>Teacher Added Successfully!</title>");
			out.println("</head>");
			out.println("<body>");
			out.println("<h3>Teacher Added!</h3>");

			out.println("<form action='/Learners-Academy/teacher.jsp' method='post'>");
			out.println("<input type='submit' value='Add another Teacher'/>");
			out.println("</form>");
			
			out.println("<form action='/Learners-Academy/student-form.html' method='post'>");
			out.println("<input type='submit' value='Schedule Students'/>");
			out.println("</form>");
			
			out.println("</body>");
			out.println("</html>");
			
		} catch (ClassNotFoundException | SQLException e) {
			e.printStackTrace();
		}
		
	}

}
