<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Confirmation</title>
</head>
<body>
<jsp:include page="my-header.html"/>



	The student is confirmed:  ${param.firstName} ${param.lastName}
	
	<br/><br/>
	
	The student's country: ${param.country}
	
	<br/><br/>
	
	The student's desired class: ${param.desiredClass}
	
	<br/><br/>
	
	The student's desired class time: 
		<ul>
			<%
				String[] classTime = request.getParameterValues("desiredTime");
				if (classTime !=null){
				for (String tempTime: classTime){
					out.print("<li>"+ tempTime + "</li>");
					}
				}
			%>
		</ul>
		
		<br/><br/>
	
	The student's desired Teacher: 
		<ul>
			<%
				String[] classTeacher = request.getParameterValues("desiredTeacher");
				if (classTeacher !=null){
				for (String tempTime1: classTeacher){
					out.print("<li>"+ tempTime1 + "</li>");
					}
				}
			%>
		</ul>


<form action="/Learners-Academy/cookies-homepage.jsp" method="post">

    <table>
             
        <tr>
            <td><input type="submit" value="Class Schedule"/></td>
            <td><input type="reset" value="Clear"/></td>
        </tr>
    </table>
</form>	
</body>
</html>