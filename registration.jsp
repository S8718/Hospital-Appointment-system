<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
        <title>Registration Form</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet"/>
        <style>
            body {
                background-image: url("images/doc6.jpg");
                background-size: cover;
                background-repeat: no-repeat;
                height: 100vh;
                display: flex;
                align-items: center;
                justify-content: center;
                font-family: 'Segoe UI', sans-serif;
            }

            .form-box {
                margin-top: 200px;
                background: rgba(255, 255, 255, 0.85);
                padding: 30px;
                border-radius: 10px;
                box-shadow: 0 10px 25px rgba(0, 0, 0, 0.1);
                width: 100%;
                max-width: 400px;
                position: relative;
                border: 2px solid grey;
                opacity: 0.9;
            }

            .form-box h2 {
                text-align: center;
                font-weight: 600;
                color: #204692;
                margin-bottom: 25px;
            }

            .form-control {
                border: none;
                border-bottom: 2px solid #00c6ff;
                border-radius: 0;
                margin-bottom: 20px;
            }

            .form-control:focus {
                box-shadow: none;
                border-color: #0072ff;
            }

            .form-check-label {
                font-size: 12px;
            }

            .btn-custom-reg {
                background: linear-gradient(to right, #00c6ff, #0072ff);
                border: none;
                color: white;
                padding: 10px;
                font-weight: 500;
                letter-spacing: 1px;
                width: 100%;
            }

            .form-footer {
                text-align: center;
                margin-top: 15px;
                font-size: 14px;
            }

            .form-footer a {
                color: #0072ff;
                text-decoration: none;
            }

            .form-footer a:hover {
                text-decoration: underline;
            }

            .close-btn {
                position: absolute;
                top: 15px;
                right: 20px;
                font-size: 20px;
                cursor: pointer;
                color: #999;
            }
        </style>
    </head>
    <body>
        <%@include file="menu.jsp" %>

        <div class="form-box">
            <div class="close-btn">&times;</div>
            <h2>Registration Form</h2>    
            <form method="post" action="regicode.jsp">
                <select name="role" class="form-control" required> 
                    <option value="" disabled selected>Select Role</option>
                    <option value="patient">Patient</option>
                    <!--<option value="Admin">Admin</option>-->
                </select>

                <input type="text" class="form-control" placeholder="First Name" name="first_name" required>
                <input type="text" class="form-control" placeholder="Last Name" name="last_name" required>
                
                
                <select name="gender" class="form-control" required> 
                    <option value="" disabled selected>Select gender</option>
                    <option value="Male">Male</option>
                    <option value="Female">Female</option>
                    <option value="Other">Other</option>
                </select>




                <input type="date" class="form-control" name="dob" required>
                <input type="email" class="form-control" placeholder="Email address" name="email" required>
                <input type="password" class="form-control" placeholder="Password" name="password" required>
                <input type="text" class="form-control" placeholder="Country" name="country" required>
                <input type="number" class="form-control" placeholder="Phone" name="number" required>

                <div class="form-check mb-3">
                    <input class="form-check-input" type="checkbox" id="termsCheck" required>
                    <label class="form-check-label" for="termsCheck">Remember me</label>
                </div>

                <button type="submit" class="btn btn-custom-reg">CREATE ACCOUNT</button>
            </form>

            <div class="form-footer">
                Already have an account? <a href="login.jsp">Sign in</a>
            </div>
        </div>
    </body>
</html>
