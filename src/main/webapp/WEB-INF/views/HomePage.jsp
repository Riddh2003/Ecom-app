<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" %>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
        <!DOCTYPE html>
        <html lang="en">

        <head>
            <meta charset="UTF-8">
            <meta name="viewport" content="width=device-width, initial-scale=1.0">
            <title>Home Page</title>
            <script src="https://cdn.tailwindcss.com"></script>
        </head>

        <body class="bg-white">
            <div>
                <nav class="fixed w-full bg-gray-900 text-white p-3 flex justify-between items-center border-b-2">
                    <div class="relative flex items-start justify-around w-1/3 sm:w-1/4 sm:text-xs">
                        <h1 class="text-2xl font-medium md:text-4xl cursor-pointer"><a>eCommerce</a></h1>
                        <h3
                            class="relative text-2xl font-medium cursor-pointer hover:bg-gray-500 rounded-md p-1.5 hidden md:block">
                            Home</h3>
                    </div>
                    <div class="sm:flex sm:items-center sm:text-xs">
                        <button
                            class="border-2 border-white p-1.5 sm:mr-10 rounded-md text-xl font-medium hover:bg-blue-500 hover:border-blue-500"><a
                                href="logout">Logout</a></button>
                    </div>
                </nav>
                <div class="w-full p-10 flex flex-col items-center justify-center">
                    <div class="mt-12 flex flex-row items-center flex-wrap-reverse justify-around w-full">
                        <div class="flex flex-col w-full sm:w-1/2 text-center sm:text-left sm:items-start">
                            <h1 class="mt-1 text-2xl md:text-4xl font-medium text-center">Welcome To 
                                <span class="text-3xl md:text-4xl text-blue-500">eCommerce Application!</span></h1>
                            <p class="mt-3 text-lg hidden md:block">We're delighted to have you here. At eCommerce, we strive to bring you the best deals and
                                highest quality products all in one place. Discover an amazing range of items at
                                unbeatable prices, and enjoy a seamless shopping experience. <span class="text-2xl text-blue-500 font-medium">Happy shopping!&#128522</span></p>
                        </div>
                        <img class="w-11/12 md:w-1/4" src="https://dxbapps.com/blogimages/ecommerce.gif"
                            alt="EcomApp Image">
                    </div>
                    <div class="w-full mt-6 flex flex-row flex-wrap gap-10 items-center justify-center">
                        <div>
                            <a href="homelistproduct"
                                class="border-2 border-black text-blue-500 rounded-xl p-2 flex flex-col items-center cursor-pointer hover:text-black hover:bg-blue-300">
                                <img class="w-60"
                                    src="https://cdn0.iconfinder.com/data/icons/social-messaging-ui-color-shapes-3/3/26-512.png" />
                                <h1 class="font-bold text-2xl mt-1">PRODUCT LIST</h1>
                            </a>
                        </div>
                        <div>
                            <a href="homelistproduct"
                                class="border-2 border-black text-blue-500 rounded-xl p-2 flex flex-col items-center cursor-pointer hover:text-black hover:bg-blue-300">
                                <img class="w-60"
                                    src="https://cdn0.iconfinder.com/data/icons/social-messaging-ui-color-shapes-3/3/26-512.png" />
                                <h1 class="font-bold text-2xl mt-1">PRODUCT LIST</h1>
                            </a>
                        </div>
                        <div>
                            <a href="homelistproduct"
                                class="border-2 border-black text-blue-500 rounded-xl p-2 flex flex-col items-center cursor-pointer hover:text-black hover:bg-blue-300">
                                <img class="w-60"
                                    src="https://cdn0.iconfinder.com/data/icons/social-messaging-ui-color-shapes-3/3/26-512.png" />
                                <h1 class="font-bold text-2xl mt-1">PRODUCT LIST</h1>
                            </a>
                        </div>
                        <div>
                            <a href="homelistproduct"
                                class="border-2 border-black text-blue-500 rounded-xl p-2 flex flex-col items-center cursor-pointer hover:text-black hover:bg-blue-300">
                                <img class="w-60"
                                    src="https://cdn0.iconfinder.com/data/icons/social-messaging-ui-color-shapes-3/3/26-512.png" />
                                <h1 class="font-bold text-2xl mt-1">PRODUCT LIST</h1>
                            </a>
                        </div>
                    </div>
                </div>
            </div>
        </body>

        </html>