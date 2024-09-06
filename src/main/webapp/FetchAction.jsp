<%@page import="java.util.Iterator"%>
<%@page import="java.util.List"%>
<%@page import="com.Model.DAO"%>
<%@page import="com.Model.Data"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Fetch Action</title>
<style >
	body{
	background-color: yellow;
	}
</style>
</head>

<body>
<%
	String email=(String)session.getAttribute("email");
	
	if(session!=null){
		Data d=new Data();
		d.setEmail(email);
		
		
		List li=DAO.fetchDetails(d);
		Iterator ii=li.iterator();
		
		out.println("<center>");
		out.println("<table border='1'>");
		out.println("<tr>");
		out.println("<th>User Id</th>");
		out.println("<th>FirstName</th>");
		out.println("<th>LastName</th>");
		out.println("<th>Email</th>");
		out.println("<th>Password</th>");
		out.println("<th>Mobile No</th>");
		out.println("<th>Gender</th>");
		out.println("<th>Edit</th>");
		out.println("<th>Logout</th>");
		out.println("</tr>");
		out.println("<tr>");
		while(ii.hasNext())
		{
			Data d1=(Data)ii.next();
			out.println("<td>"+d1.getUserId()+"</td>");
			out.println("<td>"+d1.getFirstName()+"</td>");
			out.println("<td>"+d1.getLastName()+"</td>");
			out.println("<td>"+d1.getEmail()+"</td>");
			out.println("<td>"+d1.getPassword()+"</td>");
			out.println("<td>"+d1.getMobileNo()+"</td>");
			out.println("<td>"+d1.getGender()+"</td>");
			
		}
		out.println("<td><a href='Edit.jsp?email="+email+"'>Edit</a></td>");
		out.println("<td><a href='Logout.jsp?email="+email+"'>Logout </a></td>   ");
		
		
		out.println("</tr>");
		out.println("</table>");
		
		
		
		out.println("</center>");
	}
	else{
		response.sendRedirect("Login.jsp?msg=invalid");
	}
	
	
		
%>

</body>
</html>