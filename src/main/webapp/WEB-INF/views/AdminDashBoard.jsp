<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" %>
    <!DOCTYPE html>
    <html>

    <head>
        <meta charset="ISO-8859-1">
        <title>AdminDashBoard</title>
    </head>
    <Style>
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        body {
            background-color: black;
            font-family: sans-serif;
        }

        nav {
            display: flex;
            justify-content: space-between;
            align-items: center;
            padding: 15px;
            border-bottom: 2px solid white;
        }

        nav h1 {
            font-size: 2.5rem;
            font-weight: bolder;
            background: linear-gradient(45deg, #FF512F, #DD2476, #FF512F, #DD2476);
            /* Define your gradient */
            -webkit-background-clip: text;
            -webkit-text-fill-color: transparent;
            margin-left: 2.5rem;
        }

        nav a {
            border: 2px solid white;
            border-radius: 5px;
            text-decoration: none;
            font-size: 20px;
            font-weight: bold;
            color: red;
            background-color: transparent;
            padding: 10px;
            margin-right: 5rem;
        }

        nav a:hover {
            color: white;
            border: 2px solid red;
            background-color: red;
        }

        .bottompart {
            padding: 3rem;
        }

        .bottompart .addproduct {
            display: flex;
            justify-content: center;
            align-items: center;
        }
        .addproduct .box{
            background: linear-gradient(45deg, #FF512F, #DD2476, #FF512F, #DD2476);
            /* Define your gradient */
            -webkit-background-clip: text;
            -webkit-text-fill-color: transparent;
            background-color: transparent;
            padding: 10px;
            text-decoration: none;
            font-size: 30px;
            font-weight: bolder;
            margin-right: 2rem;
            text-align: center;
            border-radius: 10px;
            border: 2px solid white;
        }
        .box img{
            width: 250px;
            height: 250px;
            margin-top: 2px;
            border-radius: 10px;
        }
        .addproduct .box:hover{
            color: red;
            text-decoration: underline;
        }
    </Style>

    <body>
        <div>
            <nav>
                <h1>Admin Dashboard</h1>
                <a href="logout">Logout</a>
            </nav>
            <div class="bottompart">
                <div class="addproduct">
                    <a href="product" class="box">
                        <img src="https://cdn-icons-png.flaticon.com/512/11065/11065775.png" alt="">
                        <p>NEW PRODUCT</p>
                    </a>
                    <a href="products" class="box">
                        <img src="https://cdn0.iconfinder.com/data/icons/social-messaging-ui-color-shapes-3/3/26-512.png" alt="">
                        <p>LIST PRODUCTS</p>
                    </a>
                </div>
                <table>
                    <thead>

                    </thead>
                </table>
            </div>
        </div>
    </body>

    </html>