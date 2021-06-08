<%@page import="java.util.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Class List</title>
</head>
<body>
<jsp:include page="my-header.html"/>
<h2>Class Schedule</h2>

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



	Thanks! We set your desired class to : ${param.desiredClass}
<form action="/Learners-Academy/student-form.jsp" method="post">

    <table>
    
        <tr>
            <td><input type="submit" value="Finish"/></td>

        </tr>
    </table>
</form>

<hr/>
<jsp:include page="my-footer.jsp"/>
</body>
</html>
