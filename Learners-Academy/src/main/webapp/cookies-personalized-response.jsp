<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head><title>Confirmation</title></head>
<%
	//read form data
	String desClass = request.getParameter("desiredClass");

	//create the cookie
	Cookie theCookie = new Cookie("myApp.desiredClass", desClass);
	
	//set the lifespan
	theCookie.setMaxAge(60*60*24*365);
	
	//send cookie to browser
	response.addCookie(theCookie);
%>


<body>
	Thanks! We set your desired class to : ${param.desiredClass}
	
	<br/><br/>
	<a href="cookies-homepage.jsp">Return to homepage.</a>
</body>
</html>