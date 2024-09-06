<%@page import="java.util.Vector"%>
<%@page import="com.Model.DAO"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Login Action</title>
<style>
	body{
		background-color: red;
	}
</style>
</head>
<body>
<%
	String email=request.getParameter("em");
	String password=request.getParameter("pwd");
	
	Vector v=DAO.validate();
	
	if(v.contains(email)&&v.contains(password)){
		out.println("Login has done Succesfully");
		session.setAttribute("email", email);
		RequestDispatcher rd=request.getRequestDispatcher("FetchAction.jsp");
		rd.forward(request, response);
		
		
	}
	else{
		RequestDispatcher rd=request.getRequestDispatcher("Login.jsp");
		rd.include(request, response);
	
		out.println("Invalid Email/Password");
		//response.sendRedirect("Login.jsp?msg=invalid");
	}
	
%>
</body>
</html>