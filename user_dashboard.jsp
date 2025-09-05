<%-- 
    Document   : admin_dashboard
    Created on : Aug 3, 2025, 5:25:16 PM
    Author     : HP
--%>

<%@ page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %>
<%
    String userEmail = (String) session.getAttribute("email");
    if (userEmail == null) {
        response.sendRedirect("login.jsp");
        return;
    }
%>
<!DOCTYPE html>
<html>
    <head>
        <title>User Dashboard</title>
        <%@include file="bootstrap.jsp" %>
        <%@include file="menu.jsp" %>
        <style>
            body{
                padding-top: 100px;
                background: aliceblue;
            }
            .container {
                background: transparent;
            }
            .table {
                width: 100%;
                background: white;
                background: transparent;
            }
            th {
                background-color: aliceblue;
                color: yellow;
            }
            h2 {
                color: #333;
            }

            /* Logout button style */
            .logout-btn {
                margin-top: 80px;
                margin-right: 80px;
                position: absolute;
                top: 20px;
                right: 20px;
                padding: 8px 15px;
                background-color: red;
                color: white;
                border-radius: 5px;
                text-decoration: none;
                font-weight: bold;
            }
            .logout-btn:hover {
                background-color: darkred;
                color: white;
                text-decoration: none
            }
        </style>
    </head>
    <body>

        <!-- Logout Button -->
        <a href="logout.jsp" class="logout-btn">Logout</a>

        <div class="container">
            <h2>Welcome, <%= userEmail%> 👋</h2>

            <h4>Your Appointments</h4>
            <table class="table table-bordered table-hover">
                <thead>
                    <tr>
                        <th>Id</th>
                        <th>Patient Name</th>
                        <th>Doctor</th>
                        <th>Speciality</th>
                        <th>Hospital</th>
                        <th>Location</th>
                        <th>Symptoms</th>
                        <th>Date</th>
                        <th>Time</th>
                        <th>Status</th>
                    </tr>
                </thead>
                <tbody>
                    <%
                        int count = 1;
                        try {
                            Class.forName("com.mysql.jdbc.Driver");
                            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/hospital", "root", "");
                            PreparedStatement ps = con.prepareStatement("SELECT * FROM appointments WHERE email=?");
                            ps.setString(1, userEmail);
                            ResultSet rs = ps.executeQuery();

                            while (rs.next()) {
                    %>
                    <tr>
                        <td><%= count++%></td>
                        <td><%= rs.getString("patient_Name")%></td>
                        <td><%= rs.getString("doctor_name")%></td>
                        <td><%= rs.getString("specialities")%></td>
                        <td><%= rs.getString("hospital")%></td>
                        <td><%= rs.getString("location")%></td>
                        <td><%= rs.getString("symptoms")%></td>
                        <td><%= rs.getString("date")%></td>
                        <td><%= rs.getString("time")%></td>
                        <td><%= rs.getString("status")%></td>
                    </tr>
                    <%
                            }
                            con.close();
                        } catch (Exception e) {
                            out.println("<tr><td colspan='9'>Error: " + e.getMessage() + "</td></tr>");
                        }
                    %>
                </tbody>
            </table>
        </div>
    </body>
</html>
