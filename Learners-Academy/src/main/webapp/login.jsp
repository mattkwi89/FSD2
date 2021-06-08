<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Learners Academy Login Form</title>
</head>
<body>
<jsp:include page="my-header.html"/>
<h3>Learners Academy Login</h3>


<hr/>

<form action="/Learners-Academy/secured-servlet" method="post">

<p>User name : <input type="text" name="username"/></p>
<p>Password : <input type="password" name="password"/></p>
<p>
	<input type="submit" value="Login"/> &nbsp;
	<input type="reset" value="Clear"/>
	
</p>


</form>
<jsp:include page="my-footer.jsp"/>
</body>
</html>