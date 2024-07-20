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
    <nav class="bg-gray-900 p-4">
        <div class="container mx-auto flex justify-around items-center">
            <a href="#" class="text-white text-3xl font-bold">eCommerce</a>
        </div>
    </nav>

    <!-- Mobile menu (hidden by default) -->
    <div class="md:hidden bg-gray-800 p-4 hidden">
        <a href="#" class="block text-white py-2">Home</a>
        <a href="#" class="block text-white py-2">About</a>
        <a href="#" class="block text-white py-2">Services</a>
        <a href="#" class="block text-white py-2">Contact</a>
    </div>

    <!-- Forget Password Form -->
    <div class="flex justify-center items-center min-h-screen px-4">
        <form action="sendotp" method="post" class="bg-gray-500 p-8 rounded-lg shadow-lg w-full max-w-md">
            <h2 class="text-2xl font-bold mb-6 text-center text-blue-400">Forget Password</h2>
            <div class="mb-4">
                <label for="email" class="block mb-2 text-xl text-blue-400 font-medium">Email:</label>
                <input type="email" id="email" name="email" class="w-full px-3 py-2 bg-transparent text-white border-2 border-white rounded focus:outline-none focus:border-blue-400" required>
                <span class="text-red-500">${error}</span>
            </div>
            <button type="submit" name="search" class="w-full bg-gradient-to-r from-blue-400 to-blue-500 text-white py-2 rounded hover:from-blue-300 hover:to-blue-400 transition duration-300">Search</button>
            <a href="login" class="block text-xl font-medium text-center mt-4 text-blue-400 hover:text-blue-300">Back to Login</a>
        </form>
    </div>

    <script>
        // Toggle mobile menu
        document.querySelector('button').addEventListener('click', function() {
            document.querySelector('.md\\:hidden.bg-gray-800').classList.toggle('hidden');
        });
    </script>
</body>
</html>