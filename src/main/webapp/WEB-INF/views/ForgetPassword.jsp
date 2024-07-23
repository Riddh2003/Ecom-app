<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="ISO-8859-1">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Forget Password</title>
    <script src="https://cdn.tailwindcss.com"></script>
</head>
<body class="bg-white text-white min-h-screen">
    <!-- Navbar -->
    <nav class="bg-gray-100 p-3 shadow-lg">
        <div class="container mx-auto flex justify-around items-center">
            <a href="#" class="text-indigo-500 text-3xl md:text-4xl font-medium">eCommerce</a>
        </div>
    </nav>
    <!-- Forget Password Form -->
    <div class="flex justify-center items-center h-full mx-auto mt-10 px-4">
        <form action="sendotp" method="post" class="p-6 rounded-lg shadow-lg w-full max-w-md">
            <h2 class="text-xl md:text-2xl font-medium mb-4 text-center text-indigo-500">Forget Password</h2>
            <div class="mb-4">
                <label for="email" class="block text-md md:text-lg text-black">Email:</label>
                <input type="email" id="email" placeholder="Enter Email" name="email" class="w-full px-3 py-2 bg-transparent text-black border border-gray-300 rounded-md focus:outline-none focus:border-indigo-500" required>
                <span class="text-red-500">${error}</span>
            </div>
            <button type="submit" name="search" class="w-full bg-indigo-600 text-white text-md md:font-medium py-2 rounded-md hover:bg-indigo-700 transition duration-300">Search</button>
            <a href="login" class="block text-lg text-center mt-2 text-indigo-500 hover:text-indigo-600">Back to Login</a>
        </form>
    </div>
</body>
</html>