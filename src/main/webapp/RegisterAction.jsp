<%@page import="com.Model.DAO"%>
<%@page import="com.Model.Data"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Register Action</title>
<style > body{background-color: green;}</style>
</head>
<body>

<%
	// Java Page
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

// Import the data class 

d.setUserId(UserIdd);
d.setFirstName(FirstName);
d.setLastName(LastName);
d.setEmail(Email);
d.setPassword(Password);
d.setMobileNo(MobileNo);
d.setGender(Gender);

Integer id=d.getUserId();
out.println(id);

int ii=DAO.insertData(d);
if(ii>0){
	out.println("Account is created Successfully");
}
else{
	out.println("Account is NOT created");
}

/*
// calling the methods 

out.println(UserId+"<br>");
out.println(FirstName+"<br>");
out.println(LastName);
out.println(Email);
out.println(Password);
out.println(MobileNo);
out.println(Gender);
*/	
%>
</body>
</html>