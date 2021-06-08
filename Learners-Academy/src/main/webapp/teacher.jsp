<%@page import="java.util.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Learners Academy Subject Creation Form</title>
</head>
<body>
<jsp:include page="my-header.html"/>
<h2>Learners Academy Teachers</h2>

<hr/>
<form action="teacher.jsp">
	Teacher: <input type="text" name="theItem1" required="true">
	
	
	

	<input type="submit" value="Add">
</form>
<!-- Step 2: Add new item to "To Do" list -->
<%
	
	//Get the To Do items from the session
	List<String> items1 = (List<String>) session.getAttribute("myToDoList1");
	
	//if the To Do items doesnt exist, then create a new one. 	
	if (items1 == null){
		items1 = new ArrayList<String>();
		session.setAttribute("myToDoList1", items1);
	}
	
	//Check to see if there is form data to add 
	String theItem1 = request.getParameter("theItem1");
	if(theItem1 != null){
		items1.add(theItem1);
	}
	

		
%>
<!-- Step 3: Display all "To Do" items from session-->
<hr/>
<b>Teachers: </b> <br/>

<ol>
<%
for(String temp : items1){
		out.println("<li>"+ temp + "</li>");
	}

%>
</ol>
<form action="/Learners-Academy/teacherClass.jsp" method="post">

    <table>
    
        <tr>
            <td><input type="submit" value="Schedule"/></td>

        </tr>
    </table>
</form>

<hr/>
<jsp:include page="my-footer.jsp"/>
</body>
</html>
