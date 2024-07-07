<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>View Product</title>
<link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
<style>
    body {
        font-family: Arial, sans-serif;
        background-color: #000;
        display: flex;
        justify-content: center;
        align-items: center;
        height: 100vh;
        margin: 0;
        color: #fff;
    }
    .container {
        background-color: #333;
        padding: 20px;
        border-radius: 10px;
        box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        max-width: 500px;
        width: auto;
    }
    h1 {
        color: #fff;
        margin-bottom: 20px;
        text-align: center;
    }
    img {
        display: block;
        margin: 0 auto 20px;
        border-radius: 5px;
    }
    label {
        font-weight: bold;
        color: #fff;
    }
    a {
        display: inline-block;
        margin-top: 20px;
        color: #fff;
        background-color: #007bff;
        padding: 10px 20px;
        border-radius: 5px;
        text-decoration: none;
        text-align: center;
        font-size: 20px;
        font-weight: bold;
        width: 100%;
    }
    a:hover {
        background-color: #0056b3;
        color: white;
        text-decoration: none;
    }
</style>
</head>
<body>
	<div class="container">
		<h1>Show Product Details</h1>
		<img width="250px" height="300px" src="${product.productImagePath}" class="mb-3"/>
		<p><label>Product Name: </label> ${product.productName}</p>
        <p><label>Product Category: </label> ${product.category}</p>
		<p><label>Product Price: </label> ${product.price}</p>
		<p><label>Product Qty: </label> ${product.qty}</p>
		<a href="customerhomepage">HOME</a>
	</div>
</body>
</html>
