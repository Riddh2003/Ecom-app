<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>List Products</title>
<link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
<style>
    body {
        font-family: Arial, sans-serif;
        background-color: #000;
        color: #fff;
        padding: 20px;
    }
    .container {
        display: flex;
        flex-direction: column;
        align-items: center;
    }
    h1 {
        color: #fff;
        margin-bottom: 20px;
    }
    table {
        width: 100%;
        margin-bottom: 20px;
    }
    .table th, .table td {
        border: 1px solid white;
        vertical-align: middle;
        color: #fff;
    }
    .table th {
        background-color: #333;
    }
    .table img {
    	border:2px solid white;
        border-radius: 5px;
    }
    .action-links a {
        margin-right: 10px;
    }
    .btn-primary {
        background-color: #007bff;
        border-color: #007bff;
    }
    .btn-secondary {
        background-color: #6c757d;
        border-color: #6c757d;
    }
    .btn-danger {
        background-color: #dc3545;
        border-color: #dc3545;
    }
    .btn-info {
        background-color: #17a2b8;
        border-color: #17a2b8;
    }
    .btn-primary:hover, .btn-secondary:hover, .btn-danger:hover, .btn-info:hover {
        opacity: 0.8;
    }
</style>
</head>
<body>
	<div class="container">
		<h1>List Products</h1>
		<div class="mb-4">
			<a href="newproduct" class="btn btn-primary">New Product</a>
			<a href="admindashboard" class="btn btn-secondary">Home</a>
		</div>
		<table class="table">
			<thead class="thead-dark">
				<tr>
					<th>Product ID</th>
					<th>Product Name/Category</th>
					<th>Product Image</th>
					<th>Product Price</th>
					<th>Product Qty</th>
					<th>Action</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach items="${products}" var="p">
					<tr>
						<td>${p.productId}</td>
						<td>${p.productName}<br>${p.category}</td>
						<td><img width="150px" height="200px" src="${p.productImagePath}"/></td>
						<td>${p.price}</td>
						<td>${p.qty}</td>
						<td class="action-links">
							<a href="deleteproduct?productId=${p.productId}" class="btn btn-danger btn-sm">DELETE</a>
							<a href="viewproduct?productId=${p.productId}" class="btn btn-info btn-sm">VIEW</a>
						</td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</div>
</body>
</html>