<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Login Page</title>
</head>
<style >
	body{
		background-color:aqua;
	}
</style>
<body>
<form action="LoginAction.jsp">
<center>
<h1>Wlcome to Login Page</h1>

<table border="1">
	<tr>
	
		<th>Email: </th><td> <input type="email" name="em"> </td>
	</tr>
	<tr>
	
		<th>Password: </th><td> <input type="password" name="pwd"> </td>
	</tr>
	<tr>
		<td colspan="2" style="text-align: center;"><input type="submit" value="Login">  </td>
	</tr>
	
</table>
	<%
	String msg=request.getParameter("msg");
	if("invaild".equals(msg))
	{
	%>
	<h2>Invalid Email/Password</h2>
	<%} %>
	<%
	
	if("exit".equals(msg))
	{
	%>
	<h2>Successfully Logged out</h2>
	<%} %>
	<%
	
	if("done".equals(msg))
	{
	%>
	<h2>Profile Updated Successfully</h2>
	<%} %>
	<%
	
	if("failed".equals(msg))
	{
	%>
	<h2>Record NOT Updated</h2>
	<%} %>
</center>
</form>

</body>
</html>