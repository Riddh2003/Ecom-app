<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Home Page</title>
    <script src="https://cdn.tailwindcss.com"></script>
</head>

<body class="bg-gray-900">
    <div>
        <nav class="bg-gray-900 text-white p-3 flex justify-between items-center border-b-2">
            <div class="relative flex items-start justify-around w-1/3 sm:w-1/4 sm:text-xs">
                <h1 class="text-2xl font-medium md:text-4xl cursor-pointer"><a>eCommerce</a></h1>
                <h3
                    class="relative text-2xl font-medium cursor-pointer hover:bg-gray-500 rounded-md p-1.5 hidden md:block">
                    Home</h3>
            </div>
            <div class="sm:flex sm:items-center sm:text-xs">
                <button
                    class="border-2 border-white p-1.5 sm:mr-10 rounded-md text-xl font-medium hover:bg-red-500 hover:border-red-500"><a
                        href="logout">Logout</a></button>
            </div>
        </nav>
        <div class="w-full p-10 flex items-center justify-center text-white">
            <a href="homelistproduct" class="border-2 border-white rounded-xl p-2 flex flex-col items-center cursor-pointer hover:bg-gray-500 border-gray-500">
                <img class="w-60" src="https://cdn0.iconfinder.com/data/icons/social-messaging-ui-color-shapes-3/3/26-512.png" />
                <h1 class="font-bold text-2xl mt-1">PRODUCT LIST</h1>
            </a>
        </div>
    </div>
</body>

</html>