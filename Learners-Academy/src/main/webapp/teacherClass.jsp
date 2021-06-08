<%@page import="java.util.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Learners Academy Subject Creation Form</title>
</head>
<body>
<jsp:include page="my-header.html"/>
<h2>Learners Academy Available Teachers and Classes</h2>

<hr/>

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
<form action="/Learners-Academy/student-form.jsp" method="post">

    <table>
    
        <tr>
            <td><input type="submit" value="Generate Schedule"/></td>

        </tr>
    </table>
</form>

<hr/>
<jsp:include page="my-footer.jsp"/>
</body>
</html>
