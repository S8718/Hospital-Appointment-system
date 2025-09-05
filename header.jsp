<%-- 
    Document   : header
    Created on : Jul 26, 2025, 12:40:32 PM
    Author     : HP
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <style>
            .column {
                float: left;
                width: 33.3%;
                margin-bottom: 16px;
                padding: 0 8px;
                text-decoration: none;
            }

            /* Display the columns below each other instead of side by side on small screens */
            @media screen and (max-width: 650px) {
                .column {
                    width: 100%;
                    display: block;
                }
            }

            /* Add some shadows to create a card effect */
            .card {
                box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2);
            }

            /* Some left and right padding inside the container */
            .container {
                padding: 0 16px;
            }

            /* Clear floats */
            .container::after, .row::after {
                content: "";
                clear: both;
                display: table;
            }

            .title {
                color: grey;
            }

            .button {
                border: none;
                outline: 0;
                display: inline-block;
                padding: 8px;
                color: white;
                background-color: #000;
                text-align: center;
                cursor: pointer;
                width: 100%;
                text-decoration: none;
            }

            .button:hover {
                background-color: #555;
            }
        </style>
    </head>
    <body>
        <div class="row">
            <div class="column">
                <div class="card">
                    <img src="images/doctor1.jpeg" alt="Jane" style="width:100%">
                    <div class="container">
                        <h2>Dr.Shubham Prabhat Shakya</h2>
                        <p class="title">MBBS &amp;MD </p>
                        <p>10+ Experience</p>
                        <p>example@gamil.com</p>
                        <p><button class="button"> <a href="#" style="text-decoration:none;color: white">Contact</a></button></p>
                    </div>
                </div>
            </div>

            <div class="column">
                <div class="card">
                    <img src="images/doctor2.jpeg" alt="Mike" style="width:100%">
                    <div class="container">
                        <h2>Dr.Raj Tilak</h2>
                        <p class="title">MBBS (Pediatrician)</p>
                        <p>15+Experience</p>
                        <p> Dr.Rajti2343@gmail.com</p>
                        <p><button class="button"><a href="#" style="text-decoration:none;color: white">Contact</a></button></p>
                    </div>
                </div>
            </div>

            <div class="column">
                <div class="card">
                    <img src="images/doctor6.jpeg" alt="John" style="width:100%;height: 490px">
                    <div class="container">
                        <h2>Dr.Vikash Kumar</h2>
                        <p class="title">MBBS,md(Microbiology)</p>
                        <p>10+Experience</p>
                        <p>Drvikas9874@gmail.com</p>
                        <p><button class="button" ><a href="#" style="text-decoration: none;color: white" >Contact</a></button></p>
                    </div>
                </div>
            </div>
        </div>
    </body>
</html>
