<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Welcome Page</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
<link href="https://cdnjs.cloudflare.com/ajax/libs/bootswatch/5.3.3/tomorrow/bootstrap.min.css" rel="stylesheet" integrity="sha384-kBjOnOax3uXTfh7sUddKmOTunJ7MSgq5xu6RzqKc36K4mBzX3Hg7pCnFwK/BhbzN" crossorigin="anonymous">
<style>
  body {
    margin: 0;
    padding: 0;
    box-sizing: border-box;
    display: flex;
    justify-content: center;
    align-items: center;
    height: 100vh;
    background-color: #2d2d2d;
  }
  .main {
    border: 2px solid #DD2476;
    border-radius: 15px;
    padding: 20px;
    background-color: #1a1a1a;
  }
  .img {
    max-width: 100%;
    height: auto;
    border-radius: 10px;
  }
  .text h1 {
  	font-size:5rem;
  	background: linear-gradient(45deg, #FF512F, #DD2476, #FF512F, #DD2476);
    -webkit-background-clip: text;
	-webkit-text-fill-color: transparent;
    margin-bottom: 2rem;
  }
  .text a {
    margin: 0 10px;
    color: #DD2476;
    font-size: 1.2rem;
    font-weight: 600;
    border :2px solid white;
  }
  .text a:hover {
    background: linear-gradient(45deg, #FF512F, #DD2476, #FF512F, #DD2476);
  }
</style>
</head>
<body>
  <div class="container text-center main">  
    <div class="row align-items-center justify-content-center">
      <div class="col-md-6">
        <img class="img" src="https://i.pinimg.com/originals/f2/00/eb/f200eb6203aba005f6bb8c46ac157274.gif" alt="EcomApp Image"/>
      </div>
      <div class="col-md-6 text">
        <h1>EcomApp</h1>
        <a href="login" class="btn">Login</a>
        <a href="signup" class="btn">SignUp</a>
      </div>
    </div>
  </div>
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
</body>
</html>
