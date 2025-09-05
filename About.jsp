<%-- 
    Document   : About
    Created on : Aug 15, 2025, 12:33:32 PM
    Author     : HP
--%>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8" />
        <title>About Us - Hospital Appointment System</title>
                <style>
            /* Reset some default styles */
            * {
                box-sizing: border-box;
                margin: 0;
                padding: 0;
            }

            body {
                padding-top: 100px;
                font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
                background: linear-gradient(135deg, #4facfe 0%, #00f2fe 100%);
                color: #333;
                line-height: 1.6;
                min-height: 100vh;
                display: flex;
                justify-content: center;
                align-items: center;
                padding: 40px 20px;
            }

            .about-container {
                margin-top: 100px;
                background:#fff;
                max-width: 900px;
                padding: 40px 50px;
                border-radius: 15px;
                box-shadow: 0 12px 30px rgba(0, 0, 0, 0.12);
                animation: fadeInUp 1s ease forwards;
            }

            @keyframes fadeInUp {
                0% {
                    opacity: 0;
                    transform: translateY(30px);
                }
                100% {
                    opacity: 1;
                    transform: translateY(0);
                }
            }

            h1 {
                color: #0078d7;
                margin-bottom: 20px;
                text-align: center;
                font-size: 2.8rem;
                letter-spacing: 1.2px;
            }

            h2 {
                color: #004a99;
                margin-top: 30px;
                margin-bottom: 15px;
                font-size: 1.6rem;
                border-left: 5px solid #0078d7;
                padding-left: 12px;
            }

            p {
                font-size: 1.1rem;
                margin-bottom: 20px;
                color: #555;
            }

            ul {
                margin-left: 20px;
                margin-bottom: 30px;
            }

            ul li {
                font-size: 1.1rem;
                margin-bottom: 12px;
                padding-left: 10px;
                position: relative;
                color: #333;
            }

            ul li::before {
                content: "";
                position: absolute;
                left: 0;
                color: #00aaff;
                font-weight: bold;
            }

            footer {
                text-align: center;
                margin-top: 40px;
                font-size: 0.9rem;
                color: #777;
            }

            @media (max-width: 600px) {
                .about-container {
                    padding: 30px 20px;
                }

                h1 {
                    font-size: 2rem;
                }

                h2 {
                    font-size: 1.3rem;
                }

                p, ul li {
                    font-size: 1rem;
                }
            }
        </style>
    </head>
    <body>
<%@include file="menu.jsp" %>

        <div class="about-container">
            <h1>About Us</h1>
            <p>Welcome to <strong>Hospital Appointment System</strong> — your trusted platform for seamless, fast, and secure booking of medical appointments with top doctors.</p>

            <p>At CityCare Hospital, we strive to make healthcare accessible and convenient for all. Our system is designed to simplify appointment scheduling and provide timely access to expert medical care across various specialties.</p>

            <h2>Why Choose Our Appointment System?</h2>
            <ul>
                <li>User-Friendly Interface for effortless booking</li>
                <li>24/7 Access to schedule or modify appointments anytime</li>
                <li>Wide network of experienced specialists in multiple fields</li>
                <li>Instant confirmation and timely reminders for all appointments</li>
                <li>Advanced security to keep your personal information safe</li>
            </ul>

            <p>Our mission is to bridge the gap between patients and healthcare providers, offering a smooth digital experience and enhancing your overall care journey.</p>

            <p>Thank you for trusting <strong> Hospital Appointment system</strong>. We are committed to supporting your health with dedication and professionalism.</p>

            <footer>
                
                &copy; 2025 CityCare Hospital. All rights reserved.
            </footer>
        </div>
    </body>
</html>
