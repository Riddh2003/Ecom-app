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
    <nav class="bg-gray-900 text-white p-4 sticky top-0 z-10">
        <div class="container mx-auto flex flex-col sm:flex-row justify-between items-center">
            <h1 class="text-2xl md:text-3xl font-bold mb-2 sm:mb-0">Product List</h1>
            <div class="flex space-x-4">
                <a href="customerhomepage" class="text-lg hover:bg-gray-700 rounded-md p-2 transition duration-300">Home</a>
                <a href="homelistproduct" class="text-lg hover:bg-gray-700 rounded-md p-2 transition duration-300">Products List</a>
            </div>
        </div>
    </nav>

    <section class="container mx-auto py-8 px-4">
        <div class="flex flex-col items-center">
            <c:forEach items="${products}" var="p">
                <div class="bg-white flex flex-col md:flex-row rounded-lg shadow-md overflow-hidden w-full h-full sm:w-3/4 md:w-8/12 mb-6">
                    <img src="${p.productImagePath}" alt="${p.productName}" class="w-full md:w-1/2 h-80 object-cover">
                    <div class="p-6 w-full md:w-1/2 flex flex-col justify-evenly">
                        <div class="flex justify-between items-center mb-2">
                            <h2 class="text-2xl font-semibold">${p.productName}</h2>
                            <span class="text-sm font-medium text-gray-500">${p.category}</span>
                        </div>
                        <div class="flex justify-between items-center mb-2">
                            <span class="text-lg font-bold text-gray-900">$${p.price/80}</span>
                            <span class="text-sm text-gray-500 line-through">$${((p.price*0.05)+p.price)/80}</span>
                        </div>
						<div class="flex justify-between items-center">
							<p class="text-gray-600 mb-2">Quantity: ${p.qty}</p>
							<div>
								<a href="removefromcart?productId=${p.productId}" class="text-red-500 hover:text-red-700 mr-2">
									<i class="fas fa-trash"></i>
								</a>
								<a href="viewcartproduct?productId=${p.productId}" class="text-blue-500 hover:text-blue-700">
									<i class="fas fa-eye"></i>
								</a>
							</div>
						</div>
                        <div class="w-full flex justify-between items-center">
                            <button class="w-full bg-yellow-500 hover:bg-yellow-600 text-white font-bold py-2 px-4 rounded focus:outline-none focus:shadow-outline transition duration-300" type="button">
                                Buy
                            </button>
                        </div>
                    </div>
                </div>
            </c:forEach>
        </div>

        <div class="h-48 p-4 flex flex-col justify-around border-2 items-center mt-4 bg-white rounded-lg shadow-md w-full sm:w-3/4 md:w-8/12 mx-auto">
            <h2 class="text-2xl font-bold">Cart Summary</h2>
            <c:set var="total" value="0" />
			<c:set var="totalproduct" value="0"/>
            <c:forEach items="${products}" var="p">
                <c:set var="total" value="${total + (p.price)}" />
                <c:set var="totalproduct" value="${totalproduct + 1}" />
            </c:forEach>
			<div class="w-full md:w-1/2 flex justify-around items-center">
				<p class="text-xl font-semibold">Total: $${total/80}</p>
				<p class="text-xl font-semibold">Total Product: ${totalproduct}</p>
			</div>
			<button class="w-full md:w-1/2 bg-yellow-500 hover:bg-yellow-600 text-white font-bold py-2 px-4 rounded focus:outline-none focus:shadow-outline transition duration-300" type="button">Buy</button>
        </div>
    </section>
</body>

</html>