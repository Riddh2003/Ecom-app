<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" %>
	<!DOCTYPE html>
	<html lang="en">

	<head>
		<meta charset="UTF-8">
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
		<title>New Product</title>
		<link href="https://cdn.jsdelivr.net/npm/tailwindcss@2.2.19/dist/tailwind.min.css" rel="stylesheet">
		<style>
			.sidebar {
				position: fixed;
				top: 64px;
				left: 0;
				right: 0;
				background-color: rgba(98, 98, 98, 0.9);
				padding: 1rem;
				z-index: 50;
			}

			.sidebar-header {
				display: flex;
				flex-direction: column;
				gap: 1rem;
			}

			@media screen and (min-width: 768px) {
				#typewriter {
					overflow: hidden;
					border-right: .15em dashed white;
					white-space: nowrap;
					letter-spacing: .10em;
					animation:
						typing 4s steps(40, end),
						blink-caret .74s step-end infinite;
				}

				/* The typing effect */
				@keyframes typing {
					from {
						width: 0
					}

					to {
						width: 84%
					}
				}

				/* The typewriter cursor effect */
				@keyframes blink-caret {

					from,
					to {
						border-color: transparent;
					}

					50% {
						border-color: white;
					}
				}
			}
		</style>
	</head>

	<body class="bg-white text-gray-800">
		<!-- Navbar -->
		<nav class="bg-gray-100 shadow-xl text-indigo-500 p-3">
			<div class="container mx-auto flex justify-between items-center">
				<div class="hidden w-6/12 md:flex justify-evenly items-center md:mr-10">
					<a href="#" class="text-2xl md:text-4xl font-medium">eCommerce</a>
					<a href="admindashboard" class="rounded p-2 font-medium text-lg hover:bg-gray-200">Home</a>
					<a href="products" class="rounded p-2 font-medium text-lg hover:bg-gray-200">ProductList</a>
				</div>
				<button class="md:hidden text-white" onclick="toggleSidebar()">
					<svg class="w-6 h-6" fill="none" stroke="currentColor" viewBox="0 0 24 24"
						xmlns="http://www.w3.org/2000/svg">
						<path stroke-linecap="round" stroke-linejoin="round" stroke-width="2"
							d="M4 6h16M4 12h16m-7 6h7"></path>
					</svg>
				</button>
			</div>
		</nav>

		<!-- Sidebar for mobile -->
		<div class="sidebar hidden md:hidden"></div>

		<!-- Main Content -->
		<div class="container mx-auto px-4 py-8">
			<div class="max-w-md mx-auto bg-white rounded-lg shadow-lg overflow-hidden">
				<div class="bg-gradient-to-r from-indigo-500 to-indigo-500 flex justify-center p-4">
					<h1 class="text-2xl md:text-3xl font-bold text-center text-white" id="typewriter">ADD NEW PRODUCT</h1>
				</div>
				<form action="saveproduct" method="post" enctype="multipart/form-data" class="p-6">
					<div class="mb-4">
						<label class="block text-gray-700 text-md font-medium mb-2" for="productName">Product
							Name</label>
						<input
							class="shadow appearance-none border rounded w-full py-2 px-3 text-gray-700 leading-tight focus:outline-none focus:shadow-outline"
							id="productName" type="text" name="productName">
					</div>
					<div class="mb-4">
						<label class="block text-gray-700 text-md font-medium mb-2" for="category">Category</label>
						<input
							class="shadow appearance-none border rounded w-full py-2 px-3 text-gray-700 leading-tight focus:outline-none focus:shadow-outline"
							id="category" type="text" name="category">
					</div>
					<div class="mb-4">
						<label class="block text-gray-700 text-md font-medium mb-2" for="price">Price</label>
						<input
							class="shadow appearance-none border rounded w-full py-2 px-3 text-gray-700 leading-tight focus:outline-none focus:shadow-outline"
							id="price" type="number" name="price">
					</div>
					<div class="mb-4">
						<label class="block text-gray-700 text-md font-medium mb-2" for="qty">Quantity</label>
						<input
							class="shadow appearance-none border rounded w-full py-2 px-3 text-gray-700 leading-tight focus:outline-none focus:shadow-outline"
							id="qty" type="number" name="qty">
					</div>
					<div class="mb-6">
						<label class="block text-gray-700 text-sm font-bold mb-2" for="productImage">Product
							Image</label>
						<input
							class="shadow appearance-none border rounded w-full py-2 px-3 text-gray-700 leading-tight focus:outline-none focus:shadow-outline"
							id="productImage" type="file" name="productImage">
					</div>
					<div class="flex items-center justify-center">
						<button
							class="bg-indigo-500 hover:bg-indigo-600 text-white font-bold py-2 px-4 rounded focus:outline-none focus:shadow-outline"
							type="submit">ADD PRODUCT</button>
					</div>
				</form>
			</div>
		</div>

		<script>
			function toggleSidebar() {
				const sidebar = document.querySelector(".sidebar");
				sidebar.classList.toggle("hidden");
				sidebar.innerHTML = `<div class="sidebar-header">
                <a href="admindashboard" class="text-white hover:underline hover:underline-offset-8">Home</a>
                <a href="products" class="text-white hover:underline hover:underline-offset-8">Products</a>
                <a href="#" class="text-white hover:underline hover:underline-offset-8">About</a>
                <a href="#" class="text-white hover:underline hover:underline-offset-8">Contact</a>
            </div>`;
			}
		</script>
	</body>

	</html>