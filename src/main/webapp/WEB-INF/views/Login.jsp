<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Login</title>
<style type="text/css">
body {
	font-family: Arial, sans-serif;
	background-color: black;
	display: flex;
	justify-content: center;
	align-items: center;
	height: 100vh;
	margin: 0;
}

.error {
	background: linear-gradient(45deg, #FF512F, #DD2476, #FF512F, #DD2476);
	/* Define your gradient */
	-webkit-background-clip: text;
	-webkit-text-fill-color: transparent;
	font-size: 25px;
}

.login-container {
	background-color: transparent;
	padding: 20px;
	border: 2px solid white;
	border-radius: 15px;
	width: 300px;
	display: flex;
	flex-direction: column;
	align-items: center;
}

h1 {
	font-size: 30px;
	font-weight: 600;
	background: linear-gradient(45deg, #FF512F, #DD2476, #FF512F, #DD2476);
	/* Define your gradient */
	-webkit-background-clip: text;
	-webkit-text-fill-color: transparent;
}

.login-form {
	width: 100%;
	display: flex;
	flex-direction: column;
	align-items: stretch;
	margin-bottom: 10px;
}

label {
	font-weight: bold;
	font-size: 20px;
	background: linear-gradient(45deg, #FF512F, #DD2476, #FF512F, #DD2476);
	/* Define your gradient */
	-webkit-background-clip: text;
	-webkit-text-fill-color: transparent;
}

input[type="email"], input[type="password"] {
	width: calc(100% - 20px);
	padding: 10px;
	font-size: 12px;
	color: white;
	border: 2px solid #ccc;
	border-radius: 10px;
	font-size: 16px;
	background-color: transparent;
}

.login-button {
	width: 100%;
	padding: 8px;
	color: white;
	background-color: transparent;
	border: 2px solid;
	border-radius: 10px;
	cursor: pointer;
	font-size: 20px;
	font-weight: 600;
	transition: background-color 0.3s;
}

.login-button:hover {
	background: linear-gradient(45deg, #FF512F, #DD2476, #FF512F, #DD2476);
}

form a {
	text-decoration: none;
	text-align: center;
	color: #ff416c;
	font-size: 20px;
}
</style>
</head>
<body>
	<div class="login-container">
		<strong class="error">${error}</strong>
		<h1>Login</h1>
		<form action="authenticate" method="post" class="login-form">
			<label for="email"><strong>Email :</strong></label> <input
				type="email" id="email" name="email" /><br> <label
				for="password"><strong>Password :</strong></label> <input
				type="password" id="password" name="password" /><br>
			<br> <input type="submit" value="LOGIN" class="login-button" /><br>
			<a href="signup">SignUp</a><br> <a href="forgetPassword">Forget
				Password</a>
		</form>
	</div>
</body>
</html>
