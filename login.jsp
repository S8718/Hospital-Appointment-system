<%-- 
    Document   : login
    Created on : Jul 22, 2025, 8:38:24 PM
    Author     : HP
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Login</title>
        <%@include file="bootstrap.jsp" %>
        <style>
            * {
                margin: 0;
                padding: 0;
                box-sizing: border-box;
                font-family: 'Roboto', sans-serif;
            }

            body {
                background-image: url("images/doc7.jpg");
                background-size: cover;
                background-position: center;
                height: 100vh;
                display: flex;
                align-items: center;
                justify-content: center;
            }

            .login-container {
                background: rgba(255, 255, 255, 0.1);
                backdrop-filter: blur(3px);
                padding: 40px;
                border-radius: 15px;
                box-shadow: 0 0 15px rgba(0,0,0,0.3);
                height: auto;
                width: 350px;
                color: #fff;
            }

            .login-container h2 {
                text-align: center;
                margin-bottom: 25px;
            }

            .login-container input {
                width: 100%;
                padding: 12px;
                margin: 10px 0;
                border: none;
                border-radius: 8px;
                outline: none;
                font-size: 15px;
            }

            .login-container input::placeholder {
                color: #333;
            }

            .login-container .forgot {
                display: flex;
                justify-content: flex-end;
                font-size: 13px;
                margin-top: -8px;
                color: #ddd;
                cursor: pointer;
            }

            .login-container button {
                width: 100%;
                padding: 12px;
                margin-top: 15px;
                border: none;
                border-radius: 8px;
                background-color: #0c25b3;
                color:white;
                font-weight: bold;
                font-size: 16px;
                cursor: pointer;
            }

            .social-login {
                margin-top: 20px;
                display: flex;
                justify-content: space-between;
            }

            .social-login button {
                width: 48%;
                background-color: rgba(53, 29, 102, 0.2);
                color: white;
                border: 1px solid white;
                text-decoration: none;
            }

            .create-account {
                text-align: right;
                font-size: 13px;
                margin-top: 10px;
                text-decoration: none;
            }
        </style>
    </head>
    <body>
        <%@include file="menu.jsp" %>
        <div class="login-container">
            <h2> Login Here</h2>
            <form method="post" action="logincode1.jsp">  
                <!-- ✅ Role dropdown removed -->
                <input type="email" placeholder="Email Address" name="email" required>
                <input type="password" placeholder="Password"  name="password" required>
                <div class="forgot"><a href="forgot">Forgot password</a></div>

                <!-- ✅ Button fixed -->
                <button type="submit">Login</button>

                <div class="social-login"> 
                    <button type="button" onclick="window.location.href = 'https://myaccount.google.com/'">Google</button>
                    <button type="button" onclick="window.location.href = 'http://facebook.com/login.php'">Facebook</button>
                </div>

                <div class="create-account">
                    Don't have an account? <a href="registration.jsp">Create your account?</a>
                </div>
            </form>
        </div>
    </body>
</html>
