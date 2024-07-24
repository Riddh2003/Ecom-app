<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" %>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
        <!DOCTYPE html>
        <html lang="en">

        <head>
            <meta charset="ISO-8859-1">
            <meta name="viewport" content="width=device-width, initial-scale=1.0">
            <title>Payment Details</title>
            <link href="https://cdn.jsdelivr.net/npm/tailwindcss@2.2.19/dist/tailwind.min.css" rel="stylesheet">
        </head>

        <body class="bg-white">

            <!-- Navbar -->
            <nav class="bg-gray-100 text-indigo-500 shadow-xl">
                <div class="max-w-7xl mx-auto px-2 ">
                    <div class="w-1/3 flex items-center justify-between h-16">
                        <div class="w-full flex flex-row justify-around items-center">
                            <a href="customerhomepage" class="text-2xl md:text-4xl font-medium">eCommerce</a>
                            <a href="mycart"
                                class="hover:bg-gray-200 px-3 py-2 rounded-md text-sm md:text-lg font-medium">MyCart</a>
                        </div>
                    </div>
                </div>
            </nav>

            <!-- Payment Form -->
            <div class="max-w-md mx-5 md:mx-auto shadow-xl rounded-md overflow-hidden mt-10 p-6">
                <form action="pay" method="post">
                    <h1 class="text-2xl md:text-3xl font-medium mb-4 text-center text-indigo-500">Payment Form</h1>
                    <% String totalprice=request.getParameter("total");%>
                        <input type="hidden" name="total" value="<%= totalprice %>" />
                        <div class="mb-4">
                            <label class="block text-gray-700">Card Number:</label>
                            <input type="text" name="cardnumber" placeholder="Card Number"
                                class="mt-1 block w-full px-3 py-2 border border-gray-300 rounded-md shadow-sm focus:outline-none focus:ring-indigo-500 focus:border-indigo-500 sm:text-sm" />
                        </div>
                        <div class="mb-4">
                            <label class="block text-gray-700">Expiry Date:</label>
                            <input type="text" name="expirydate" placeholder="MM-YY"
                                class="mt-1 block w-full px-3 py-2 border border-gray-300 rounded-md shadow-sm focus:outline-none focus:ring-indigo-500 focus:border-indigo-500 sm:text-sm" />
                        </div>
                        <div>
                            <input type="submit" value="Proceed to Pay"
                                class="w-full cursor-pointer bg-indigo-600 text-white font-medium py-2 px-4 rounded-md hover:bg-indigo-700" />
                        </div>
                </form>
            </div>

        </body>

        </html>