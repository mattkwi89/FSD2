<%@page import="java.util.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Learners Academy Subject Creation Form</title>
</head>
<body>
<jsp:include page="my-header.html"/>
<h2>Learners Academy Subject Creation Form</h2>

<hr/>


<form action="subject.jsp">
	Subject: <input type="text" name="theItem" required="true">
	
	
	

	<input type="submit" value="Add">
</form>
<!-- Step 2: Add new item to "To Do" list -->
<%
	
	//Get the To Do items from the session
	List<String> items = (List<String>) session.getAttribute("myToDoList");
	
	//if the To Do items doesnt exist, then create a new one. 	
	if (items == null){
		items = new ArrayList<String>();
		session.setAttribute("myToDoList", items);
	}
	
	//Check to see if there is form data to add 
	String theItem = request.getParameter("theItem");
	if(theItem != null){
		items.add(theItem);
	}
	

		
%>
<!-- Step 3: Display all "To Do" items from session-->
<hr/>
<b>Subjects: </b> <br/>

<ol>
<%
for(String temp : items){
		out.println("<li>"+ temp + "</li>");
	}

%>
</ol>

<form action="/Learners-Academy/teacher.jsp" method="post">

    <table>
             
        <tr>
            <td><input type="submit" value="Add Teachers"/></td>
            <td><input type="reset" value="Clear"/></td>
        </tr>
    </table>
</form>
<jsp:include page="my-footer.jsp"/>
</body>
</html>
