<%-- 
    Document   : Add-doctor
    Created on : Aug 3, 2025, 11:56:17 PM
    Author     : HP
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="bootstrap.jsp" %>
<!DOCTYPE html>
<html>
    <head>
        <title>Add Doctor</title>
        <style>
            body{
                background-color: aliceblue;
            }
            .container {
                width: 500px;
                margin: 50px auto;
                padding: 25px;
                box-shadow: 0 0 10px rgba(0,0,0,0.4);
                border-radius: 8px;
            }
            h2 {
                text-align: center;
                color: #007BFF;
            }

        </style>
    </head>
    <body>
        <!-- optional -->

        <div class="container">
            <h2>Add Doctor</h2>
            <form action="Add_doctor_code.jsp" method="post">
                <label>Doctor Name</label>
                <input type="text" name="doctor_name" required class="form-control"/>

                <label>Doctor Email</label>
                <input type="email" name="doctor_email" required class="form-control"/>

                <label>Doctor Password</label>
                <input type="password" name="doctor_password" required class="form-control"/>

                <label>Speciality</label>
                <input type="text" name="speciality" required class="form-control"/>

                <label>Hospital Name</label>
                <input type="text" name="hospital" required class="form-control"/>

                <label>Location</label>
                <input type="text" name="location" required class="form-control"/>

                <br/>

                <div style="display: flex; justify-content: space-between; align-items: center;">
                    <input type="submit" value="Add Doctor" class="btn btn-primary" style="max-width: 150px;" />
                    <button type="button" onclick="window.location.href = 'admin.jsp'" class="btn btn-primary" style="max-width: 150px;">
                        Back to Dashboard
                    </button>
                </div>
            </form>

        </div>
    </body>
</html>
