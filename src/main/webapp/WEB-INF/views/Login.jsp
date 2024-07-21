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
			<nav class="bg-gray-100 text-indigo-500 shadow-xl p-4 flex justify-between md:pl-20 md:pr-20 items-center">
				<h1 class="text-2xl font-medium md:text-4xl cursor-pointer"><a>eCommerce</a></h1>
				<h3
					class="relative text-2xl font-medium cursor-pointer hover:text-indigo-500 hover:text-indigo-600 md:block">
					Login</h3>
			</nav>
		</div>
		<div class="w-full h-full p-4 sm:p-10 flex direction-row items-center justify-center ">
			<div
				class="bg-gray-100 rounded-lg p-6 flex flex-col shadow-xl items-center w-full sm:w-3/4 md:w-1/2 lg:w-1/4">
				<p class="text-red-600 text-xl">${error}</p>
				<h1 class="text-3xl text-indigo-500 font-medium">Login</h1><br>
				<form action="authenticate" method="post" class="flex flex-col w-11/12 sm:w-full">
					<div class="flex flex-col w-full sm:w-full">
						<label class="text-lg font-medium text-black">Email:</label>
						<input type="text" name="email"
							class="bg-transparent border border-black rounded-md p-2 h-10 text-black focus:outline-none focus:border-indigo-500">
					</div>
					<div class="flex flex-col w-full sm:w-full mt-2">
						<label class="text-lg font-medium text-black">Password:</label>
						<input type="password" name="password"
							class="bg-transparent border border-black rounded-md p-2 h-10 text-black focus:outline-none focus:border-indigo-500">
					</div>
					<div class="flex flex-col w-full sm:w-full mt-6 text-center gap-3">
						<input type="submit" value="LOGIN"
							class="bg-indigo-600 cursor-pointer text-xl font-semibold rounded-md h-10 text-white hover:bg-indigo-700" />
						<p class="text-black">Don't have an account? <a href="signup"
								class="text-indigo-500 font-normal text-lg">Sign Up</a></p>
						<p class="text-indigo-500 text-lg "><a href="forgetPassword">Forget Password?</a></p>
					</div>
				</form>
			</div>
		</div>
	</body>

	</html>