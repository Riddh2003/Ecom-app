<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" %>
	<!DOCTYPE html>
	<html lang="en">

	<head>
		<meta charset="UTF-8">
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
		<title>Home Page</title>
		<script src="https://cdn.tailwindcss.com"></script>
	</head>

	<body class="bg-white flex flex-col w-full h-screen">
		<div>
			<nav class="bg-gray-900 text-white p-3 flex justify-between md:pl-20 md:pr-20 items-center border-b-2">
				<h1 class="text-2xl font-medium md:text-4xl cursor-pointer"><a>eCommerce</a></h1>
				<h3
					class="relative text-2xl md:text-3xl font-medium cursor-pointer hover:text-blue-400 hover:text-3xl hover:font-medium rounded-md p-1.5 md:block">
					Login</h3>
			</nav>
		</div>
		<div class="w-full h-full p-4 sm:p-10 flex direction-row items-center justify-center ">
			<div
				class="bg-gray-600 rounded-xl p-6 flex flex-col shadow-2xl items-center w-full sm:w-3/4 md:w-1/2 lg:w-1/4">
				<strong class="error text-red-600 text-2xl">${error}</strong>
				<h1 class="text-3xl text-blue-400 font-medium">Login</h1><br>
				<form action="authenticate" method="post" class="flex flex-col w-11/12 sm:w-full">
					<div class="flex flex-col w-full sm:w-full">
						<label class="text-xl font-medium text-blue-400">Email:</label>
						<input type="text" name="email"
							class="bg-transparent border-2 border-white rounded-md p-2 h-10 text-white focus:outline-none focus:border-blue-400">
					</div>
					<div class="flex flex-col w-full sm:w-full mt-2">
						<label class="text-xl font-medium text-blue-400">Password:</label>
						<input type="password" name="password"
							class="bg-transparent border-2 border-white rounded-md p-2 h-10 text-white focus:outline-none focus:border-blue-400">
					</div>
					<div class="flex flex-col w-full sm:w-full mt-6 text-center gap-3">
						<input type="submit" value="LOGIN"
							class="bg-transparent cursor-pointer text-2xl font-semibold border-2 border-white rounded-md h-10 text-blue-400 hover:bg-blue-400 hover:border-blue-400 hover:text-white" />
						<p class="text-white">Don't have an account? <a href="signup"
								class="text-blue-400 font-medium text-xl">Sign Up</a></p>
						<p class="text-blue-400 text-xl"><a href="forgetPassword">Forget Password?</a></p>
					</div>
				</form>
			</div>
		</div>
	</body>

	</html>