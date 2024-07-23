<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" %>
	<!DOCTYPE html>
	<html lang="en">

	<head>
		<meta charset="UTF-8">
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
		<title>Home Page</title>
		<script src="https://cdn.tailwindcss.com"></script>
	</head>
	<style>
		#typewriter{
			overflow: hidden;
			/* Ensures the content is not revealed until the animation */
			border-right: .15em dashed rgb(135, 141, 255);
			/* The typwriter cursor */
			white-space: nowrap;
			/* Keeps the content on a single line */
			margin: 0 auto;
			/* Gives that scrolling effect as the typing happens */
			letter-spacing: .10em;
			padding-bottom: 3px;
			/* Adjust as needed */
			animation:
				typing 1s steps(40, end),
				blink-caret .75s step-end infinite;
		}

		/* The typing effect */
		@keyframes typing {
			from {
				width: 0
			}

			to {
				width: 28%
			}
		}

		/* The typewriter cursor effect */
		@keyframes blink-caret {

			from,
			to {
				border-color: transparent
			}

			50% {
				border-color: rgb(135, 141, 255);
			}
		}
	</style>

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
			<div class="rounded-lg p-6 flex flex-col shadow-xl items-center w-full sm:w-3/4 md:w-1/2 lg:w-1/4">
				<p class="text-red-600 text-xl">${error}</p>
				<h1 class="text-3xl text-indigo-500 font-medium" id="typewriter">Login</h1><br>
				<form action="authenticate" method="post" class="flex flex-col w-11/12 sm:w-full">
					<div class="flex flex-col w-full sm:w-full">
						<label class="text-lg font-medium text-black">Email:</label>
						<input type="text" name="email" placeholder="Enter Email"
							class="bg-transparent border border-gray-300 rounded-md p-2 h-10 text-black focus:outline-none focus:border-indigo-500">
					</div>
					<div class="flex flex-col w-full sm:w-full mt-4">
						<label class="text-lg font-medium text-black">Password:</label>
						<input type="password" name="password" placeholder="Enter Password"
							class="bg-transparent border border-gray-300 rounded-md p-2 h-10 text-black focus:outline-none focus:border-indigo-500">
					</div>
					<div class="flex flex-col w-full sm:w-full mt-6 text-center gap-3">
						<input type="submit" value="LOGIN"
							class="bg-indigo-600 cursor-pointer text-xl font-semibold rounded-md h-10 text-white hover:bg-indigo-700" />
						<p class="text-black">Don't have an account? <a href="signup"
								class="text-indigo-600 font-normal text-md">Sign Up</a></p>
						<p class="text-indigo-600 text-md "><a href="forgetPassword">Forget Password?</a></p>
					</div>
				</form>
			</div>
		</div>
	</body>

	</html>