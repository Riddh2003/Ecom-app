<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
    <!DOCTYPE html>
    <html lang="en">

    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>View Product</title>
        <!-- Link Tailwind CSS -->
        <link href="https://cdn.jsdelivr.net/npm/tailwindcss@2.2.19/dist/tailwind.min.css" rel="stylesheet">
    </head>

    <body class="bg-white font-sans">
        <!-- Navbar -->
        <nav class="bg-gray-100 text-indigo-500 shadow-xl p-3">
            <div class="container mx-auto flex justify-between items-center flex-wrap">
                <div class="w-full md:w-6/12 flex justify-evenly items-center">
                    <a href="#" class="text-4xl font-medium">eCommerce</a>
                    <a href="customerhomepage" class="hover:bg-gray-200 font-medium rounded p-2 block text-lg ">Home</a>
                    <a href="homelistproduct" class="hover:bg-gray-200 font-medium p-2 rounded block text-lg">Products List</a>
                    <a href="mycart" class="hover:bg-gray-200 font-medium p-2 rounded block text-lg">My Cart</a>
                </div>
            </div>
        </nav>

        <!-- Product Details Section -->
        <div class="container mx-auto mt-8 flex justify-center">
            <div
                class="w-10/12 bg-white p-6 mx-4 md:mx-10 rounded-lg shadow-xl flex flex-col md:flex-row items-center gap-10">
                <div class="w-full md:w-1/2">
                    <img src="${product.productImagePath}" alt="${product.productName}"
                        class="w-full h-96 mb-4 rounded-lg shadow-lg">
                </div>
                <div class="w-full md:w-1/2 flex flex-col gap-4">
                    <p class="text-lg"><span class="font-bold">Product Name:</span> ${product.productName}</p>
                    <p class="text-lg"><span class="font-bold">Product Category:</span> ${product.category}</p>
                    <p class="text-lg"><span class="font-bold">Product Price:</span> $${product.price/80}</p>
                    <p class="text-lg"><span class="font-bold">Product Qty:</span> ${product.qty}</p>
                    <div class="flex flex-col gap-2">
                        <label for="select" class="text-lg font-bold">Color:</label>
                        <select name="color" id="color" class="w-6/12 border-2 rounded-lg p-2 border-gray-400">
                            <option value="-1">Select Color</option>
                            <option value="black">Black</option>
                            <option value="red">Red</option>
                            <option value="green">Green</option>
                            <option value="blue">Blue</option>
                            <option value="yellow">Yellow</option>
                        </select>
                    </div>
                    <a href="addtocart?productId=${product.productId}"
                        class="w-1/2 bg-indigo-600 hover:bg-indigo-700 text-white text-lg text-center font-medium py-2 px-4 rounded focus:outline-none focus:shadow-outline transition duration-300"><button>Add
                            to Cart</button></a>
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