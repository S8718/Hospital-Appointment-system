<%-- 
    Document   : Delete_patient
    Created on : Aug 16, 2025, 9:36:29?AM
    Author     : HP
--%>

<%@ page import="java.sql.*" %>
<%
    String url = "jdbc:mysql://localhost:3306/hospital";
    String user = "root"; 
    String pass = "";

    String id = request.getParameter("id");

    Connection con = null;
    PreparedStatement ps = null;

    try {
        if(id != null && !id.trim().equals("")) {
            Class.forName("com.mysql.cj.jdbc.Driver");
            con = DriverManager.getConnection(url, user, pass);

            String deleteQuery = "DELETE FROM reg1 WHERE id=?";
            ps = con.prepareStatement(deleteQuery);
            ps.setInt(1, Integer.parseInt(id));

            int deleted = ps.executeUpdate();
            if(deleted > 0){
                response.sendRedirect("manage_patient.jsp?msg=deleted");
            } else {
                response.sendRedirect("manage_patient.jsp?msg=notfound");
            }
        } else {
            response.sendRedirect("manage_patient.jsp?msg=invalidid");
        }

    } catch(Exception e) {
        out.println("<div class='alert alert-danger'>?? Error: " + e.getMessage() + "</div>");
    } finally {
        if(ps != null) ps.close();
        if(con != null) con.close();
    }
%>
