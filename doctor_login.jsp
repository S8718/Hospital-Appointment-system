<%-- 
    Document   : doctor_login
    Created on : Aug 7, 2025, 11:17:20 AM
    Author     : HP
--%>

<%@ page language="java" contentType="text/html; charset=UTF-8"%>

<!DOCTYPE html>
<html>
    <head>
        <title>Doctor Login</title>
        <%@include file="menu.jsp" %>
        <style>
            body {
                font-family: Arial;
                background-color: aliceblue;
                padding-top: 100px;
            }
            .login-box {
                margin: 100px auto;
                width: 350px;
                padding: 30px;
                background-color: white;
                box-shadow: 0 0 10px gray;
                border-radius: 10px;
            }
            input[type=email], input[type=password] {
                width: 100%;
                padding: 10px;
                margin: 8px 0;
                border: 1px solid #ccc;
                border-radius: 5px;
            }
            input[type=submit] {
                background-color: #28a745;
                color: white;
                border: none;
                padding: 10px;
                width: 100%;
                border-radius: 5px;
            }
        </style>
    </head>
    <body>
        <div class="login-box">

            <h2>Doctor Login</h2>
            <form action="doctor_login_check.jsp" method="post">
                <label>Email</label>
                <input type="email" name="doctor_email" required>

                <label>Password</label>
                <input type="password" name="doctor_password" required>

                <input type="submit" value="Login">
            </form>
        </div>

    </body>
</html>
