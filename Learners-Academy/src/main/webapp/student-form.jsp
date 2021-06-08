<%@page import="java.util.*" %>
<!DOCTYPE html>
<html>
<head><title>Student Registration Form</title></head>

<jsp:include page="my-header.html"/>
<h2>Student Scheduling</h2>

<hr/>


<body>

<form action="student-response.jsp">

	First Name: <input type="text" name="firstName"/>
	 <br/><br/>

	Last Name: <input type="text" name="lastName"/>
	 <br/><br/>
	 
		Country: <select name="country">
					<option>Brazil</option>
					<option>France</option>
					<option>United States</option>
					<option>India</option>
					<option>China</option>
					<option>United Kingdom</option>
					<option>Germany</option>
					<option>Palestine</option>
				</select>	
	 <br/><br/>
	 
	 	Desired Class: <br/>
	 	<input type="radio" name="desiredClass" value="math"> Math
	 	<input type="radio" name="desiredClass" value="History"> History
	 	<input type="radio" name="desiredClass" value="Science"> Science
	 	<input type="radio" name="desiredClass" value="Literature"> Literature
	 <br/><br/>
	 
	 	Desired class Time: <br/>
	 	<input type="checkbox" name="desiredTime" value="Morning"> Morning
	 	<input type="checkbox" name="desiredTime" value="Afternoon"> Afternoon
	 	<input type="checkbox" name="desiredTime" value="Evening"> Evening
	 	<input type="checkbox" name="desiredTime" value="Night"> Night
	 <br/><br/>
	 
	 Desired Teacher: <br/>
	 	<input type="radio" name="desiredTeacher" value="Fred"> Fred
	 	<input type="radio" name="desiredTeacher" value="Joey"> Joey
	 	<input type="radio" name="desiredTeacher" value="Frank"> Frank
	 	<input type="radio" name="desiredTeacher" value="Jean"> Jean
	 <br/><br/>
	 
	 
	 <br/><br/>
	 <input type="submit" value="Submit">
	 



</form>
</body>

</html>