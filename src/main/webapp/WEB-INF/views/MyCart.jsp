<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>MyCart</title>
<script src="https://cdn.tailwindcss.com"></script>
</head>
<body>
	<div>
		<c:forEach items="${products}" var="p">
			<div>
				<img src="${p.productImagePath}" width="300px"/>
			</div>
		</c:forEach>
	</div>
</body>
</html>