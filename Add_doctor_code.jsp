<%-- 
    Document   : Add_doctor_code
    Created on : Aug 3, 2025, 11:57:05 PM
    Author     : HP
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>

<%
    String name = request.getParameter("doctor_name");
    String email = request.getParameter("doctor_email");
    String password = request.getParameter("doctor_password");
    String speciality = request.getParameter("speciality");
    String hospital = request.getParameter("hospital");
    String location = request.getParameter("location");

    try {
        Class.forName("com.mysql.jdbc.Driver");
        Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/hospital", "root", "");

        String sql = "INSERT INTO doctors (doctor_name, doctor_email, doctor_password, speciality, hospital, location) VALUES (?, ?, ?, ?, ?, ?)";
        PreparedStatement ps = con.prepareStatement(sql);

        ps.setString(1, name);
        ps.setString(2, email);
        ps.setString(3, password);
        ps.setString(4, speciality);
        ps.setString(5, hospital);
        ps.setString(6, location);

        int i = ps.executeUpdate();
        if (i > 0) {
            out.println("<h3>✅ Doctor added successfully.</h3>");
            response.sendRedirect("Manage_doctor.jsp");
        } else {
            out.println("<h3>❌ Failed to add doctor.</h3>");
        }

        ps.close();
        con.close();
    } catch (Exception e) {
        out.println("Error: " + e.getMessage());
    }
%>
