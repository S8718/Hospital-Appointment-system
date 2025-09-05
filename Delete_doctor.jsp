<%-- 
    Document   : Delete_doctor
    Created on : Aug 3, 2025, 4:18:43?PM
    Author     : HP
--%>

<%@page import="java.sql.*"%>
<%
    int id = Integer.parseInt(request.getParameter("id"));

    try {
        Class.forName("com.mysql.jdbc.Driver");
        Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/hospital", "root", "");
        PreparedStatement ps = con.prepareStatement("DELETE FROM doctors WHERE id=?");
        ps.setInt(1, id);
        int i = ps.executeUpdate();

        if (i > 0) {
            response.sendRedirect("Manage_doctor.jsp");
        } else {
            out.println("Failed to delete record.");
        }

        con.close();
    } catch (Exception e) {
        out.println("Error: " + e);
    }
%>
