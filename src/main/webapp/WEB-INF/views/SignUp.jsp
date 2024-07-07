<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>SignUp Page</title>
<style type="text/css">
* {
	margin: 0;
	padding: 0;
	box-sizing: border-box;
}

body {
	background-color: Black;
	font-family: sans-serif;
}

header nav {
	position: relative;
	width: 100%;
	height: 10vh;
	border-bottom: 3px solid;
	border-image: linear-gradient(45deg, #FF512F, #DD2476) 1;
	display: flex;
	padding: 0 10%;
	justify-content: space-between;
	align-items: center;
}

nav p {
	cursor: pointer;
	font-size: 30px;
	font-weight: 600;
}

nav h1 {
	font-size: 50px;
	cursor: pointer;
}

nav .font {
	background: linear-gradient(45deg, #FF512F, #DD2476, #FF512F, #DD2476);
	/* Define your gradient */
	-webkit-background-clip: text;
	-webkit-text-fill-color: transparent;
}

#signup {
	border: 3px solid white;
	border-radius: 20px;
	width: 370px;
	height: 400px;
	display: flex;
	justify-content: center;
	align-items: center;
	margin: 10% 38%;
}

form strong {
	background: linear-gradient(45deg, #FF512F, #DD2476, #FF512F, #DD2476);
	/* Define your gradient */
	-webkit-background-clip: text;
	-webkit-text-fill-color: transparent;
	font-size: 20px;
	font-weight: 600;
}

form input, select {
	width: 40vb;
	height: 4vh;
	border: 2px solid white;
	border-radius: 5px;
	background-color: transparent;
	color: white;
	padding: 5px;
}

select option {
	width: 100%;
	background-color: transparent;
	color: black;
}

form input[type="submit"] {
	width: 20vb;
	font-size: 15px;
	font-weight: 600;
	border: 0;
	background: linear-gradient(45deg, #FF512F, #DD2476, #FF512F, #DD2476);
	cursor: pointer;
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
	<header>
		<nav>
			<h1 class="font">eComApp</h1>
			<p class="font">SignUp</p>
		</nav>
	</header>
	<div id="signup">
		<form action="signup" method="post">
			<strong><label>FirstName : ${error}</label></strong><br> <input
				type="text" name="firstname" value="${data.firstname}" /> <br>
			<br> <strong><label>Gender : ${error}</label></strong><br>
			<select name="gender">
				<option value="-1">---------Select Gender----------</option>
				<option value="Male" ${data.gender.equals("Male")?"selected":""}>Male</option>
				<option value="Female" ${data.gender.equals("Female")?"selected":""}>Female</option>
				<option value="Others" ${data.gender.equals("Others")?"selected":""}>Others</option>
			</select> <br>
			<br> <strong><label>Email : ${error}</label></strong><br> 
			<input type="email" name="email" value="${data.email}" /> <br><br> 
			<strong><label>Password : ${error}</label></strong><br>
			<input type="password" name="password" value="${data.password}" /> <br><br> 
			<input type="hidden" name="role" value="customer" /> 
			<input type="submit" name="submit" value="SIGN UP" /> 
			<a href="login">Login</a>
		</form>
	</div>
</body>
</html>