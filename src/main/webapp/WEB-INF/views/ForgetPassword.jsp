<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>ForgetPassword</title>
</head>
<body>
<form action="sendotp" method="post">
	<label>Email :</label><br>
	<input type="email" name="email"/>${error}<br><br>
	<input type="submit" name="search" value="search"/><br><br>
	<a href="login" style="color:black;">Login</a>
</form>
</body>
</html>