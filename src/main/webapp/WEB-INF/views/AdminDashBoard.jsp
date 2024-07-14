<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" %>
    <!DOCTYPE html>
    <html lang="en">

    <head>
        <meta charset="ISO-8859-1">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>AdminDashBoard</title>
        <script src="https://cdn.tailwindcss.com"></script>
    </head>

    <body class="bg-white">
        <script>
            function toggleSidebar() {
                document.querySelector(".sidebar").classList.toggle("hidden");
            }
        </script>
        <div class="flex flex-col md:flex-row h-screen">
            <div class="sidebar bg-gray-900 w-1/2 h-screen fixed md:w-1/5 md:fixed md:h-screen hidden md:block">
                <div class="sidebar-header flex items-center justify-start p-4 cursor-pointer text-white border-b-2 border-gray-400">
                    <svg xmlns="http://www.w3.org/2000/svg" class="h-8 w-8 mr-2" fill="none" viewBox="0 0 24 24" stroke="currentColor">
                        <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M3 12l2-2m0 0l7-7 7 7M5 10v10a1 1 0 001 1h3m10-11l2 2m-2-2v10a1 1 0 01-1 1h-3m-6 0a1 1 0 001-1v-4a1 1 0 011-1h2a1 1 0 011 1v4a1 1 0 001 1m-6 0h6" />
                    </svg>                
                    <h2 class="text-3xl font-bold">Dashboard</h2>
                </div>
                <div class="flex flex-col items-start pl-6 mt-12 text-white gap-6 font-medium text-2xl">
                    <div class="flex items-center p-2 hover:bg-gray-500 hover:rounded-lg hover:p-2">
                        <svg xmlns="http://www.w3.org/2000/svg" class="h-6 w-6 md:h-6 w-6 mr-2 text-blue-400" fill="none" viewBox="0 0 24 24" stroke="currentColor">
                            <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M3 12l2-2m0 0l7-7 7 7M5 10v10a1 1 0 001 1h3m10-11l2 2m-2-2v10a1 1 0 01-1 1h-3m-6 0a1 1 0 001-1v-4a1 1 0 011-1h2a1 1 0 011 1v4a1 1 0 001 1m-6 0h6" />
                        </svg>                    
                        <a href="admindashboard" class="">Dashboard</a>
                    </div>
                    <div class="flex items-center p-2 hover:bg-gray-500 hover:rounded-lg hover:p-2">
                        <svg xmlns="http://www.w3.org/2000/svg" class="h-6 w-6 mr-2 text-blue-400" fill="none" viewBox="0 0 24 24" stroke="currentColor">
                            <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M12 4v16m8-8H4" />
                        </svg>
                        <a href="product">New Product</a>
                    </div>
                    <div class="flex items-center p-2 hover:bg-gray-500 hover:rounded-lg hover:p-2">
                        <svg xmlns="http://www.w3.org/2000/svg" class="h-6 w-6 mr-2 text-blue-400" fill="none" viewBox="0 0 24 24" stroke="currentColor">
                            <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M3 10h18M3 14h18M3 18h18" />
                        </svg>
                        <a href="products">List Of Products</a>
                    </div>
                    <div class="flex items-center p-2 hover:bg-gray-500 hover:rounded-lg hover:p-2">
                        <svg class="h-6 w-6 mr-2 text-blue-400" fill="none" stroke="currentColor" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg">
                            <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M13 16h-1v-4h-1m1-4h.01M21 12a9 9 0 11-18 0 9 9 0 0118 0z"></path>
                        </svg>
                        <a href="#">About</a>
                    </div>
                    <div class="flex items-center p-2 hover:bg-gray-500 hover:rounded-lg hover:p-2">
                        <svg class="h-6 w-6 mr-2 text-blue-400" fill="none" stroke="currentColor" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg">
                            <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M3 8l7.89 5.26a2 2 0 002.22 0L21 8M5 19h14a2 2 0 002-2V7a2 2 0 00-2-2H5a2 2 0 00-2 2v10a2 2 0 002 2z"></path>
                        </svg>
                        <a href="#">Contact</a>
                    </div>
                    <div class="flex items-center p-2 hover:bg-gray-500 hover:rounded-lg hover:p-2">
                        <svg xmlns="http://www.w3.org/2000/svg" class="h-6 w-6 mr-2 text-blue-400" fill="none" viewBox="0 0 24 24" stroke="currentColor">
                            <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M17 16l4-4m0 0l-4-4m4 4H7m6 4v1a3 3 0 01-3 3H6a3 3 0 01-3-3V7a3 3 0 013-3h4a3 3 0 013 3v1" />
                        </svg>
                        <a href="logout">Logout</a>
                    </div>
                </div>
            </div>
            <div class="rightpart flex flex-col main w-full md:w-4/5 md:ml-auto">
                <nav class="bg-gray-800 text-white p-4 sticky top-0 z-10 flex items-center justify-between">
                    <svg xmlns="http://www.w3.org/2000/svg" class="h-12 w-12 white md:hidden" onclick="toggleSidebar()" fill="none" viewBox="0 0 24 24" stroke="currentColor">
                        <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M4 6h16M4 12h16M4 18h16" />
                    </svg>                
                    <div class="container mx-auto flex justify-center items-center">
                        <h1 class="text-2xl md:text-4xl font-medium">Admin Dashboard</h1>
                    </div>
                </nav>
                <div class="bottompart container mx-auto mt-10 px-4">
                    <div class="addproduct grid grid-cols-1 sm:grid-cols-2 gap-6 mb-8">
                        <a href="product"
                            class="box bg-white shadow-lg rounded-lg p-6 flex flex-col items-center justify-center hover:shadow-xl transition duration-300">
                            <img src="https://cdn-icons-png.flaticon.com/512/11065/11065775.png" alt="New Product"
                                class="w-24 h-24 mb-4">
                            <p class="text-xl font-semibold">NEW PRODUCT</p>
                        </a>
                        <a href="products"
                            class="box bg-white shadow-lg rounded-lg p-6 flex flex-col items-center justify-center hover:shadow-xl transition duration-300">
                            <img src="https://cdn0.iconfinder.com/data/icons/social-messaging-ui-color-shapes-3/3/26-512.png"
                                alt="List Products" class="w-24 h-24 mb-4">
                            <p class="text-xl font-semibold">LIST PRODUCTS</p>
                        </a>
                    </div>
                </div>
            </div>
        </div>
    </body>

    </html>