<%-- 
    Document   : index
    Created on : Jul 26, 2025, 10:45:24 AM
    Author     : HP
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!doctype html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>Online Appointment</title>
        <%@include file="bootstrap.jsp" %>
        <script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
        <link rel="stylesheet" href="css/header.css">
        <link rel="stylesheet" href="css/containercss.css">


        <style>
            .hero {
                background: url("images/doc7.jpg") center center/cover no-repeat;
                color: #fff;
                padding: 80px 40px;
                min-height: 100vh;
                display: flex;
                align-items: center;
                position:static;
            }
            .hero-overlay {
                opacity: 10px;
                padding: 40px;
                border-radius: 10px;
            }
            .hero-buttons .btn {
                margin-right: 15px;
                background-color: #66d7ee;
            }
            .image1{
                height: 200px;
                width:200px;
                margin-left: 0px;
                float: left;
            }
            .info-section{
                background-color: #66d7ee;
            }
        </style>
    </head>
    <body>
        <%@include file="menu.jsp" %>
        <!-- end navbar-->
        <!--container-->
        <section class="hero">
            <div class="container hero-overlay">
                <h1 class="display-4 fw-bold">Making Health Care Better Together</h1>
                <p class="lead mt-3">
                    Also you dry creeping beast multiply fourth abundantly our itself signs bring our.
                </p>
                <div class="hero-buttons mt-4">
                    <a href="Appoinment.jsp" class="btn btn-primary btn-outline-light btn-lg">Appointment</a>
                    <a href="user_dashboard.jsp" class="btn btn-primary btn-outline-light btn-lg">View Appointment</a>
                </div>
            </div>
        </section>

        <section class="info-section bg-light">
            <div class="container">
                <div class="head-box text-center mb-5">
                    <section id="services">
                        <h2>Our Services</h2>
                    </section>

                    <h6 class="text-underline-primary">Respect,privacy and comfort of patients are always a top priority in my hospital</h6>
                </div>
                <div class="three-panel-block mt-5">
                    <div class="row">
                        <div class="col-lg-4 col-md-6 col-sm-6">
                            <div class="service-block-overlay text-center mb-5 p-lg-3">

                                <script src="https://cdn.lordicon.com/lordicon.js"></script>
                                <lord-icon
                                    src="https://cdn.lordicon.com/rpviwvwn.json"
                                    trigger="hover"
                                    colors="primary:#000000,secondary:#e4e4e4"
                                    style="width:70px;height:70px; border-radius: 50%; background-color: #66d7ee">
                                </lord-icon>
                                <h3>Worldwide Access to Quality Healthcare</h3>
                                <p class="px-4">Book Your Appointment Anytime, Anywhere,Connecting You to the Best Doctors Worldwide,Your Health, Our Global Priority</p>
                            </div>
                        </div>
                        <div class="col-lg-4 col-md-6 col-sm-6">
                            <div class="service-block-overlay text-center mb-5 p-lg-3">
                                <script src="https://cdn.lordicon.com/lordicon.js"></script>
                                <lord-icon
                                    src="https://cdn.lordicon.com/mhwzfwxu.json"
                                    trigger="loop"
                                    state="loop-cycle"
                                    colors="primary:#3a3347,secondary:#f24c00,tertiary:#4bb3fd,quaternary:#e4e4e4"
                                    style="width:70px;height:70px; border-radius: 50%; background-color: #66d7ee">
                                </lord-icon>	
                                <h3>24/7 Ambulance at Your Service</h3>
                                <p class="px-4">Our 24/7 ambulance service ensures you receive quick, reliable, and safe medical transportation whenever and wherever you need urgent care</p>
                            </div>
                        </div>
                        <div class="col-lg-4 col-md-6 col-sm-6">
                            <div class="service-block-overlay text-center mb-5 p-lg-3">
                                <script src="https://cdn.lordicon.com/lordicon.js"></script>
                                <lord-icon
                                    src="https://cdn.lordicon.com/daeumrty.json"
                                    trigger="hover"
                                    style="width:70px;height:70px; border-radius: 50%; background-color: #66d7ee">
                                </lord-icon>
                                <h3>Expert Doctor Advice</h3>
                                <p class="px-4">Get 24x7 trusted, personalized medical care at your doorstep from our experienced and certified doctors.</p>
                            </div>
                        </div>
                        <div class="col-lg-4 col-md-6 col-sm-6">
                            <div class="service-block-overlay text-center p-lg-3">
                                <script src="https://cdn.lordicon.com/lordicon.js"></script>
                                <lord-icon
                                    src="https://cdn.lordicon.com/dyfvgeqj.json"
                                    trigger="loop"
                                    delay="1000"
                                    colors="primary:#ffffff,secondary:#f24c00"
                                    style="width:70px;height:70px; border-radius: 50%; background-color: #66d7ee">
                                </lord-icon>
                                <h3>Cardiology Services</h3>
                                <p class="px-4">Expert cardiology care by certified heart specialists, offering advanced diagnosis and treatment for all heart conditions</p>
                            </div>
                        </div>
                        <div class="col-lg-4 col-md-6 col-sm-6">
                            <div class="service-block-overlay text-center p-lg-3">
                                <script src="https://cdn.lordicon.com/lordicon.js"></script>
                                <lord-icon
                                    src="https://cdn.lordicon.com/knitbwfa.json"
                                    trigger="hover"
                                    stroke="light"
                                    style="width:70px;height:70px; border-radius: 50%; background-color: #66d7ee">
                                </lord-icon>  
                                <h3>Advanced Eye Diagnostics</h3>
                                <p class="px-4">Get complete eye care by expert specialists—eye checkups, vision correction, and advanced treatment options available</p>
                            </div>
                        </div>
                        <div class="col-lg-4 col-md-6 col-sm-6">
                            <div class="service-block-overlay text-center p-lg-3">
                                <script src="https://cdn.lordicon.com/lordicon.js"></script>
                                <lord-icon
                                    src="https://cdn.lordicon.com/sgtmgpft.json"
                                    trigger="hover"
                                    colors="primary:#3a3347,secondary:#e4e4e4,tertiary:#fad3d1,quaternary:#f24c00"
                                    style="width:70px;height:70px; border-radius: 50%; background-color: #66d7ee">
                                </lord-icon>
                                <h3>24/7 Support</h3>
                                <p class="px-4">Track your heart rate, steps, sleep, and more with our smart watch integration—get real-time health updates and stay connected to your fitness goals</p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>

        <!-- Info block 1 -->
        <section class="info-section  py-0">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-md-6 col-lg-6 content-half mt-md-0 pl-5 pt-4">
                        <div class="head-box mb-5 pl-5 mt-2">
                            <h2 class="text-white">Why Choose Us</h2>
                            <h6 class="text-white ">Delivering trusted healthcare with compassion and innovation</h6>
                        </div>
                        <ul class="pl-5">
                            <li>
                                <i class="fas fa-calendar-check box-round-outline" aria-hidden="true"></i>
                                <span class="list-content">
                                    <strong>Easy Appointment Booking</strong>
                                    <br>Book your appointments online in just a few clicks without waiting in queues.
                                </span>
                            </li>
                            <li>
                                <i class="fas fa-file-medical box-round-outline" aria-hidden="true"></i>
                                <span class="list-content">
                                    <strong>Digital Health Records</strong>
                                    <br>Access your reports and prescriptions securely stored online.
                                </span>
                            </li>
                            <li>
                                <i class="fas fa-hospital box-round-outline" aria-hidden="true"></i>
                                <span class="list-content">
                                    <strong>Modern Facilities</strong>
                                    <br>World-class infrastructure and advanced medical equipment for better care.
                                </span>
                            </li>                        </ul>
                    </div>
                    <div class="col-md-6 p-0 m-0">
                        <img src="images/head_image.jpg" class="img-fluid" style="height: 100%;">
                    </div>
                </div>
        </section>
        <!-- team style 1 -->
        <section class="team-section py-5">
            <div class="container">
                <div class="row mb-5">
                    <div class="head-box text-center mb-5 col-md-12">
                        <h2>Meet Our Team</h2>
                        <h6 class="text-underline-primary mb-5">This is information panel</h6>
                    </div>
                    <div class="col-md-4 mb-md-0 mb-sm-4">
                        <div class="member-box anim-lf t-bottom">
                            <img class="img-fluid" src="images/doctor13.jpg" alt="">
                            <div class="overlay-content">
                                <h3 class="text-white ml-3 my-0">Dr.jay Kishor roy</h3>
                                <p class="text-white ml-3 mb-3">DIRECTOR</p>
                                <span class="socail-l ml-3 mb-3">
                                    <a href="#" class="mr-2"><i class="fab fa-facebook-f box-circle-solid"></i></a>
                                    <a href="#" class="mr-2"><i class="fab fa-twitter box-circle-solid"></i></a>
                                    <a href="#"><i class="fab fa-linkedin-in box-circle-solid"></i></a>
                                </span>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-4 mb-md-0 mb-sm-4">
                        <div class="member-box anim-lf t-bottom">
                            <img class="img-fluid" src="images/doctor12.jpg" alt="">
                            <div class="overlay-content">
                                <h3 class="text-white ml-3 my-0">Dr.Shalu Ghosle</h3>
                                <p class="text-white ml-3 mb-3">Nurse Manager</p>
                                <span class="socail-l ml-3 mb-3">
                                    <a href="#" class="mr-2"><i class="fab fa-facebook-f box-circle-solid"></i></a>
                                    <a href="#" class="mr-2"><i class="fab fa-twitter box-circle-solid"></i></a>
                                    <a href="#"><i class="fab fa-linkedin-in box-circle-solid"></i></a>


                                </span>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-4 mb-md-0 mb-sm-4">
                        <div class="member-box anim-lf t-bottom">
                            <img class="img-fluid" src="images/doctor16.jpg" alt="">
                            <div class="overlay-content">
                                <h3 class="text-white ml-3 my-0">Dr.Sashi Kumari</h3>
                                <p class="text-white ml-3 mb-3">Physician Assistant</p>
                                <span class="socail-l ml-3 mb-3">
                                    <a href="#" class="mr-2"><i class="fab fa-facebook-f box-circle-solid"></i></a>
                                    <a href="#" class="mr-2"><i class="fab fa-twitter box-circle-solid"></i></a>
                                    <a href="#"><i class="fab fa-linkedin-in box-circle-solid"></i></a>



                                </span>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>

        <%@include file="footer.jsp" %>

    </div>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>

</body>
</html>
