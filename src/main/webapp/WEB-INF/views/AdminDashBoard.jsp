<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" %>
    <!DOCTYPE html>
    <html lang="en">

    <head>
        <meta charset="ISO-8859-1">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>AdminDashBoard</title>
        <script src="https://cdn.tailwindcss.com"></script>
    </head>
    <style>
        @media screen and (min-width: 768px) {
            #typewriter {
                overflow: hidden;
                /* Ensures the content is not revealed until the animation */
                border-right: .15em dashed rgb(135, 141, 255);
                /* The typwriter cursor */
                white-space: nowrap;
                /* Keeps the content on a single line */
                /* Gives that scrolling effect as the typing happens */
                letter-spacing: .10em;
                padding-bottom: 3px;
                /* Adjust as needed */
                animation:
                    typing 2s steps(40, end),
                    blink-caret .74s step-end infinite;
            }

            /* The typing effect */
            @keyframes typing {
                from {
                    width: 0
                }

                to {
                    width: 32%
                }
            }

            /* The typewriter cursor effect */
            @keyframes blink-caret {

                from,
                to {
                    border-color: transparent;
                }

                50% {
                    border-color: rgb(135, 141, 255);
                }
            }
        }
    </style>

    <body class="bg-white">
        <script>
            function toggleSidebar() {
                document.querySelector(".sidebar").classList.toggle("hidden");
            }
        </script>
        <div class="flex flex-col md:flex-row h-screen">
            <div class="sidebar bg-indigo-600 w-8/12 h-screen fixed md:w-1/5 md:fixed md:h-screen hidden md:block">
                <div
                    class="sidebar-header flex items-center justify-start p-4 cursor-pointer text-white border-b-2 border-gray-400">
                    <svg xmlns="http://www.w3.org/2000/svg" class="h-8 w-8 mr-2" fill="none" viewBox="0 0 24 24"
                        stroke="currentColor">
                        <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2"
                            d="M3 12l2-2m0 0l7-7 7 7M5 10v10a1 1 0 001 1h3m10-11l2 2m-2-2v10a1 1 0 01-1 1h-3m-6 0a1 1 0 001-1v-4a1 1 0 011-1h2a1 1 0 011 1v4a1 1 0 001 1m-6 0h6" />
                    </svg>
                    <h2 class="text-3xl font-bold">Dashboard</h2>
                </div>
                <div class="flex flex-col items-start pl-6 mt-12 text-white gap-6 font-medium text-2xl">
                    <div class="flex items-center p-2 hover:bg-indigo-400 hover:rounded-lg hover:p-2">
                        <svg xmlns="http://www.w3.org/2000/svg" class="h-6 w-6 md:h-6 w-6 mr-2 text-white" fill="none"
                            viewBox="0 0 24 24" stroke="currentColor">
                            <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2"
                                d="M3 12l2-2m0 0l7-7 7 7M5 10v10a1 1 0 001 1h3m10-11l2 2m-2-2v10a1 1 0 01-1 1h-3m-6 0a1 1 0 001-1v-4a1 1 0 011-1h2a1 1 0 011 1v4a1 1 0 001 1m-6 0h6" />
                        </svg>
                        <a href="admindashboard" class="">Dashboard</a>
                    </div>
                    <div class="flex items-center p-2 hover:bg-indigo-400 hover:rounded-lg hover:p-2">
                        <svg xmlns="http://www.w3.org/2000/svg" class="h-6 w-6 mr-2 text-white" fill="none"
                            viewBox="0 0 24 24" stroke="currentColor">
                            <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M12 4v16m8-8H4" />
                        </svg>
                        <a href="product">New Product</a>
                    </div>
                    <div class="flex items-center p-2 hover:bg-indigo-400 hover:rounded-lg hover:p-2">
                        <svg xmlns="http://www.w3.org/2000/svg" class="h-6 w-6 mr-2 text-white" fill="none"
                            viewBox="0 0 24 24" stroke="currentColor">
                            <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2"
                                d="M3 10h18M3 14h18M3 18h18" />
                        </svg>
                        <a href="products">List Of Products</a>
                    </div>
                    <div class="flex items-center p-2 hover:bg-indigo-400 hover:rounded-lg hover:p-2">
                        <svg class="h-6 w-6 mr-2 text-white" fill="none" stroke="currentColor" viewBox="0 0 24 24"
                            xmlns="http://www.w3.org/2000/svg">
                            <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2"
                                d="M13 16h-1v-4h-1m1-4h.01M21 12a9 9 0 11-18 0 9 9 0 0118 0z"></path>
                        </svg>
                        <a href="#">About</a>
                    </div>
                    <div class="flex items-center p-2 hover:bg-indigo-400 hover:rounded-lg hover:p-2">
                        <svg class="h-6 w-6 mr-2 text-white" fill="none" stroke="currentColor" viewBox="0 0 24 24"
                            xmlns="http://www.w3.org/2000/svg">
                            <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2"
                                d="M3 8l7.89 5.26a2 2 0 002.22 0L21 8M5 19h14a2 2 0 002-2V7a2 2 0 00-2-2H5a2 2 0 00-2 2v10a2 2 0 002 2z">
                            </path>
                        </svg>
                        <a href="#">Contact</a>
                    </div>
                    <div class="flex items-center p-2 hover:bg-indigo-400 hover:rounded-lg hover:p-2">
                        <svg xmlns="http://www.w3.org/2000/svg" class="h-6 w-6 mr-2 text-white" fill="none"
                            viewBox="0 0 24 24" stroke="currentColor">
                            <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2"
                                d="M17 16l4-4m0 0l-4-4m4 4H7m6 4v1a3 3 0 01-3 3H6a3 3 0 01-3-3V7a3 3 0 013-3h4a3 3 0 013 3v1" />
                        </svg>
                        <a href="logout">Logout</a>
                    </div>
                </div>
            </div>
            <div class="rightpart flex flex-col main w-full md:w-4/5 md:ml-auto">
                <nav
                    class="bg-gray-100 shadow-xl text-indigo-500 p-4 sticky top-0 z-10 flex items-center justify-between">
                    <svg xmlns="http://www.w3.org/2000/svg" class="h-12 w-12 white md:hidden" onclick="toggleSidebar()"
                        fill="none" viewBox="0 0 24 24" stroke="currentColor">
                        <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2"
                            d="M4 6h16M4 12h16M4 18h16" />
                    </svg>
                    <div class="container mx-auto flex justify-center items-center">
                        <h1 class="text-2xl md:text-4xl font-medium">Admin Dashboard</h1>
                    </div>
                </nav>
                <div class="bottompart container mx-auto mt-10 px-4">
                    <div class="addproduct grid grid-cols-1 sm:grid-cols-2 gap-6 mb-8">
                        <a href="product"
                            class="box bg-white shadow-lg rounded-lg p-6 flex flex-col items-center justify-center hover:shadow-xl transition duration-300">
                            <img src="data:image/svg+xml;utf8,%3Csvg%20xmlns%3D%22http%3A%2F%2Fwww.w3.org%2F2000%2Fsvg%22%20viewBox%3D%220%200%2064%2064%22%3E%3Cpath%20fill%3D%22%237f93ff%22%20d%3D%22m47%2C31c-8.47336-.13485-14.94709%2C8.45689-12.49495%2C16.54919-.00011-.00012-8.50505%2C4.90967-8.50505%2C4.90967v-20.7876l18-10.39215v5.841c.01414%2C1.31205%2C1.98296%2C1.31428%2C1.99999-.00005%2C0%2C.00005%2C0-7.57027%2C0-7.57027-.00671-.05812-.0137-.11545-.02301-.17371-.03865-.29569-.2347-.53189-.47701-.6925.00001%2C0-19.99999-11.54981-19.99999-11.54981-.31875-.15162-.68128-.15809-1%2C.00004%2C0-.00004-20%2C11.54683-20%2C11.54683-.29463.20045-.48382.50891-.49996.86916-.00004-.00002-.00004%2C23.08982-.00004%2C23.08982%2C0%2C.35742.19043.6875.5.86621l20%2C11.55078c.31771.16542.68243.17325%2C1-.00004%2C0%2C.00004%2C9.71356-5.60695%2C9.71356-5.60695%2C2.06628%2C4.45007%2C6.56598%2C7.55035%2C11.78644%2C7.55035%2C17.23938-.7123%2C17.24828-25.28431%2C0-26ZM15%2C14.92834l17.99963%2C10.39197-7.99963%2C4.61853L7.00037%2C19.54688l7.99963-4.61853Zm9.99994-5.77344l17.99762%2C10.39319-7.99756%2C4.61731-17.99963-10.39197%2C7.99957-4.61853ZM6%2C21.27911l18%2C10.39215v20.78729l-18-10.39606v-20.78339Zm41%2C33.72089c-6.06543%2C0-11-4.93457-11-11%2C.60422-14.593%2C21.39801-14.58875%2C22.00002.00008-.00002%2C6.06535-4.93459%2C10.99992-11.00002%2C10.99992Z%22%20class%3D%22color000000%20svgShape%22%2F%3E%3Cpath%20fill%3D%22%237f93ff%22%20d%3D%22m53%2C43h-5v-5c-.02059-1.31089-1.97806-1.31742-2%2C.00005%2C0-.00005%2C0%2C4.99995%2C0%2C4.99995h-5c-.55273%2C0-1%2C.44727-1%2C1s.44727%2C1%2C1%2C1h5v5c0%2C.55273.44727%2C1%2C1%2C1s1-.44727%2C1-1v-5h5c1.31089-.02059%2C1.31742-1.97806%2C0-2Z%22%20class%3D%22color000000%20svgShape%22%2F%3E%3C%2Fsvg%3E"
                                alt="New Product" class="w-28 h-28 mb-4">
                            <p class="text-xl font-semibold" id="typewriter">NEW PRODUCT</p>
                        </a>
                        <a href="products"
                            class="box bg-white shadow-lg rounded-lg p-6 flex flex-col items-center justify-center hover:shadow-xl transition duration-300">
                            <img src="data:image/svg+xml;utf8,%3Csvg%20xmlns%3D%22http%3A%2F%2Fwww.w3.org%2F2000%2Fsvg%22%20viewBox%3D%220%200%2050%2050%22%3E%3Cpath%20fill%3D%22%237f93ff%22%20d%3D%22M6.2%2034.3c.3%200%20.5-.2.5-.5v-2c0-.3-.2-.5-.5-.5s-.5.2-.5.5v2c0%20.3.2.5.5.5zM16.7%2027l11.1-6.4c.2-.1.3-.4.2-.7-.1-.2-.4-.3-.7-.2l-11.1%206.4c-.2.1-.3.4-.2.7.2.3.5.4.7.2zm0%205.7%2011.1-6.4c.2-.1.3-.4.2-.7-.1-.2-.4-.3-.7-.2l-11.1%206.4c-.2.1-.3.4-.2.7.2.2.5.3.7.2z%22%20class%3D%22color000000%20svgShape%22%2F%3E%3Cpath%20fill%3D%22%237f93ff%22%20d%3D%22M22.9%2042.9c0%20.2.1.3.2.4.2.1%209.7%205.7%209.6%205.6.2.1.3.1.5%200l10.9-6.3c.2-.1.3-.3.3-.4V30.6c0-.2-.1-.4-.2-.4-11.7-6.8%202.4%201.4-9.6-5.6-.2-.1-.3-.1-.5%200l-.5.3-.1-19.6c0-.8-.4-1.1-.6-1.3l-5-2.9c-.4-.2-.9-.2-1.5.1L7.2%2012.4c-.9.5-1.6%201.7-1.6%202.7v14.8c0%20.3.2.5.5.5s.5-.2.5-.5V15.1c0-.7.5-1.5%201.1-1.9l3.8-2.2%204%202.3-3.3%201.9c-.9.5-1.6%201.7-1.6%202.7v28.9l-3.8-2.2c-.1%200-.1-.2-.1-.4V36c0-.3-.2-.5-.5-.5s-.5.2-.5.5v8.2c0%20.6.2%201.1.6%201.3%201.2.7%203.7%202.2%205%202.9.4.2.9.2%201.5-.1l10.1-5.8v.4zm9.6-37.6.1%2020.1-1.4.8L31.1%208c0-.2-.1-.3-.3-.4-.2-.1-.3-.1-.5%200l-2.2%201.3V7.2C32.2%204.8%2031.8%205%2031.9%205c.4-.2.6-.1.6.3zM17%2020.4v-6.7c.3-.1%209.4-5.4%2010.1-5.9V14c0%20.5-.4%201.1-.7%201.3l-9.1%205.3c-.3%200-.3%200-.3-.2zm-1%200c0%201%20.9%201.5%201.8%201l9.1-5.3c.7-.4%201.3-1.4%201.3-2.2V10l1.9-1.1.1%2018-7%204.1c-.2.1-.3.3-.3.4v2.3l-6.6%203.8c-.2.1-.3.4-.2.7.1.2.4.3.7.2l6.1-3.5v3.7l-8.8%205.1-.1-25.5%202-1.2v3.4zm16.9%2015.9c-.2-.1-9.1-5.3-8.6-5l2.9-1.7%208.6%205-2.9%201.7zm4.5-1.4%202-1.2V36l-2%201.2v-2.3zm-.5-.8-8.6-5%202-1.2%208.6%205-2%201.2zm-13%208.6V32.3l8.6%205v10.4l-8.6-5zm9.6%204.9V37.2l2.9-1.7V38c0%20.2.1.3.3.4.2.1.3.1.5%200l3-1.8c.2-.1.2-.3.2-.4v-3.1l3-1.7v10.4l-9.9%205.8zm.8-22%208.6%205-3%201.7-8.6-5%203-1.7zM26.9%202.1c.3-.1.4-.1.5-.1l3.8%202.2-3.6%202.1-4-2.3%203.3-1.9zm-14.4%208.4%2010.1-5.8%204%202.3-10.1%205.9-4-2.4zm-.3%2036.9c-.4.2-.6.1-.6-.3V18c0-.7.5-1.5%201.1-1.9l3.3-1.9v1.7l-2.6%201.5c-.1.1-.3.4-.3.5%200%20.1%200-1%20.1%2026.5%200%20.2.1.3.3.4.2.1.3.1.5%200l9.1-5.2v1.7l-10.9%206.1z%22%20class%3D%22color000000%20svgShape%22%2F%3E%3C%2Fsvg%3E"
                                alt="List Products" class="w-28 h-28 mb-4">
                            <p class="text-xl font-semibold" id="typewriter">LIST PRODUCTS</p>
                        </a>
                    </div>
                </div>
            </div>
        </div>
    </body>

    </html>