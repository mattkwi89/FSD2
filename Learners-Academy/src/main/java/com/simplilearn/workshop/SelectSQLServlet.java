package com.simplilearn.workshop;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.simplilearn.workshop.filters.MySQLDatabaseUtils;


@WebServlet("/select-sql")
public class SelectSQLServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
private static final String SELECT_SQL= "SELECT * FROM lms.subjects";
protected void doGet(HttpServletRequest request, HttpServletResponse response) 
        throws ServletException, IOException {
    
    
    try {
        //step1: initialize  the database
        Connection connection = com.simplilearn.workshop.filters.MySQLDatabaseUtils.getConnection();
        
        //step2: obtain a statement object from connection
        Statement statement = connection.createStatement();
        
        //step3: execute the query to obtain a ResultSet
        ResultSet  rs = statement.executeQuery(SELECT_SQL);
        
        
        response.setContentType("text/html");
        PrintWriter out = response.getWriter();
        
        out.println("<html>");
        out.println("<head>");
        out.println("<title>welcome</title>");
        out.println("</head>");
        out.println("<body>");
        out.println("<div align='center'>");
        out.println("<table>");
        out.println("<tr>");
        out.println("<table border='1'>");
        out.println("<th>id</th>");
        out.println("<th>Subject 1</th>");
        out.println("</tr>");
        //step4: traverse the ResultSet and obtain the values
        while (rs.next()) {
	/*		out.println(rs.getInt("id") + "&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;");
			out.println(rs.getString("name") + "&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;");
			out.println(rs.getString("phone") + "&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;");
			out.println(rs.getString("email") + "&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;");
			out.println("<br/>"); */
        	  out.println("<tr>");
              out.println("<td>"+rs.getInt("id")+"</td>");
              out.println("<td>"+rs.getString("subject1")+"</td>");

              out.println("</tr>");	
		}
        rs.close();
        statement.close();
        connection.close();
 
        out.println("</table>");
        out.println("</div>");
        out.println("</body>");
        out.println("</html>");
        
        
    } catch (ClassNotFoundException | SQLException e) {
        
        e.printStackTrace();
    }
    
}

	
	

}
