package com.simplilearn.workshop;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class SecuredServlet
 */
@WebServlet("/secured-servlet")
public class SecuredServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
 

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		response.setContentType("text/html");
	
		PrintWriter out = response.getWriter();
		
		out.println("<html>");
		out.println("<head>");
		out.println("<title>Connection!</title>");
		out.println("</head>");
		out.println("<body>");
		out.println("<h1> Successfully logged in </h1>");
		out.println("<form action='/Learners-Academy/subject.jsp' method='post'>");
		out.println("<input type='submit' value='Create Subjects'/>");
		out.println("</form>");
				out.println("</body>");
		out.println("</html>");

	}



}
