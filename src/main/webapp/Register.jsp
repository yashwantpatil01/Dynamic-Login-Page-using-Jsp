<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Register Page</title>
<style>
	body{
		
		background-image: url("https://images.indianexpress.com/2021/08/money-heist-professor-1200.jpg");
		
	}
</style>
</head>
<body>
<form action="RegisterAction.jsp">
<center>
<h1 style="color: orange;">Wlcome to Register Page</h1>
	<table style="color:orange ;" border="2">
		<tr>
			<th>User Id:</th><td> <input type="text" name="uid" placeholder="Enter user Id"></td>
		</tr>
		<tr>
			<th>First Name:</th><td> <input type="text" name="fn" placeholder="First Name"></td>
		</tr>
		<tr>
			<th>Last Name:</th><td> <input type="text" name="ln" placeholder="Last Name"></td>
		</tr>
		<tr>
			<th>Email:</th><td> <input type="email" name="em" placeholder="Enter Email Id"></td>
		</tr>
		<tr>
			<th>Password:</th><td> <input type="password" name="pwd" placeholder=" ********* "></td>
		</tr>
		<tr>
			<th>Phone Number:</th><td> <input type="tel" name="mo" placeholder="000-0000-000"></td>
		</tr>
		<tr>
			<th>Gender:</th>
			<td>
				<input type="radio" name="gen" value="Male">Male
				<input type="radio" name="gen" value="FeMAle">FeMale
			</td>
		</tr>
		<tr>
			<td colspan="2" align="center"><input type="submit" value="Sign Up"></td>
			<td colspan="2" align="left"><input type="reset" value="Reset"></td>
		</tr>
	</table>

</center>
</form>
</body>
</html>