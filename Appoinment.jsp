<%-- 
    Document   : appoinment
    Created on : Aug 1, 2025, 6:29:41 PM
    Author     : HP
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %>
<!DOCTYPE html>
<html>
    <head>
        <title>Book Appointment</title>
        <%@include file="bootstrap.jsp"%>
        <style>
            body {
                padding-top: 100px;
               background-color: aliceblue !important;

            }
            .form-container {
                width: 450px;
                margin: 50px auto;
                background:transparent;
                padding: 25px;
                box-shadow: 0 0 8px rgba(0,0,0,0.6);
                border-radius: 8px;
            }
            h2 {
                text-align: center;
                color: #007BFF;
            }
            input, select, textarea {
                width: 100%;
                padding: 10px;
                margin: 10px 0;
                border: 1px solid #ccc;
                border-radius: 4px;
            }
            input[type=submit] {
                background-color: #007BFF;
                color: white;
                cursor: pointer;
            }
            input[type=submit]:hover {
                background-color: green;
            }
        </style>
    </head>
    <body>
        <%@include file="menu.jsp" %>
        <div class="form-container">
            <h2>Book Appointment</h2>
            <form action="Appoinmentcode.jsp" method="post">
                <label>Patient Name</label>
                <input type="text" name="patient_name" required>
                <label>Enter your Email </label>
                <input type="email" name="email" required>

                <label>Select Doctor</label>
                <select name="doctor_name" required>
                    <option value="">-- Select Doctor --</option>
                    <%
                        Class.forName("com.mysql.jdbc.Driver");
                        Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/hospital", "root", "");
                        Statement stmt = con.createStatement();
                        ResultSet rs = stmt.executeQuery("SELECT doctor_name FROM doctors");
                        while (rs.next()) {
                    %>
                    <option value="<%=rs.getString("doctor_name").trim()%>"><%=rs.getString("doctor_name")%></option>
                    <%
                        }
                        con.close();
                    %>
                </select>
                <label>Select specialities</label>
                <select name="specialities" required>
                    <option value="">-- Select specialities --</option>
                    <option value="Cardiology">Cardiology</option>
                    <option value="Orthopedics">Orthopedics</option>
                    <option value="Neourology">Neourology</option>
                    <option value="Nephrology">Nephrology</option>
                    <option value="Gynecology">Gynecology</option>
                    <option value="pediatrics">pediatrics</option>
                </select>
                <label>Select hospital</label>
                <select name="hospital" required>
                    <option value="">-- Select specialities --</option>
                    <option value="sanior hospital">sanior hospital</option>
                    <option value="Uttam hospital">Uttam hospital</option>
                    <option value="Nurshing home">Nurshing home</option>
                    <option value="Urshla"> Urshla</option>
                    <option value="Hailet">Hailet</option>
                    <option value="Regency Hospital">Regency Hospital</option>
                </select>
                <label>Select location</label>
                <select name="location" required>
                    <option value="">-- Select Location --</option>
                    <option value="Kanpur">Kanpur Nagar</option>
                    <option value="Naveenganj">Naveenganj</option>
                    <option value="jaypur">Jaypur</option>
                    <option value="Mumbai">Mumbai</option>
                    <option value="Agra">Agra</option>
                    <option value="Aligarh">Aligarh</option>

                </select>

                <label>Symptoms</label>
                <textarea name="symptoms" rows="2" required></textarea>

                <label>Date</label>
                <input type="date" name="date" required>

                <label>Time</label>
                <input type="time" name="time" required></br></br>

                <input type="submit" value="Book Appointment">
            </form>
        </div>

    </body>
</html>  
