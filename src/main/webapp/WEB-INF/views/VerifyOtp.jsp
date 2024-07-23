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
    <nav class="bg-gray-100 top-0 sticky z-10 p-3 shadow-xl">
        <div class="container mx-auto flex justify-around items-center">
            <a href="#" class="text-indigo-500 text-2xl md:text-4xl font-medium">eCommerce</a>
        </div>
    </nav>

    <div class="flex justify-center items-center min-h-screen px-4">
        <form action="updatepassword" method="post" class="rounded-lg shadow-2xl p-8 w-full max-w-md">
            <h2 class="text-red-500 text-xl text-center">${error}</h2>
            <h1 class="text-2xl mb-2 font-medium text-center text-indigo-500">Verify OTP</h1>
            
            <div class="mb-4">
                <label for="email" class="block text-md text-black font-medium ">Email</label>
                <input type="email" id="email" name="email" placeholder="Enter Email" required class="w-full px-3 py-2 bg-transparent text-black border border-gray-300 rounded focus:outline-none focus:border-indigo-500">
            </div>
            
            <div class="mb-4">
                <label for="password" class="block text-md  text-black font-medium">New Password</label>
                <input type="password" id="password" name="password" placeholder="Enter Password" required class="w-full px-3 py-2 bg-transparent text-black border border-gray-300 rounded focus:outline-none focus:border-indigo-500">
            </div>
            
            <div class="mb-4">
                <label for="otp" class="block text-md text-black font-medium">OTP</label>
                <input type="text" id="otp" name="otp" placeholder="Enter OTP" required class="w-full px-3 py-2 bg-transparent text-black border border-gray-300 rounded focus:outline-none focus:border-indigo-500">
            </div>
            
            <button type="submit" name="submit" class="w-full bg-indigo-600 text-white text-lg font-semibold py-2 rounded hover:bg-indigo-700 transition duration-300">Submit</button>
            <p class="w-full text-gray-500 text-md mt-2 text-center">Already have an account? <a href="login" class="text-indigo-500 text-md font-medium">Login</a></p>
        </form>
    </div>
</body>
</html>