<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>VerifyOtp</title>
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
        border-radius: 20px;
        box-shadow: 0 0 10px rgba(255, 255, 255, 0.1);
        width: 300px;
        border: 1px solid #fff;
    }

    form h1 {
        text-align: center;
        color: #ff416c;
        margin-bottom: 20px;
    }

    form label, form input {
        display: block;
        margin-bottom: 10px;
        color: #fff;
    }

    form input[type="email"], form input[type="password"], form input[type="text"], form input[type="submit"] {
        width: calc(100% - 30px);
        padding: 10px;
        border: 2px solid #ccc;
        border-radius: 10px;
        font-size: 16px;
        background-color: #000;
        color: #fff;
    }

    form input[type="submit"] {
        background: linear-gradient(to right, #ff416c, #ff4b2b);
        color: #fff;
        cursor: pointer;
        font-size: 16px;
        border: none;
    }

    form input[type="submit"]:hover {
        background: linear-gradient(to right, #ff4b2b, #ff416c);
    }
</style>
</head>
<body>
<form action="updatepassword" method="post">
    <h1>Verify OTP</h1>
    <label>Email</label>
    <input type="email" name="email" required/><br>
    <label>New Password</label>
    <input type="password" name="password" required/><br>
    <label>OTP</label>
    <input type="text" name="otp" required/><br>
    <input type="submit" name="submit" value="Submit"/>
    <h2 style="color: #ff4b2b">${error}</h2>
</form>
</body>
</html>
