<%@page import="com.Model.DAO"%>
<%@page import="com.Model.Data"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Edit Action</title>
</head>
<body>
<%
String UserId=request.getParameter("uid");
Integer UserIdd=Integer.parseInt(UserId) ;  // Declare as Primary key  

String FirstName=request.getParameter("fn");
String LastName=request.getParameter("ln");
String Email=request.getParameter("em");
String Password=request.getParameter("pwd");

String MobNo=request.getParameter("mo");
Long MobileNo=Long.parseLong(MobNo);     // Declare as Primary key  

String Gender=request.getParameter("gen");


Data d=new Data(); 

//Import the data class 

d.setUserId(UserIdd);
d.setFirstName(FirstName);
d.setLastName(LastName);
d.setEmail(Email);
d.setPassword(Password);
d.setMobileNo(MobileNo);
d.setGender(Gender);

	int res=DAO.editProfile(d);
	if(res>0){
		response.sendRedirect("Login.jsp?msg=done");
	}
	else{
		response.sendRedirect("Login.jsp?msg=failed");
	}


%>
</body>
</html>