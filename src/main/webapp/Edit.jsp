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
<title>Edit Profile</title>
</head>
<body>
<%
String email=request.getParameter("email");
Data d=new Data();
d.setEmail(email);

List li=DAO.fetchDetails(d);
	
Iterator ii=li.iterator();

	while(ii.hasNext())
	{
		Data d1=(Data)ii.next();
		
		%>
		<form action="EditAction.jsp">
		<center>
		<h1 style="color: orange;">Welcome to Edit Page</h1>
			<table style="color:orange ;" border="2">
				<tr>
					<th>User Id:</th><td> <input type="text" name="uid" value="<%=d1.getUserId() %>"></td>
				</tr>
				<tr>
					<th>First Name:</th><td> <input type="text" name="fn" value="<%=d1.getFirstName() %>"></td>
				</tr>
				<tr>
					<th>Last Name:</th><td> <input type="text" name="ln" value="<%=d1.getLastName() %>"></td>
				</tr>
				<tr>
					<th>Email:</th><td> <input type="email" name="em" value="<%=d1.getEmail() %>"></td>
				</tr>
				<tr>
					<th>Password:</th><td> <input type="password" name="pwd" value="<%=d1.getPassword() %>"></td>
				</tr>
				<tr>
					<th>Phone Number:</th><td> <input type="tel" name="mo" value="<%=d1.getMobileNo() %>"></td>
				</tr>
				<tr>
					<th>Gender:</th><td> <input type="text" name="gen" value="<%=d1.getGender() %>"></td>
				</tr>
				<tr>
					<td colspan="2" align="center"><input type="submit" value="Edit Profile"></td>
					<td colspan="2" align="left"><input type="reset" value="Reset"></td>
				</tr>
			</table>

		</center>
		</form>
		
		<%
		
	}
%>
</body>
</html>