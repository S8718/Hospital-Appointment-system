<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>

<%
    String a = request.getParameter("first_name");
    String b = request.getParameter("last_name");
    String gender = request.getParameter("gender");
    String c = request.getParameter("dob");
    String d = request.getParameter("email");
    String e = request.getParameter("password");
    String f = request.getParameter("country");
    String g = request.getParameter("number");
    String h = request.getParameter("role");

    try {
        Class.forName("com.mysql.cj.jdbc.Driver");  
        Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/hospital", "root", "");

        String query = "INSERT INTO reg1 (first_name, last_name, dob, email, password, country, number, role,gender) VALUES (?, ?, ?, ?, ?, ?, ?, ?,?)";
        PreparedStatement pstmt = con.prepareStatement(query);
        pstmt.setString(1, a);
        pstmt.setString(2, b);
        pstmt.setString(3, c);
        pstmt.setString(4, d);
        pstmt.setString(5, e);
        pstmt.setString(6, f);
        pstmt.setString(7, g);
        pstmt.setString(8, h);
        pstmt.setString(9, gender);

        int x = pstmt.executeUpdate();

        if (x > 0) {
            //  Success hone ke baad index.jsp par redirect
            response.sendRedirect("index.jsp?msg=Registration+Successful");
        } else {
            //  Fail hone par register.jsp par redirect
            response.sendRedirect("register.jsp?msg=Registration+Failed");
        }

        con.close();
    } catch (Exception ex) {
        response.sendRedirect("register.jsp?msg=Error+" + ex.getMessage());
    }
%>
