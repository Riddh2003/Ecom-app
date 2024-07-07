<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" %>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
		<!DOCTYPE html>
		<html>

		<head>
			<meta charset="ISO-8859-1">
			<title>Home Page</title>
			<link href="./output.css" rel="stylesheet">
		</head>
		<style>
			* {
				margin: 0;
				padding: 0;
				box-sizing: border-box;
			}

			body {
				background: #141010;
				font-family: sans-serif;
			}

			nav {
				display: flex;
				justify-content: space-between;
				align-items: center;
				padding: 15px;
				border-bottom: 2px solid white;
			}

			nav .home {
				color: #f70776;
				font-weight: bold;
				font-size: 40px;
				/* border: 1px solid wheat; */
			}

			nav .font {
				color: #f70776;
				font-weight: bold;
				font-size: 40px;
				padding-left: 3rem;
				/* border: 1px solid wheat; */
			}

			nav .logout {
				font-size: 20px;
				color: red;
				border: 2px solid white;
				border-radius: 5px;
				padding: 10px;
				margin-right: 3rem;
				text-decoration: none;
				font-weight: bolder;
			}

			nav .logout:hover {
				background-color: red;
				border: 2px solid red;
				color: white;
				transition: transform 2s;
			}

			.bottompart {
				display: flex;
				flex-direction: column;
				justify-content: center;
				margin-top: 1.5rem;
			}

			.bottompart h2 {
				color: white;
				font-weight: bold;
				font-size: 30px;
				margin-top: 1rem;
				margin-left: 3rem;
			}

			.products {
				display: flex;
				justify-content: space-around;
				align-items: center;
				/* margin: 1rem 0; */
				color: #f70776;
				width: 100%;
				padding: 1.5rem 0;
				border-bottom: 1px solid white;
			}

			.box {
				display: flex;
				flex-direction: column;
				justify-content: center;
				/* align-items: center; */
				margin-top: 1rem;
				color: #f70776;
				border: 2px solid white;
				border-radius: 10px;
				padding: 15px;
				font-weight: bold;
			}

			.box img {
				border-radius: 10px;
			}

			.box button {
				padding: 10px;
				background-color: transparent;
				color: #f70776;
				border: 2px solid white;
				border-radius: 5px;
				font-size: 20px;
				font-weight: bold;
				cursor: pointer;
			}

			.box button:hover {
				border: 2px solid #d52778;
				background-color: #d52778;
				color: white;
			}
		</style>

		<body>
			<div id="home">
				<nav>
					<h1 class="font">eComAPP</h1>
					<h1 class="home">HOME</h1>
					<a class="logout" href="logout">Logout</a>
				</nav>
				<div class="bottompart">
					<h2>LIST OF PRODUCTS</h2>
					<div class="products">
						<c:forEach items="${products}" var="p">
							<div class="box">
								<img src="${p.productImagePath}" width="250px" height="200px"><br>
								<div>
									<h1>${p.productName}</h1><br>
									<p>${p.category}</p><br>
									<p>Rs. ${p.price}</p><br>
									<p>In Stock: ${p.qty}</p><br>
									<div>
										<a href="addtocart?productId=${p.productId}"><button>ADD TO CART</button></a>
										<a href="showproduct?productId=${p.productId}"><button>VIEW</button></a>
									</div>
								</div>
							</div>
						</c:forEach>
					</div>
				</div>
			</div>
		</body>

		</html>