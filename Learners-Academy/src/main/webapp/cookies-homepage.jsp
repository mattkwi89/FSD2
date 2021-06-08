<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Training Portal</title>
</head>
<body>
<!-- Read the desired class time -->
<%
	//the default .. if there are no cookies
	String desClass = "Morning";

	//get the cookies from the browser request
	Cookie[] theCookies = request.getCookies();
	
	//find our desired class time
	if( theCookies != null){
		for(Cookie tempCookie : theCookies){
			if("myApp.desiredClass".equals(tempCookie.getName())){
				desClass = tempCookie.getValue();
				break;
			}
		}
	}

%>

<!-- Show a personalized page ... use 'desClass' variable -->
<!-- Show classes available at these times -->
<h4>Available Classes for <%= desClass %> time</h4>
<ul>
	<li>Math<li>
	<li>Science<li>
	<li>History<li>
	<li>Literature<li>

</ul>


<a href="classList.jsp">Class Schedule</a>
<a href="cookies-personalized-form.html">Personalized Page</a>
</body>
</html>