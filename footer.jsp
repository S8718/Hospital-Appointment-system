<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <title>Sticky Footer with Logo</title>
        <%@include file="bootstrap.jsp" %>
        <style>
            html, body {
                height: 100%;
                margin: 0;
            }
            body {
                display: flex;
                flex-direction: column;
                min-height: 100vh;
                margin-bottom: 1px;
            }
            main {
                flex: 1;
            }
            footer {
                background-color: #66d7ee; /* footer ?? color */
                color: #fff;
                padding: 20px 0;
                width: 100%;
            }
            .footer-logo {
                max-height: 60px;
                border-radius: 10px; /* Border-radius set */
            }
            footer a {
                color: #fff;
                text-decoration: none;
            }
            footer a:hover {
                text-decoration: underline;
            }
        </style>

    </head>
    <body>
        <!-- Footer -->
        <footer class="bg-dark text-white pt-4 pb-2">
            <div class="container text-center text-md-start">
                <div class="row">

                    <!-- Logo -->
                    <div class="col-md-3 mb-3 text-center text-md-start">
                        <img src="images/medical 4.png" alt="Hospital Logo" class="footer-logo mb-2">
                        <p class="mt-2">Your trusted healthcare partner, providing top medical services with care and compassion.</p>
                    </div>

                    <!-- For Patients -->
                    <div class="col-md-2 mb-3">
                        <h5 class="text-uppercase">For Patients</h5>
                        <p>
                            Find a Doctor<br>
                            Book an Appointment<br>
                            Video Consultation<br>
                            Treatments<br>
                            Emergency 24x7<br>
                            Max Lab
                        </p>
                    </div>

                    <!-- Useful Links -->
                    <div class="col-md-2 mb-3">
                        <h5 class="text-uppercase">Links</h5>
                        <ul class="list-unstyled">
                            <li><a href="index.jsp" class="text-white text-decoration-none">Home</a></li>
                            <li><a href="index.jsp#services" class="text-white text-decoration-none">Services</a></li>
                            <li><a href="Contact.jsp" class="text-white text-decoration-none">Contact</a></li>
                            <li><a href="#" class="text-white text-decoration-none">Help</a></li>
                        </ul>
                    </div>

                    <!-- Social Media -->
                    <div class="col-md-2 mb-3">
                        <h5 class="text-uppercase">Follow Us</h5>
                        <a href="#" class="text-white me-3"><i class="bi bi-facebook"></i></a>
                        <a href="#" class="text-white me-3"><i class="bi bi-messenger"></i></a>
                        <a href="#" class="text-white me-3"><i class="bi bi-instagram"></i></a>
                        <a href="#" class="text-white"><i class="bi bi-linkedin"></i></a>
                    </div>

                    <!-- Contact Info -->
                    <div class="col-md-3 mb-3">
                        <h5 class="text-uppercase">Contact</h5>
                        <p class="mb-1"><i class="bi bi-envelope-fill me-2"></i> doctor@gmail.com</p>
                        <p><i class="bi bi-telephone-fill me-2"></i> +91-1234567890</p>
                    </div>

                </div>
            </div>

            <!-- Copyright -->
            <div class="text-center pt-3 border-top border-light mt-3">
                © 2025 Online Appointment. All Rights Reserved.
            </div>
        </footer>

        <!-- Bootstrap JS -->
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>

    </body>
</html>
