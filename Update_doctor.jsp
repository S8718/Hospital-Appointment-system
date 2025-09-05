<%-- 
    Document   : Update-doctor
    Created on : Aug 4, 2025, 8:22:41?PM
    Author     : HP
--%>

<%@page import="java.sql.*"%>
<%
    int id = Integer.parseInt(request.getParameter("id"));
    String doctor_name = request.getParameter("doctor_name");
    String doctor_email = request.getParameter("doctor_email");
    String doctor_password = request.getParameter("doctor_password");
    String speciality = request.getParameter("speciality");
    String hospital = request.getParameter("hospital");
    String location = request.getParameter("location");

    try {
        Class.forName("com.mysql.jdbc.Driver");
        Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/hospital", "root", "");
        PreparedStatement ps = con.prepareStatement("UPDATE doctors SET doctor_name=?, doctor_email=?, doctor_password=?, speciality=?, hospital=?, location=? WHERE id=?");
        ps.setString(1, doctor_name);
        ps.setString(2, doctor_email);
        ps.setString(3, doctor_password);
        ps.setString(4, speciality);
        ps.setString(5, hospital);
        ps.setString(6, location);
        ps.setInt(7, id);
        int i = ps.executeUpdate();

        if (i > 0) {
            response.sendRedirect("Manage_doctor.jsp");
        } else {
            out.println("Failed to update record.");
        }

        con.close();
    } catch (Exception e) {
        out.println("Error: " + e);
    }
%>
