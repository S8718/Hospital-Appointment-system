<%-- 
    Document   : Edit_patient
    Created on : Aug 16, 2025, 9:35:54 AM
    Author     : HP
--%>

<%@ page import="java.sql.*" %>
<%
    String url = "jdbc:mysql://localhost:3306/hospital";
    String user = "root"; 
    String pass = "";

    String id = request.getParameter("id");
    String msg = "";

    // URL se msg read karna
    if(request.getParameter("msg") != null) {
        msg = request.getParameter("msg");
    }

    Connection con = null;
    PreparedStatement ps = null;
    ResultSet rs = null;

    String first_name="", last_name="", dob="", email="", country="", number="";

    try {
        Class.forName("com.mysql.cj.jdbc.Driver");
        con = DriverManager.getConnection(url, user, pass);

       
        if(request.getParameter("update") != null) {
            first_name = request.getParameter("first_name");
            last_name  = request.getParameter("last_name");
            dob        = request.getParameter("dob");
            email      = request.getParameter("email");
            country    = request.getParameter("country");
            number     = request.getParameter("number");

            String updateQuery = "UPDATE reg1 SET first_name=?, last_name=?, dob=?, email=?, country=?, number=? WHERE id=?";
            ps = con.prepareStatement(updateQuery);
            ps.setString(1, first_name);
            ps.setString(2, last_name);
            ps.setString(3, dob);
            ps.setString(4, email);
            ps.setString(5, country);
            ps.setString(6, number);
            ps.setInt(7, Integer.parseInt(id));

            int updated = ps.executeUpdate();
            if(updated > 0){
              
                response.sendRedirect("manage_patient.jsp?id=" + id + "&msg=Patient+Updated+Successfully");
                return;
            } else {
                response.sendRedirect("manage_patient.jsp?id=" + id + "&msg=Update+Failed");
                return;
            }
        }

        // existing data fetch karo
        String selectQuery = "SELECT * FROM reg1 WHERE id=?";
        ps = con.prepareStatement(selectQuery);
        ps.setInt(1, Integer.parseInt(id));
        rs = ps.executeQuery();

        if(rs.next()){
            first_name = rs.getString("first_name");
            last_name  = rs.getString("last_name");
            dob        = rs.getString("dob");
            email      = rs.getString("email");
            country    = rs.getString("country");
            number     = rs.getString("number");
        }

    } catch(Exception e) {
        msg = "Error: " + e.getMessage();
    } finally {
        if(rs != null) rs.close();
        if(ps != null) ps.close();
        if(con != null) con.close();
    }
%>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Edit Patient</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
    <style>
        body { background: #f1f7ff; }
        .card-custom {
            background: #fff;
            border-radius: 12px;
            box-shadow: 0px 5px 15px rgba(0,0,0,0.1);
            padding: 25px;
            margin-top: 50px;
        }
        h3 { color: #0077b6; font-weight: 600; }
    </style>
</head>
<body>
<div class="container">
    <div class="card card-custom">
        <h3 class="text-center">Edit Patient</h3>

        <% if(!msg.equals("")) { %>
            <div class="alert <%= msg.contains("Successfully") ? "alert-success" : "alert-danger" %> text-center">
                <%= msg %>
            </div>
        <% } %>

        <form method="post">
            <div class="row mb-3">
                <div class="col">
                    <label class="form-label">First Name</label>
                    <input type="text" name="first_name" value="<%= first_name %>" class="form-control" required>
                </div>
                <div class="col">
                    <label class="form-label">Last Name</label>
                    <input type="text" name="last_name" value="<%= last_name %>" class="form-control" required>
                </div>
            </div>

            <div class="row mb-3">
                <div class="col">
                    <label class="form-label">DOB</label>
                    <input type="date" name="dob" value="<%= dob %>" class="form-control" required>
                </div>
                <div class="col">
                    <label class="form-label">Email</label>
                    <input type="email" name="email" value="<%= email %>" class="form-control" required>
                </div>
            </div>

            <div class="row mb-3">
                <div class="col">
                    <label class="form-label">Country</label>
                    <input type="text" name="country" value="<%= country %>" class="form-control" required>
                </div>
                <div class="col">
                    <label class="form-label">Mobile</label>
                    <input type="text" name="number" value="<%= number %>" class="form-control" required>
                </div>
            </div>

            <div class="text-center">
                <button type="submit" name="update" class="btn btn-success px-4">Update</button>
                <a href="manage_patient.jsp" class="btn btn-secondary px-4">Back</a>
            </div>
        </form>
    </div>
</div>
</body>
</html>
