<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" %>
	<!DOCTYPE html>
	<html lang="en">

	<head>
		<meta charset="UTF-8">
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
		<title>Home Page</title>
		<script src="https://cdn.tailwindcss.com"></script>
	</head>

	<body class="bg-gray-900 flex items-center justify-center w-full h-screen">
		<div class="w-full p-4 sm:p-10 flex items-center justify-center">
			<div class="border-2 border-white rounded-3xl p-5 text-white flex flex-col items-center w-full sm:w-3/4 md:w-1/2 lg:w-1/4">
				<strong class="error text-red-500 text-2xl">${error}</strong>
				<h1 class="text-4xl text-pink-500 font-medium">Login</h1><br>
				<form action="authenticate" method="post" class="flex flex-col w-11/12 sm:w-full">
					<div class="flex flex-col w-full sm:w-full">
						<label class="text-xl font-medium text-pink-500">Email:</label>
						<input type="text" name="email"
							class="bg-transparent border-2 border-white rounded-lg p-2 h-10 text-white">
					</div>
					<div class="flex flex-col w-full sm:w-full mt-2">
						<label class="text-xl font-medium text-pink-500">Password:</label>
						<input type="password" name="password"
							class="bg-transparent border-2 border-white rounded-lg p-2 h-10 text-white">
					</div>
					<div class="flex flex-col w-full sm:w-full mt-6 text-center gap-3">
						<input type="submit" value="LOGIN"
							class="text-2xl font-semibold border-2 border-white rounded-full h-10 text-white hover:bg-pink-400 hover:border-pink-400"/>
						<p>Don't have an account? <a href="register" class="text-pink-500 text-xl">Sign Up</a></p>
						<p class="text-pink-500 text-xl"><a href="">Forget Password?</a></p>
					</div>
				</form>
			</div>
		</div>
	</body>

	</html>
	<!-- <body>
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
</html> -->