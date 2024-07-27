<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" %>
	<!DOCTYPE html>
	<html>

	<head>
		<meta charset="ISO-8859-1">
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
		<title>SignUp Page</title>
		<script src="https://cdn.tailwindcss.com"></script>
	</head>
	<style>
		#typewriter {
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
				width: 37%
			}
		}

		/* The typewriter cursor effect */
		@keyframes blink-caret {

			from,
			to {
				border-color: transparent;
			}

			50% {
				border-color: rgb(135, 141, 255);
			}
		}
	</style>

	<body class="bg-white flex flex-col w-full h-screen">
		<div>
			<nav class="bg-gray-100 text-indigo-500 shadow-xl p-3 flex justify-between md:pl-20 md:pr-20 items-center">
				<h1 class="text-2xl font-medium md:text-4xl cursor-pointer"><a>eCommerce</a></h1>
				<h3
					class="inherit text-xl md:text-2xl font-medium cursor-pointer hover:text-indigo-600 hover:text-2xl hover:font-medium md:block">
					SignUp</h3>
			</nav>
		</div>
		<div class="w-full h-full flex p-6 sm:p-10 direction-row items-center justify-center">
			<div class="rounded-lg p-5 flex flex-col shadow-xl items-center w-full sm:w-3/4 md:w-1/2 lg:w-96">
				<h1 class="text-3xl text-indigo-500 font-medium" id="typewriter">SignUp</h1><br>
				<form action="signup" method="post" class="flex flex-col w-11/12 sm:w-full gap-3 mt-3">
					<div class="flex flex-col w-full sm:w-full">
						<label class="text-md font-medium text-black">First Name : ${error}</label>
						<input type="text" name="firstname" placeholder="Enter First Name" value="${data.firstname}"
							class="bg-transparent border border-gray-300 focus:border-indigo-500 focus:outline-none rounded-lg p-2 h-10 text-black" />
					</div>
					<div class="flex flex-col w-full sm:w-full">
						<label class="text-md font-medium text-black">Gender : ${error}</label>
						<select name="gender"
							class="bg-transparent border border-gray-300 focus:border-indigo-500 focus:outline-none rounded-lg p-2 h-10 text-black">
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
						<label class="text-md font-medium text-black">Email : ${error}</label>
						<input type="email" name="email" placeholder="Enter Email" value="${data.email}"
							class="bg-transparent border border-gray-300 focus:border-indigo-500 focus:outline-none rounded-lg p-2 h-10 text-black" />
					</div>
					<div class="flex flex-col w-full sm:w-full mt-2">
						<label class="text-md font-medium text-black">Password : ${error}</label>
						<input type="password" name="password" placeholder="Enter Password" value="${data.password}"
							class="bg-transparent border border-gray-300 focus:outline-none focus:border-indigo-500 rounded-lg p-2 h-10 text-black" />
					</div>
					<div class="flex flex-col w-full sm:w-full mt-2 mb-3 text-center gap-3">
						<input type="hidden" name="role" value="customer" />
						<input type="submit" name="submit" value="SIGN UP"
							class="bg-indigo-600 cursor-pointer text-xl font-medium rounded-lg h-10 text-white hover:bg-indigo-700" />
						<p class="text-black text-md sm:text-md">Already have an account? <a href="login"
								class="text-indigo-500 text-xl">Login</a></p>
					</div>
				</form>
			</div>
		</div>
	</body>

	</html>