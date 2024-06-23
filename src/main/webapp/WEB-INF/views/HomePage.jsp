<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Home Page</title>
<link href="./output.css" rel="stylesheet">
</head>
<style>
body {
	margin: 0;
	padding: 0;
	box-sizing: border-box;
	background: black;
}

#home {
	font-weight: bold;
	font-size: 20px; 
	background : linear-gradient( 45deg, #FF512F, #DD2476,#FF512F, #DD2476); /* Define your gradient */
	-webkit-background-clip: text;
	-webkit-text-fill-color: transparent;
}
</style>
<body>
	<div id="home">
		<div><h1 class="font">eComApp</h1></div>
		<div><h1 class="text">Welcome To Home Page.</h1></div>
		<a href="logout">Logout</a>
	</div>
</body>
</html>