<%-- 
    Document   : editcode
    Created on : Aug 1, 2025, 9:22:36 PM
    Author     : HP
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%
    String id = request.getParameter("Id");
    String name = request.getParameter("patient_name");
    String doctor = request.getParameter("doctor");
    String speciality = request.getParameter("specialities");
    String hospital = request.getParameter("hospital");
    String location = request.getParameter("location");
    String symptoms = request.getParameter("symptoms");
    String date = request.getParameter("date");
    String time = request.getParameter("time");

    try {
        Class.forName("com.mysql.jdbc.Driver");
        Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/hospital", "root", "");

        String sql = "UPDATE appointments SET patient_name=?, doctor=?, specialities=?, hospital=?, location=?, symptoms=?, date=?, time=? WHERE Id=?";
        PreparedStatement ps = con.prepareStatement(sql);

        ps.setString(1, name);
        ps.setString(2, doctor);
        ps.setString(3, speciality);
        ps.setString(4, hospital);
        ps.setString(5, location);
        ps.setString(6, symptoms);
        ps.setString(7, date);
        ps.setString(8, time);
        ps.setString(9, id);

        int rows = ps.executeUpdate();

        if (rows > 0) {
            out.println("<h3>Appointment Updated Successfully.</h3>");
        } else {
            out.println("<h3>Failed to update appointment.</h3>");
        }

        ps.close();
        con.close();
    } catch (Exception e) {
        out.println("Error: " + e.getMessage());
    }
%>
