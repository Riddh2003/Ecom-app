<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" %>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
        <!DOCTYPE html>
        <html lang="en">

        <head>
            <meta charset="UTF-8">
            <meta name="viewport" content="width=device-width, initial-scale=1.0">
            <title>List Products</title>
            <link href="https://cdn.jsdelivr.net/npm/tailwindcss@2.2.19/dist/tailwind.min.css" rel="stylesheet">
            <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.2/css/all.min.css">
            <style>
                .sidebar {
                    position: fixed;
                    top: 64px;
                    left: 0;
                    right: 0;
                    background-color: rgba(174, 102, 226, 0.885);
                    padding: 1rem;
                    z-index: 50;
                }

                .sidebar-header {
                    display: flex;
                    flex-direction: column;
                    gap: 1rem;
                }
            </style>
        </head>

        <body class="bg-gray-100 text-gray-800">
            <script>
                function toggleSidebar() {
                    const sidebar = document.querySelector(".sidebar");
                    sidebar.classList.toggle("hidden");
                    sidebar.innerHTML = `<div class="sidebar-header">
            <a href="admindashboard" class="text-white hover:underline hover:underline-offset-8">Home</a>
            <a href="newproduct" class="text-white hover:underline hover:underline-offset-8">Add New Product</a>
            <a href="#" class="text-white hover:underline hover:underline-offset-8">About</a>
            <a href="#" class="text-white hover:underline hover:underline-offset-8">Contact</a>
        </div>`;
                }
            </script>
            <!-- Navbar -->
            <nav class="bg-gray-100 text-indigo-500 shadow-xl sticky top-0 text-indigo-500 p-3">
                <div class="container mx-auto flex justify-between items-center">
                    <div class="w-full md:w-6/12 flex justify-evenly items-center">
                        <a href="#" class="text-2xl md:text-4xl font-medium">eCommerce</a>
                        <a href="admindashboard"
                            class="hidden md:block rounded text-lg font-medium hover:bg-gray-200 p-2">Dashboard</a>
                        <a href="newproduct"
                            class="hidden md:block rounded text-lg font-medium hover:bg-gray-200 p-2">New Product</a>
                    </div>
                    <button class="md:hidden text-indigo-500" onclick="toggleSidebar()">
                        <svg class="w-6 h-6" fill="none" stroke="currentColor" viewBox="0 0 24 24"
                            xmlns="http://www.w3.org/2000/svg">
                            <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2"
                                d="M4 6h16M4 12h16m-7 6h7"></path>
                        </svg>
                    </button>
                </div>
            </nav>
            <div class="sidebar hidden md:hidden"></div>
            <div class="container mx-auto px-8 py-8">
                <div class="grid grid-cols-1 md:grid-cols-2 lg:grid-cols-3 gap-6">
                    <c:forEach items="${products}" var="p">
                        <div class="bg-white rounded-lg shadow-md overflow-hidden">
                            <img class="w-full h-64 object-cover" src="${p.productImagePath}" alt="${p.productName}" />
                            <div class="p-4">
                                <h2 class="text-xl font-semibold mb-2">${p.productName}<span>
                                        ${p.category}</span></h2>
                                <div class="flex justify-between items-center mb-2">
                                    <span class="text-lg font-bold">$${p.price/80}</span>
                                    <span class="text-gray-600">Qty: ${p.qty}</span>
                                </div>
                                <div class="flex justify-between items-center">
                                    <span class="text-sm text-gray-500">ID: ${p.productId}</span>
                                    <div>
                                        <a href="addtocart?productId=${p.productId}"
                                            class="text-black border p-2 border-gray-100 bg-gray-100 rounded-sm hover:text-indigo-600"><i
                                                class="fas fa-trash"></i></a>
                                        <a href="viewproduct?productId=${p.productId}"
                                            class="text-black border p-2 border-gray-100 bg-gray-100 rounded-sm hover:text-indigo-600"><i
                                                class="fas fa-eye"></i></a>
                                        <a href="#"
                                            class="text-black border p-2 border-gray-100 bg-gray-100 rounded-sm hover:text-indigo-600"><i
                                                class="fas fa-edit"></i></a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </c:forEach>
                </div>
            </div>
        </body>

        </html>