<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" %>
	<!DOCTYPE html>
	<html>

	<head>
		<meta charset="ISO-8859-1">
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
		<title>SignUp Page</title>
		<script src="https://cdn.tailwindcss.com"></script>
	</head>

	<body class="bg-white flex flex-col w-full h-screen">
		<div>
			<nav class="bg-gray-900 text-white p-3 flex justify-between md:pl-20 md:pr-20 items-center">
				<h1 class="text-2xl font-medium md:text-4xl cursor-pointer"><a>eCommerce</a></h1>
				<h3
					class="relative text-2xl md:text-3xl font-medium cursor-pointer hover:text-blue-400 hover:text-2xl md:hover:text-3xl hover:font-medium rounded-md p-1.5 md:block">
					SignUp</h3>
			</nav>
		</div>
		<div class="w-full h-full flex p-6 sm:p-10 direction-row items-center justify-center">
			<div
				class="bg-gray-600 rounded-xl p-5 flex flex-col shadow-2xl items-center w-full sm:w-3/4 md:w-1/2 lg:w-96">
				<h1 class="text-3xl text-blue-400 font-medium">SignUp</h1><br>
				<form action="signup" method="post" class="flex flex-col w-11/12 sm:w-full gap-3 mt-3">
					<div class="flex flex-col w-full sm:w-full">
						<label class="text-xl font-medium text-blue-400">First Name : ${error}</label>
						<input type="text" name="firstname" value="${data.firstname}"
							class="bg-transparent border-2 border-white rounded-lg p-2 h-10 text-white" />
					</div>
					<div class="flex flex-col w-full sm:w-full">
						<label class="text-xl font-medium text-blue-400">Gender : ${error}</label>
						<select name="gender"
							class="bg-transparent border-2 border-white rounded-lg p-2 h-10 text-white">
							<option class="text-black" value="-1">---------Select Gender----------</option>
							<option class="text-black" value="Male" ${data.gender.equals("Male")?"selected":""}>Male
							</option>
							<option class="text-black" value="Female" ${data.gender.equals("Female")?"selected":""}>
								Female</option>
							<option class="text-black" value="Others" ${data.gender.equals("Others")?"selected":""}>
								Others</option>
						</select>
					</div>
					<div class="flex flex-col w-full sm:w-full mt-2">
						<label class="text-xl font-medium text-blue-400">Email : ${error}</label>
						<input type="email" name="email" value="${data.email}"
							class="bg-transparent border-2 border-white rounded-lg p-2 h-10 text-white" />
					</div>
					<div class="flex flex-col w-full sm:w-full mt-2">
						<label class="text-xl font-medium text-blue-400">Password : ${error}</label>
						<input type="password" name="password" value="${data.password}"
							class="bg-transparent border-2 border-white rounded-lg p-2 h-10 text-white" />
					</div>
					<div class="flex flex-col w-full sm:w-full mt-6 mb-3 text-center gap-3">
						<input type="hidden" name="role" value="customer" />
						<input type="submit" name="submit" value="SIGN UP"
							class="bg-transparent cursor-pointer text-2xl font-semibold border-2 border-white rounded-full h-10 text-blue-400 hover:bg-blue-400 hover:border-blue-400 hover:text-white" />
						<p class="text-white text-lg sm:text-md">Already have an account? <a href="login"
								class="text-blue-400 text-2xl font-medium">Login</a></p>
					</div>
				</form>
			</div>
		</div>
	</body>

	</html>