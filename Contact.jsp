<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <title>Contact Us</title>
        <!-- Bootstrap CSS -->
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
        <%@include file="menu.jsp" %>
        <style>
            * {
                box-sizing: border-box;
            }
            body {
                background-color: aliceblue;
                padding-top: 70px;
            }
            input[type=text], select, textarea, input[type=tel] {
                width: 100%;
                padding: 12px;
                border: 1px solid #ccc;
                margin-top: 6px;
                margin-bottom: 16px;
                resize: vertical;
            }
            input[type=submit] {
                background-color: #04AA6D;
                color: white;
                padding: 12px 20px;
                border: none;
                cursor: pointer;
            }
            input[type=submit]:hover {
                background-color: #45a049;
            }
            .container {
                border-radius: 5px;
                background-color: #66d7ee;
                padding: 0px;
            }
            .column {
                float: left;
                width: 50%;
                margin-top: 8px;
                padding: 20px;
            }
            .row:after {
                content: "";
                display: table;
                clear: both;
            }
            @media screen and (max-width: 600px) {
                .column, input[type=submit] {
                    width: 100%;
                    margin-top: 0;
                }
            }
        </style>
    </head>
    <body>

        <!-- Contact Form -->
        <div class="container-fluid">
            <div style="text-align:center">
                <h2>Contact Us</h2>
                <p>The information will only be used to reach out to you for Skill Bridge related services.</p>
            </div>
            <div class="row">
                <div class="column">
                    <img src="images/main-img4.png" style="width:100%">
                </div>
                <div class="column">
                    <form  method="post" action="Contactcode.jsp">
                        <label for="fname">First Name</label>
                        <input type="text" id="fname" name="firstname" placeholder="Your name.."required>

                        <label for="lname">Last Name</label>
                        <input type="text" id="lname" name="lastname" placeholder="Your last name.."required>

                        <label for="mobile">Contact Number</label>
                        <input type="tel" id="mobile" name="mobile" placeholder="Contact Number.."required>

                        <label for="country">Country</label>
                        <select id="country" name="country" required>
                            <option value="india">India</option>
                            <option value="canada">Canada</option>
                            <option value="usa">USA</option>
                            <option value="australia">Australia</option>
                            <option value="uk">UK</option>
                            <option value="newzealand">New Zealand</option>
                            <option value="southafrica">South Africa</option>
                            <option value="korea">Korea</option>
                            <option value="afghanistan">Afghanistan</option>
                        </select>

                        <label for="subject">Subject</label>
                        <textarea id="subject" name="subject" placeholder="Write something.." style="height:170px;" required></textarea>

                        <input type="submit" value="Submit">
                    </form>
                </div>
            </div>
        </div>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>

    </body>
</html>
