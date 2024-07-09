<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Home page list of product</title>
</head>
<style>
body {
	background-color: black;
	font-family: sans-serif;
}

.bottompart {
	display: flex;
	flex-direction: column;
	justify-content: center;
	align-items: center;
	margin-top: 1.5rem;
	flex-wrap: wrap;
}
.bottompart .home{
	text-decoration: none;
	border-radius: 5px;
	background-color: #1e90ff;
	color: white;
	padding: 10px;
	font-size: 20px;
	font-weight: bold;
}

.bottompart h2 {
	background: linear-gradient(45deg, #FF512F, #DD2476, #FF512F, #DD2476);
	/* Define your gradient */ -webkit-background-clip : text;
	-webkit-text-fill-color : transparent;
	font-weight: bold;
	font-size: 30px;
	margin-top: 1rem;
	margin-left: 3rem;
	-webkit-background-clip: text;
	-webkit-text-fill-color: transparent;
}

.products {
	display: flex;
	justify-content: space-around;
	align-items: center;
	color: #f70776;
	width: 100%;
	padding: 1rem 0;
}

.box {
	display: flex;
	flex-direction: column;
	align-content: center; margin-top : 0.5rem;
	color: #f70776;
	border: 2px solid white;
	border-radius: 10px;
	padding: 10px;
	font-weight: bold;
	margin-top: 0.5rem;
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
	font-size: 15px;
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
	<div class="bottompart">
		<h2>HOME PAGE LIST OF PRODUCTS</h2>
		<a class="home" href="customerhomepage">HOME</a>
		<div class="products">
			<c:forEach items="${products}" var="p">
				<div class="box">
					<img src="${p.productImagePath}" width="250px" height="250px"><br>
					<div>
						<h1>${p.productName}</h1>
						<p>${p.category}</p>
						<p>Rs. ${p.price}</p>
						<p>In Stock: ${p.qty}</p>
						<div>
							<a href="addtocart?productId=${p.productId}"><button>ADD
									TO CART</button></a> <a href="showproduct?productId=${p.productId}"><button>VIEW</button></a>
						</div>
					</div>
				</div>
			</c:forEach>
		</div>
	</div>
</body>
</html>