<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    String firstname = request.getParameter("firstname");
    String lastname = request.getParameter("lastname");
    String mobile = request.getParameter("mobile");
    String country = request.getParameter("country");
    String subject = request.getParameter("subject");

    if (firstname != null && lastname != null && mobile != null && country != null && subject != null) {
        try {
            Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/hospital", "root", "");

            // Column names specified (safe way)
            String sql = "INSERT INTO contact (firstname, lastname, mobile, country, subject) VALUES (?, ?, ?, ?, ?)";
            PreparedStatement ps = con.prepareStatement(sql);
            ps.setString(1, firstname);
            ps.setString(2, lastname);
            ps.setString(3, mobile);
            ps.setString(4, country);
            ps.setString(5, subject);

            int rows = ps.executeUpdate();
            if (rows > 0) {
                out.println("<h3 style='color:green; text-align:center;'>Your message has been submitted successfully!</h3>");
            } else {
                out.println("<h3 style='color:red; text-align:center;'>Failed to submit your message. Please try again.</h3>");
            }
            con.close();
        } catch (Exception e) {
            out.println("<h3 style='color:red; text-align:center;'>Error: " + e.getMessage() + "</h3>");
        }
    }
%>
<a href="Contact.jsp" style="display:block; text-align:center; margin-top:20px;">Go Back</a>
