<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Home page list of product</title>
<script src="https://cdn.tailwindcss.com"></script>
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.2/css/all.min.css">
</head>

<body class="font-sans text-gray-700 bg-gray-100">
	<nav class="bg-gray-900 text-white p-2 sticky top-0 z-10">
		<div class="container mx-auto flex justify-between items-center">
			<h1 class="text-2xl md:text-4xl font-medium cursor-pointer md:ml-10">Product
				List</h1>
			<div>			
				<a href="customerhomepage"
					class="text-xl md:text-2xl font-medium md:mr-10 hover:bg-gray-700 rounded-md p-2 transition duration-300">Home</a>
				<a href="mycart" class="text-xl md:text-2xl font-medium md:mr-10 hover:bg-gray-700 rounded-md p-2 transition duration-300">My Cart</a>
			</div>
		</div>
	</nav>

	<section class="container mx-auto px-4 py-8">
		<div
			class="grid grid-cols-1 sm:grid-cols-2 lg:grid-cols-3 xl:grid-cols-4 gap-8 m-10">
			<c:forEach items="${products}" var="p">
				<div class="bg-white rounded-lg shadow-md overflow-hidden">
					<div class="relative h-64 cursor-pointer">
						<c:if
							test="${p.productImagePath == null || p.productImagePath.length() == 0}">
							<img src="images/products/noproduct.jpg"
								class="w-full h-full object-cover">
						</c:if>
						<c:if
							test="${!(p.productImagePath == null || p.productImagePath.length() == 0)}">
							<img src="${p.productImagePath}"
								class="w-full h-full object-cover">
						</c:if>
						<ul
							class="absolute bottom-0 left-0 right-0 bg-black bg-opacity-50 flex justify-center space-x-4 py-3 transform translate-y-full transition-transform duration-300 group-hover:translate-y-0">
							<li><a href="addtocart?productId=${p.productId}"
								class="text-black border p-2 border-gray-100 bg-gray-100 rounded-sm hover:text-red-500"><i
									class="fas fa-shopping-cart"></i></a></li>
							<li><a href="#"
								class="text-black border p-2 border-gray-100 bg-gray-100 rounded-sm hover:text-red-500"><i
									class="fas fa-heart"></i></a></li>
							<li><a href="#"
								class="text-black border p-2 border-gray-100 bg-gray-100 rounded-sm hover:text-red-500"><i
									class="fas fa-plus"></i></a></li>
							<li><a href="showproduct?productId=${p.productId}"
								class="text-black border p-2 border-gray-100 bg-gray-100 rounded-sm hover:text-red-500"><i
									class="fas fa-eye"></i></a></li>
						</ul>
					</div>
					<div class="p-4 mt-10">
						<h3 class="text-lg font-semibold mb-2">${p.productName}<span
								class="text-md"> ${p.category}</span>
						</h3>
						<div class="flex justify-between items-center">
							<span class="text-gray-500 line-through">$${((p.price *
								0.05)+p.price)/80}</span> <span class="text-xl font-bold text-gray-900">$${p.price/80}</span>
						</div>
					</div>
				</div>
			</c:forEach>
		</div>
	</section>
</body>

</html>