<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>ForgetPassword</title>
<style>
    body {
        display: flex;
        justify-content: center;
        align-items: center;
        height: 100vh;
        margin: 0;
        font-family: 'Arial', sans-serif;
        background-color: #000;
        color: #fff;
    }

    form {
        background-color: #333;
        padding: 20px;
        border-radius: 8px;
        box-shadow: 0 0 10px rgba(255, 255, 255, 0.1);
        width: 300px;
        border: 1px solid #fff;
    }

    form label, form input, form a {
        display: block;
        margin-bottom: 10px;
        color: #fff;
    }

    form input[type="email"], form input[type="submit"] {
        width: calc(100% - 30px);
        padding: 10px;
        border: 2px solid #ccc;
        font-size: 14px;
        background-color: #000;
        color: #fff;
        border-radius: 10px;
    }

    form input[type="submit"] {
        background: linear-gradient(to right, #ff416c, #ff4b2b);
        color: #fff;
        cursor: pointer;
        font-size: 20px;
        font-weight:500;
        border: none;
    }

    form input[type="submit"]:hover {
        background: linear-gradient(to right, #ff4b2b, #ff416c);
    }

    form a {
        text-decoration: none;
        text-align: center;
        color: #ff416c;
        font-size: 20px;
    }

    .form-title {
        font-size: 24px;
        margin-bottom: 20px;
        text-align: center;
        color: #ff416c;
    }
</style>
</head>
<body>
<form action="sendotp" method="post">
    <div class="form-title">Forget Password</div>
    <label>Email :</label>
    <input type="email" name="email"/>${error}
    <input type="submit" name="search" value="Search"/>
    <a href="login">Login</a>
</form>
</body>
</html>
