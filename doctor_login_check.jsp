<%-- 
    Document   : doctor_login_cheack
    Created on : Aug 7, 2025, 11:18:22?AM
    Author     : HP
--%>

<%@ page import="java.sql.*" %>
<%@ page session="true" %>
<%@include file="menu.jsp" %>
<%
    String email = request.getParameter("doctor_email");
    String password = request.getParameter("doctor_password");

    Class.forName("com.mysql.jdbc.Driver");
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/hospital", "root", "");

    PreparedStatement ps = con.prepareStatement(
            "SELECT * FROM doctors WHERE doctor_email = ? AND doctor_password = ?"
    );
    ps.setString(1, email);
    ps.setString(2, password);
    ResultSet rs = ps.executeQuery();

    if (rs.next()) {
        session.setAttribute("doctor_id", rs.getInt("id"));
        session.setAttribute("doctor_name", rs.getString("doctor_name"));
        response.sendRedirect("doctor_dashboard.jsp");
    } else {
%>
<script>
    alert("Invalid email or password!");
    history.back();
</script>
<%
    }
    con.close();
%>
