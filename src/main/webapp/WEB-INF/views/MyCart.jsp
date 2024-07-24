<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" %>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
		<!DOCTYPE html>
		<html lang="en">

		<head>
			<meta charset="ISO-8859-1">
			<meta name="viewport" content="width=device-width, initial-scale=1.0">
			<title>MyCart</title>
			<script src="https://cdn.tailwindcss.com"></script>
			<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.2/css/all.min.css">
		</head>

		<body class="bg-gray-100">
			<nav class="bg-gray-100 text-indigo-500 shadow-xl p-4 sticky top-0 z-10">
				<div class="container mx-auto flex flex-col sm:flex-row justify-between items-center">
					<div class="relative flex items-start justify-evenly w-1/3 sm:w-1/2 sm:text-xs md:ml-6">
						<h1 class="text-2xl font-medium md:text-4xl cursor-pointer"><a>eCommerce</a></h1>
						<h3
							class="relative text-lg font-medium cursor-pointer hover:bg-gray-200 rounded-md p-1.5 hidden md:block">
							<a href="customerhomepage">Home</a>
						</h3>
						<h3
							class="relative text-lg font-medium cursor-pointer hover:bg-gray-200 rounded-md p-1.5 hidden md:block">
							<a href="homelistproduct">Product List</a>
						</h3>
						<h3
							class="relative text-lg font-medium cursor-pointer hover:bg-gray-200 border-b-2 border-indigo-500 rounded-md p-1.5 hidden md:block">
							<a href="mycart">My Cart</a>
						</h3>
					</div>
				</div>
			</nav>

			<section class="container mx-auto py-8 px-4">
				<div class="flex flex-col items-center">
					<c:forEach items="${products}" var="p">
						<div
							class="bg-white flex flex-col justify-between md:flex-row rounded-lg shadow-md overflow-hidden w-full h-full sm:w-3/4 md:w-8/12 mb-6">
							<img src="${p.productImagePath}" alt="${p.productName}"
								class="w-full md:w-1/2 h-80 object-cover">
							<div class="p-4 w-full md:w-1/2 flex flex-col justify-evenly">
								<div class="flex justify-center items-center">
									<h2 class="text-2xl font-medium mr-2">${p.productName}</h2>
									<span class="text-2xl font-medium text-gray-500">${p.category}</span>
								</div>
								<div class="flex justify-evenly items-center">
									<span class="text-lg font-medium text-gray-900">$${(p.price)/80}</span>
									<span
										class="text-sm text-gray-500 line-through">$${((p.price*0.05)+p.price)/80}</span>
								</div>
								<div class="flex justify-evenly items-center">
									<p class="text-gray-600 mb-2">Quantity: ${p.qty}</p>
									<div>
										<a href="removefromcart?productId=${p.productId}"
											class="text-red-500 rounded hover:text-red-700 p-2 hover:bg-indigo-100"> <i
												class="fas fa-trash"></i>
										</a> <a href="viewcartproduct?productId=${p.productId}"
											class="text-blue-500 rounded hover:text-blue-700 p-2 hover:bg-indigo-100">
											<i class="fas fa-eye"></i>
										</a>
									</div>
								</div>
								<div class="w-full flex justify-evenly items-center">
									<a href="carttocart?productId=${p.productId}"
										class="w-1/3 text-center text-black p-2 shadow-md bg-indigo-100 rounded-sm hover:text-indigo-500"><i
											class="fas fa-plus"></i></a>
									<a href="minustocart?productId=${p.productId}"
										class="w-1/3 text-center text-black p-2 shadow-md bg-indigo-100 rounded-sm hover:text-indigo-500"><i
											class="fas fa-minus"></i></a>
								</div>
							</div>
						</div>
					</c:forEach>
				</div>

				<form action="buy" method="post"
					class="h-48 p-4 flex flex-col justify-around border-2 items-center mt-4 bg-white rounded-lg shadow-md w-full sm:w-3/4 md:w-8/12 mx-auto">
					<h2 class="text-2xl font-bold">Cart Summary</h2>
					<c:set var="total" value="0" />
					<c:set var="totalproduct" value="0" />
					<c:forEach items="${products}" var="p">
						<c:set var="total" value="${total + (p.price * p.qty)}" />
						<c:set var="totalproduct" value="${totalproduct + p.qty}" />
					</c:forEach>
					<div class="w-full md:w-1/2 flex justify-around items-center">
						<p class="text-xl font-semibold">Total: $${total/80}</p>
						<p class="text-xl font-semibold">Total Product: ${totalproduct}</p>
					</div>
					<input type="hidden" name="total" value="${total/80}" />
					<input type="submit"
						class="w-full cursor-pointer text-center md:w-1/2 bg-indigo-600 hover:bg-indigo-700 text-white font-bold py-2 px-4 rounded focus:outline-none focus:shadow-outline transition duration-300"
						value="Proceed to Buy" />
				</form>
			</section>
		</body>

		</html>