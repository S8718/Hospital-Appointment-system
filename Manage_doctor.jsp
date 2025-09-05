<%-- 
    Document   : Manage_doctor
    Created on : Aug 3, 2025, 4:11:28?PM
    Author     : HP
--%>

<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="bootstrap.jsp" %>
<!DOCTYPE html>
<html>
    <head>
        <title>Manage Doctors</title>
        <style>
            body{
                background-color: aliceblue;
            }
            .container {
                margin: 50px auto;
            }
            h2 {
                text-align: center;
                color: #28a745;
            }
            table {
                margin-top: 20px;
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
            .back-btn a:hover{
                background-color: green;

            }
        </style>
    </head>
    <body>

        <div class="container">
            <h2>Manage Doctors</h2>
            <table class="table table-bordered table-hover">
                <thead class="thead-dark">
                    <tr>
                        <th>ID</th>
                        <th>Name</th>
                        <th>Email</th>
                        <th>password</th>
                        <th>Speciality</th>
                        <th>Hospital</th>
                        <th>Location</th>
                        <th>Actions</th>
                    </tr>
                </thead>
                <tbody>
                    <%
                        try {
                            Class.forName("com.mysql.jdbc.Driver");
                            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/hospital", "root", "");
                            Statement st = con.createStatement();
                            ResultSet rs = st.executeQuery("SELECT * FROM doctors");

                            while (rs.next()) {
                    %>
                    <tr>
                        <td><%= rs.getInt("id")%></td>
                        <td><%= rs.getString("doctor_name")%></td>
                        <td><%= rs.getString("doctor_email")%></td>
                        <td><%= rs.getString("doctor_password")%></td>
                        <td><%= rs.getString("speciality")%></td>
                        <td><%= rs.getString("hospital")%></td>
                        <td><%= rs.getString("location")%></td>
                        <td>
                            <a href="Edit_doctor.jsp?id=<%= rs.getInt("id")%>" class="btn btn-sm btn-warning">Edit</a>
                            <a href="Delete_doctor.jsp?id=<%= rs.getInt("id")%>" class="btn btn-sm btn-danger" onclick="return confirm('Are you sure?');">Delete</a>
                        </td>
                    </tr>
                    <%
                            }
                            con.close();
                        } catch (Exception e) {
                            out.println("Error: " + e);
                        }
                    %>
                </tbody>
            </table>
            <div class="back-btn">
                <a href="admin.jsp">← Back to Dashboard</a>
            </div>
        </div>
    </body>
</html>
