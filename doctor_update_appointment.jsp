<%@ page import="java.sql.*" %>
<%
    String appointmentIdStr = request.getParameter("id");
    String newStatus = request.getParameter("status");

    if (appointmentIdStr != null && newStatus != null) {
        int appointmentId = Integer.parseInt(appointmentIdStr);

        try {
            Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/hospital", "root", "");

            PreparedStatement ps = con.prepareStatement("UPDATE appointments SET status = ? WHERE id = ?");
            ps.setString(1, newStatus);
            ps.setInt(2, appointmentId);

            int updated = ps.executeUpdate();
            con.close();

            if (updated > 0) {
                response.sendRedirect("doctor_dashboard.jsp");
            } else {
                out.println("<script>alert('Update failed!');window.location='doctor_dashboard.jsp';</script>");
            }

        } catch (Exception e) {
            out.println("<h4>Error: " + e.getMessage() + "</h4>");
        }
    } else {
        out.println("<script>alert('Invalid request!');window.location='doctor_dashboard.jsp';</script>");
    }
%>
