<%-- 
    Document   : Edit
    Created on : Aug 1, 2025, 9:10:55 PM
    Author     : HP
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Edit Appointment</title>
        <%@include file="bootstrap.jsp"%>
        <style>
            body {
                font-family: Arial;
                background-color:lightyellow;
            }
            .form-container {
                width: 450px;
                margin: 50px auto;
                background:none;
                opacity: 0.6;
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
                background-color: #28a745;
                color: white;
                cursor: pointer;
            }
            input[type=submit]:hover {
                background-color: #218838;
            }
        </style>
    </head>
    <body>
        <%@include file="menu.jsp" %>
        <div class="form-container">
            <h2>Edit Appointment</h2>
            <form action="UpdateAppointment.jsp" method="post">
                <!-- You may need a hidden ID for database update -->
                <input type="hidden" name="Id" value="<%= request.getParameter("Id")%>">

                <label>Patient Name</label>
                <input type="text" name="patient_name" value="<%= request.getParameter("patient_name")%>" required>

                <label>Select Doctor</label>
                <select name="doctor" required>
                    <option value="">-- Select Doctor --</option>
                    <option value="Dr. Meena Singh" <%= "Dr. Meena Singh".equals(request.getParameter("doctor")) ? "selected" : ""%>>Dr. Meena Singh</option>
                    <option value="Dr. Rahul Verma" <%= "Dr. Rahul Verma".equals(request.getParameter("doctor")) ? "selected" : ""%>>Dr. Rahul Verma</option>
                    <option value="Dr. Alok Tiwari" <%= "Dr. Alok Tiwari".equals(request.getParameter("doctor")) ? "selected" : ""%>>Dr. Alok Tiwari</option>
                </select>

                <label>Select Specialities</label>
                <select name="specialities" required>
                    <option value="">-- Select Specialities --</option>
                    <option value="Cardiology" <%= "Cardiology".equals(request.getParameter("specialities")) ? "selected" : ""%>>Cardiology</option>
                    <option value="Orthopedics" <%= "Orthopedics".equals(request.getParameter("specialities")) ? "selected" : ""%>>Orthopedics</option>
                    <option value="Neourology" <%= "Neourology".equals(request.getParameter("specialities")) ? "selected" : ""%>>Neourology</option>
                    <option value="Nephrology" <%= "Nephrology".equals(request.getParameter("specialities")) ? "selected" : ""%>>Nephrology</option>
                    <option value="Gynecology" <%= "Gynecology".equals(request.getParameter("specialities")) ? "selected" : ""%>>Gynecology</option>
                    <option value="pediatrics" <%= "pediatrics".equals(request.getParameter("specialities")) ? "selected" : ""%>>pediatrics</option>
                </select>

                <label>Select Hospital</label>
                <select name="hospital" required>
                    <option value="">-- Select Hospital --</option>
                    <option value="sanior hospital" <%= "sanior hospital".equals(request.getParameter("hospital")) ? "selected" : ""%>>sanior hospital</option>
                    <option value="Uttam hospital" <%= "Uttam hospital".equals(request.getParameter("hospital")) ? "selected" : ""%>>Uttam hospital</option>
                    <option value="Nurshing home" <%= "Nurshing home".equals(request.getParameter("hospital")) ? "selected" : ""%>>Nurshing home</option>
                    <option value="Urshla" <%= "Urshla".equals(request.getParameter("hospital")) ? "selected" : ""%>>Urshla</option>
                    <option value="Hailet" <%= "Hailet".equals(request.getParameter("hospital")) ? "selected" : ""%>>Hailet</option>
                    <option value="Regency Hospital" <%= "Regency Hospital".equals(request.getParameter("hospital")) ? "selected" : ""%>>Regency Hospital</option>
                </select>

                <label>Select Location</label>
                <select name="location" required>
                    <option value="">-- Select Location --</option>
                    <option value="Kanpur" <%= "Kanpur".equals(request.getParameter("location")) ? "selected" : ""%>>Kanpur</option>
                    <option value="Naveenganj" <%= "Naveenganj".equals(request.getParameter("location")) ? "selected" : ""%>>Naveenganj</option>
                    <option value="jaypur" <%= "jaypur".equals(request.getParameter("location")) ? "selected" : ""%>>Jaypur</option>
                    <option value="Mumbai" <%= "Mumbai".equals(request.getParameter("location")) ? "selected" : ""%>>Mumbai</option>
                    <option value="Agra" <%= "Agra".equals(request.getParameter("location")) ? "selected" : ""%>>Agra</option>
                    <option value="Aligarh" <%= "Aligarh".equals(request.getParameter("location")) ? "selected" : ""%>>Aligarh</option>
                </select>

                <label>Symptoms</label>
                <textarea name="symptoms" rows="2" required><%= request.getParameter("symptoms")%></textarea>

                <label>Date</label>
                <input type="date" name="date" value="<%= request.getParameter("date")%>" required>

                <label>Time</label>
                <input type="time" name="time" value="<%= request.getParameter("time")%>" required>

                <input type="submit" value="Update Appointment">
            </form>
        </div>
    </body>
</html>
