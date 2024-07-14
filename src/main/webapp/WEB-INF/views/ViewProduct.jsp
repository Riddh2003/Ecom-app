<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" %>
    <!DOCTYPE html>
    <html lang="en">

    <head>
        <meta charset="ISO-8859-1">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>View Product</title>
        <link href="https://cdn.jsdelivr.net/npm/tailwindcss@2.2.19/dist/tailwind.min.css" rel="stylesheet">
    </head>

    <body class="bg-gray-100 font-sans">
        <!-- Navbar -->
        <nav class="bg-gray-900 text-white p-3 w-full">
            <div class="container mx-auto flex justify-between items-center flex-wrap">
                <a href="#" class="text-3xl font-bold md:ml-10">eCommerce</a>
                <button class="md:hidden text-white" id="navbar-toggle">
                    <svg class="w-6 h-6" fill="none" stroke="currentColor" viewBox="0 0 24 24"
                        xmlns="http://www.w3.org/2000/svg">
                        <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2"
                            d="M4 6h16M4 12h16M4 18h16"></path>
                    </svg>
                </button>
                <ul class="flex-col md:flex md:flex-row md:space-x-4 md:mr-10 hidden md:flex" id="navbar-menu">
                    <li><a href="admindashboard" class="hover:text-gray-300 block text-lg">Home</a></li>
                    <li><a href="products" class="hover:text-gray-300 block text-lg">Products List</a></li>
                    <!-- Add more navbar links as needed -->
                </ul>
            </div>
        </nav>

        <!-- Product Details Section -->
        <div class="container mx-auto mt-8 md:px-4">
            <div class="bg-white p-6 rounded-lg shadow-lg flex flex-col md:flex-row items-center gap-6">
                <div class="w-full md:w-1/2">
                    <img src="${product.productImagePath}" alt="${product.productName}"
                        class="w-full h-80 md:h-96 mb-4 rounded-lg shadow-lg object-cover">
                </div>
                <div class="w-full md:w-1/2 flex flex-col gap-4">
                    <p class="text-lg"><span class="font-bold">Product ID:</span> ${product.productId}</p>
                    <p class="text-lg"><span class="font-bold">Product Name:</span> ${product.productName}</p>
                    <p class="text-lg"><span class="font-bold">Product Price:</span> $${product.price/80}</p>
                    <p class="text-lg"><span class="font-bold">Product Qty:</span> ${product.qty}</p>
                    <div class="flex flex-col gap-2">
                        <label for="color" class="text-lg font-bold">Color:</label>
                        <select name="color" id="color" class="w-1/2 border-2 rounded-lg p-2 border-gray-400">
                            <option value="-1">Select Color</option>
                            <option value="black">Black</option>
                            <option value="red">Red</option>
                            <option value="green">Green</option>
                            <option value="blue">Blue</option>
                            <option value="yellow">Yellow</option>
                        </select>
                    </div>
                </div>
            </div>
        </div>

        <script>
            // Toggle the navbar menu on mobile
            document.getElementById('navbar-toggle').addEventListener('click', function () {
                document.getElementById('navbar-menu').classList.toggle('hidden');
            });
        </script>
    </body>

    </html>