<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Welcome Page</title>
<link href="https://cdn.jsdelivr.net/npm/tailwindcss@2.2.19/dist/tailwind.min.css" rel="stylesheet">
</head>
<body class="bg-indigo-400 w-full h-screen flex justify-center items-center m-0 p-0">

  <div class="container w-8/12 mx-auto bg-white shadow-xl rounded-lg p-8">
    <div class="w-full flex flex-col lg:flex-row items-center justify-center space-y-8 lg:space-y-0 lg:space-x-8">
      <div class="w-full md:w-1/2 flex justify-center shadow-xl">
        <img class="rounded-lg w-full " src="https://i.pinimg.com/originals/f2/00/eb/f200eb6203aba005f6bb8c46ac157274.gif" alt="EcomApp Image"/>
      </div>
      <div class="w-1/2 flex flex-col items-center">
        <h1 class="gradient-text mb-8 text-3xl md:text-6xl font-medium text-indigo-500">eCommerce</h1>
        <div class="flex flex-col justify-center space-y-4 lg:flex-row lg:space-x-4 lg:space-y-0">
          <a href="login" class="rounded text-lg text-white btn btn-custom bg-indigo-500 hover:bg-indigo-600 p-3 inline-block text-center">Login</a>
          <a href="signup" class="rounded text-lg text-white btn btn-custom inline-block text-center p-3 bg-indigo-500 hover:bg-indigo-600">SignUp</a>
        </div>
      </div>
    </div>
  </div>

</body>
</html>
