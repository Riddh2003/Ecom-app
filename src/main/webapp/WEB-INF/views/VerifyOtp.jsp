<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="ISO-8859-1">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Verify OTP</title>
    <script src="https://cdn.tailwindcss.com"></script>
</head>
<body class="bg-white text-white min-h-screen">
    <!-- Navbar -->
    <nav class="bg-gray-900 p-4">
        <div class="container mx-auto flex justify-around items-center">
            <a href="#" class="text-white text-3xl font-bold">eCommerce</a>
        </div>
    </nav>

    <!-- Verify OTP Form -->
    <div class="flex justify-center items-center min-h-screen px-4">
        <form action="updatepassword" method="post" class="bg-gray-500 p-8 rounded-xl shadow-lg w-full max-w-md">
            <h1 class="text-2xl font-bold mb-6 text-center text-blue-500">Verify OTP</h1>
            
            <div class="mb-4">
                <label for="email" class="block mb-2 text-blue-400 font-medium ">Email</label>
                <input type="email" id="email" name="email" required class="w-full px-3 py-2 bg-transparent text-white border-2 border-white rounded focus:outline-none focus:border-blue-400">
            </div>
            
            <div class="mb-4">
                <label for="password" class="block mb-2 text-blue-400 font-medium">New Password</label>
                <input type="password" id="password" name="password" required class="w-full px-3 py-2 bg-transparent text-white border-2 border-white rounded focus:outline-none focus:border-blue-400">
            </div>
            
            <div class="mb-6">
                <label for="otp" class="block mb-2 text-blue-400 font-medium">OTP</label>
                <input type="text" id="otp" name="otp" required class="w-full px-3 py-2 bg-transparent text-white border-2 border-white rounded focus:outline-none focus:border-blue-400">
            </div>
            
            <button type="submit" name="submit" class="w-full bg-gradient-to-r from-blue-500 to-blue-600 text-white text-lg font-semibold py-2 rounded hover:from-blue-400 hover:to-blue-500 transition duration-300">Submit</button>
            
            <h2 class="mt-4 text-red-500 text-center">${error}</h2>
        </form>
    </div>
</body>
</html>