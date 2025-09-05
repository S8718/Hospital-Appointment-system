<%-- 
    Document   : Edit_doctor
    Created on : Aug 4, 2025, 7:58:01 PM
    Author     : HP
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<%@include file="bootstrap.jsp"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Edit Doctor</title>
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
                color: #ffc107;
            }
        </style>
    </head>
    <body>
        <div class="container">
            <h2>Edit Doctor</h2>
            <%
                int id = Integer.parseInt(request.getParameter("id"));
                String doctor_name = "", doctor_email = "", doctor_password = "", speciality = "", hospital = "", location = "";

                try {
                    Class.forName("com.mysql.jdbc.Driver");
                    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/hospital", "root", "");
                    PreparedStatement ps = con.prepareStatement("SELECT * FROM doctors WHERE id=?");
                    ps.setInt(1, id);
                    ResultSet rs = ps.executeQuery();

                    if (rs.next()) {
                        doctor_name = rs.getString("doctor_name");
                        doctor_email = rs.getString("doctor_email");
                        doctor_password = rs.getString("doctor_password");
                        speciality = rs.getString("speciality");
                        hospital = rs.getString("hospital");
                        location = rs.getString("location");
                    }

                    con.close();
                } catch (Exception e) {
                    out.println("Error: " + e);
                }
            %>

            <form action="Update_doctor.jsp" method="post">
                <input type="hidden" name="id" value="<%=id%>"/>

                <label>Doctor Name</label>
                <input type="text" name="doctor_name" value="<%=doctor_name%>" required class="form-control"/>

                <label>Doctor Email</label>
                <input type="email" name="doctor_email" value="<%=doctor_email%>" required class="form-control"/>

                <label>Doctor Password</label>
                <input type="password" name="doctor_password" value="<%=doctor_password%>" required class="form-control"/>

                <label>Speciality</label>
                <input type="text" name="speciality" value="<%=speciality%>" required class="form-control"/>

                <label>Hospital</label>
                <input type="text" name="hospital" value="<%=hospital%>" required class="form-control"/>

                <label>Location</label>
                <input type="text" name="location" value="<%=location%>" required class="form-control"/>

                <br/>
                <input type="submit" value="Update Doctor" class="btn btn-warning"/>
            </form>
        </div>
    </body>
</html>
