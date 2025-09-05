<%@ page import="java.sql.*" %>
<%@ page session="true" %>
<%
    String email = request.getParameter("email");
    String password = request.getParameter("password");

    try {
        Class.forName("com.mysql.jdbc.Driver");
        Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/hospital", "root", "");

        // ? Admin Login (Hidden)
        if (email.equals("sonu@gmail.com") && password.equals("CHC-@123")) {
            session.setAttribute("role", "admin");
            session.setAttribute("email", email);
            response.sendRedirect("admin.jsp");
        } else {
            // ? Patient Login
            PreparedStatement ps = con.prepareStatement("SELECT * FROM reg1 WHERE email=? AND password=? AND role='patient'");
            ps.setString(1, email);
            ps.setString(2, password);

            ResultSet rs = ps.executeQuery();
            if (rs.next()) {
                session.setAttribute("role", "patient");
                session.setAttribute("email", email);
                response.sendRedirect("user_dashboard.jsp");
            } else {
                out.println("<p style='color:red; text-align:center;'>Invalid Email or Password!</p>");
            }
        }
    } catch (Exception e) {
        out.println("<p style='color:red;'>Error: " + e.getMessage() + "</p>");
    }
%>
