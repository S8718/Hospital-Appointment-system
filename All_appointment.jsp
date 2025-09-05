<%-- 
    Document   : view_appointment
    Created on : Aug 1, 2025, 9:46:14 PM
    Author     : HP
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%@ page session="true" %>
<%
    String role = (String) session.getAttribute("role");
    if (role == null || !role.equals("admin")) {
        response.sendRedirect("login.jsp");
        return;
    }

    Connection con = null;
    PreparedStatement ps = null;
    ResultSet rs = null;

    try {
        Class.forName("com.mysql.jdbc.Driver");
        con = DriverManager.getConnection("jdbc:mysql://localhost:3306/hospital", "root", "");
        ps = con.prepareStatement("SELECT * FROM appointments ORDER BY date, time");
        rs = ps.executeQuery();
%>

<!DOCTYPE html>
<html>
    <head>
        <title>All Appointments</title>
        <style>
            body {
                font-family: Arial, sans-serif;
                background: aliceblue;
            }
            .container {
                width: 90%;
                margin: 30px auto;
            }
            h2 {
                text-align: center;
                color: #007BFF;
            }
            table {
                width: 100%;
                border-collapse: collapse;
                margin-top: 30px;
            }
            th, td {
                padding: 12px;
                border: 1px solid #ccc;
                text-align: center;
            }
            th {
                background: #007BFF;
                color: white;
            }
            .back-btn {
                margin: 20px 0;
                text-align: center;
            }
            .back-btn a {
                text-decoration: none;
                background: red;
                color: white;
                padding: 10px 20px;
                border-radius: 5px;
            }
            .back-btn a:hover {
                background-color: green;
            }


        </style>
    </head>
    <body>

        <div class="container">
            <h2>All Appointments</h2>

            <table>
                <tr>
                    <th>ID</th>
                    <th>Patient Name</th>
                    <th>Doctor</th>
                    <th>location</th>
                    <th>Specialities</th>
                    <th>Hospital</th>
                    <th>Symptoms</th>
                    <th>Date</th>
                    <th>Time</th>
                    <th>Action</th>
                </tr>

                <%
                    while (rs.next()) {
                %>
                <tr>
                    <td><%= rs.getInt("id")%></td>
                    <td><%= rs.getString("patient_Name")%></td>
                    <td><%= rs.getString("doctor_name")%></td>
                    <td><%= rs.getString("location")%></td>
                    <td><%= rs.getString("specialities")%></td>
                    <td><%= rs.getString("hospital")%></td>
                    <td><%= rs.getString("symptoms")%></td>
                    <td><%= rs.getDate("date")%></td>
                    <td><%= rs.getTime("time")%></td>
                    <td>
                        <a href="Edit.jsp?Id=<%=rs.getString("Id")%>" 
                           style="background:#007bff; color:white; padding:6px 12px;
                           border-radius:5px; text-decoration:none; margin-right:8px;
                           transition:0.3s;">
                            Edit
                        </a>
                        <a href="Deletecode.jsp?Id=<%=rs.getString("Id")%>" 
                           style="background:#dc3545; color:white; padding:6px 12px;
                           border-radius:5px; text-decoration:none; transition:0.3s;">
                            Delete
                        </a>
                    </td>
                </tr>
                <%
                    }
                %>
            </table>

            <div class="back-btn">
                <a href="admin.jsp">← Back to Dashboard</a>
            </div>
        </div>

    </body>
</html>

<%
    } catch (Exception e) {
        out.println("Error: " + e.getMessage());
    } finally {
        if (rs != null) {
            rs.close();
        }
        if (ps != null) {
            ps.close();
        }
        if (con != null) {
            con.close();
        }
    }
%>
