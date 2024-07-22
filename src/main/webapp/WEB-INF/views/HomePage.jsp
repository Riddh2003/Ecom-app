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
            <script>

            </script>
            <div>
                <nav class="fixed w-full bg-gray-100 text-indigo-500 shadow-xl p-3 flex justify-between items-center">
                    <div class="relative flex items-start justify-evenly w-1/3 sm:w-1/2 sm:text-xs md:ml-6">
                        <h1 class="text-2xl font-medium md:text-4xl cursor-pointer"><a>eCommerce</a></h1>
                        <h3
                            class="relative text-lg font-medium cursor-pointer hover:bg-gray-200 border-b-2 border-indigo-500 rounded-md p-1.5 hidden md:block">
                            <a href="customerhomepage" >Home</a>
                        </h3>
                        <h3
                            class="relative text-lg font-medium cursor-pointer hover:bg-gray-200 rounded-md p-1.5 hidden md:block">
                            <a href="homelistproduct">Product List</a>
                        </h3>
                        <h3
                            class="relative text-lg font-medium cursor-pointer hover:bg-gray-200 rounded-md p-1.5 hidden md:block">
                            <a href="mycart">My Cart</a>
                        </h3>
                    </div>
                    <div class="sm:flex sm:items-center sm:text-xs">
                        <button
                            class="p-2 sm:mr-10 rounded-md text-white bg-indigo-600 text-lg font-medium hover:bg-indigo-700"><a
                                href="logout">Logout</a></button>
                    </div>
                </nav>
                <div class="w-full p-10 flex flex-col items-center justify-center" id="content">
                    <div class="mt-12 flex flex-row items-center flex-wrap-reverse justify-around w-full">
                        <div class="flex flex-col w-full sm:w-1/2 text-center sm:text-left sm:items-start">
                            <h1 class="mt-1 text-2xl md:text-4xl font-medium text-center">Welcome To
                                <span class="text-3xl md:text-4xl text-indigo-500">eCommerce Application!</span>
                            </h1>
                            <p class="mt-3 text-lg hidden md:block">We're delighted to have you here. At eCommerce, we
                                strive to bring you the best deals and
                                highest quality products all in one place. Discover an amazing range of items at
                                unbeatable prices, and enjoy a seamless shopping experience. <span
                                    class="text-2xl text-indigo-500 font-medium">Happy shopping!&#128522</span></p>
                        </div>
                        <img class="w-11/12 md:h-88 md:w-1/3" src="https://pirscapital.com/wp-content/themes/pirscapital-v1/assets/images/gif-1-Revised.gif"
                            alt="EcomApp Image">
                    </div>
                    <div class="w-full mt-6 flex flex-row flex-wrap gap-10 items-center justify-evenly">
                        <div class="w-full md:w-1/3 shadow-lg rounded-lg">
                            <a href="homelistproduct"
                                class="bg-white text-indigo-500 rounded-lg p-4 flex flex-col items-center cursor-pointer hover:text-black hover:bg-indigo-200">
                                <img class="w-full rounded-lg"
                                    src="https://m.economictimes.com/thumb/msid-77386882,width-1600,height-900,resizemode-4,imgsize-429397/flagship-devices-of-brands-like-apple-samsung-oneplus-xiaomi-huawei-oppo-and-vivo-are-available-on-discounts-.jpg" />
                                <h1 class="font-bold text-2xl mt-1">PRODUCTS LIST</h1>
                            </a>
                        </div>
                    </div>
                </div>
            </div>
        </body>

        </html>