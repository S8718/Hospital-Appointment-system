<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <title>Manage Patients</title>
        <!-- Bootstrap CSS -->
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
        <style>
    body {
        background: #f8fbff;
        font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
    }
    .card-custom {
        background: #ffffff;
        border-radius: 15px;
        box-shadow: 0 4px 15px rgba(0,0,0,0.1);
        padding: 20px;
    }
    h3 {
        color: #0077b6;
        font-weight: 600;
    }
    table {
        border-radius: 10px;
        overflow: hidden;
    }
    .table thead th {
        background-color: #000000 !important; /* ? black bg */
        color: #ffffff !important;            /* ? white text */
    }
    tbody tr:hover {
        background-color: #e3f2fd;
        transform: scale(1.01);
        transition: all 0.2s ease-in-out;
    }
    td, th {
        text-align: center;
        vertical-align: middle;
    }
    .btn-action {
        margin: 0 3px;
    }
    .back-btn {
        margin: 20px 0;
        text-align: center;
    }
    .back-btn a {
        text-decoration: none;
        background: red;
        color: white;
        padding: 10px 20px;
        border-radius: 5px;
    }
    .back-btn a:hover{
        background-color: green;
    }
</style>
    </head>
    <body>

        <%
            Connection con = null;
            Statement stmt = null;
            ResultSet rs = null;

            String url = "jdbc:mysql://localhost:3306/hospital";
            String user = "root";
            String pass = "";

            try {
                Class.forName("com.mysql.cj.jdbc.Driver");
                con = DriverManager.getConnection(url, user, pass);
                stmt = con.createStatement();
                String query = "SELECT * FROM reg1 WHERE role='patient' ORDER BY id DESC";
                rs = stmt.executeQuery(query);
        %>

        <div class="container mt-5">
            <div class="card card-custom">
                <h3 class="text-center mb-4">?Manage Patients</h3>
                <div class="table-responsive">
                    <table class="table table-hover table-bordered align-middle">
                        <thead>
                            <tr>
                                <th>ID</th>
                                <th>First Name</th>
                                <th>Last Name</th>
                                <th>DOB</th>
                                <th>Email</th>
                                <th>Country</th>
                                <th>Mobile</th>
                                <th>Actions</th>
                            </tr>
                        </thead>
                        <tbody>
                            <%
                                while (rs.next()) {
                            %>
                            <tr>
                                <td><%= rs.getInt("id")%></td>
                                <td><%= rs.getString("first_name")%></td>
                                <td><%= rs.getString("last_name")%></td>
                                <td><%= rs.getString("dob")%></td>
                                <td><%= rs.getString("email")%></td>
                                <td><%= rs.getString("country")%></td>
                                <td><%= rs.getString("number")%></td>
                                <td>
                                    <a href="Edit_patient.jsp?id=<%= rs.getInt("id")%>" class="btn btn-sm btn-primary btn-action">Edit</a>
                                    <a href="Delete_patient.jsp?id=<%= rs.getInt("id")%>" class="btn btn-sm btn-danger btn-action" onclick="return confirm('Are you sure to delete this patient?');">Delete</a>
                                </td>
                            </tr>
                            <%
                                }
                            %>
                        </tbody>
                    </table>
                </div>
            </div>
        </div>

        <%
            } catch (Exception e) {
                out.println("<div class='alert alert-danger text-center mt-3'>?? Error: " + e.getMessage() + "</div>");
            } finally {
                if (rs != null) {
                    rs.close();
                }
                if (stmt != null) {
                    stmt.close();
                }
                if (con != null) {
                    con.close();
                }
            }
        %>

        <div class="back-btn">
            <a href="admin.jsp">Back to Dashboard</a>
        </div>
    </body>
</html>
