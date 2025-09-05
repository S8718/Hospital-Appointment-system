<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <title>Contact Messages</title>
        <!-- Bootstrap CSS -->
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
        <style>
            body {
                background: #f4f9ff;
                font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            }
            .card-custom {
                margin-top: 100px;
                background: #ffffff;
                border-radius: 15px;
                box-shadow: 0 4px 15px rgba(0,0,0,0.1);
                padding: 20px;
            }
            h3 {
                color: #0077b6;
                font-weight: 600;
                margin-bottom: 20px;
            }
            table {
                border-radius: 10px;
                overflow: hidden;
            }
            thead {
                background: linear-gradient(45deg, #0077b6, #00b4d8);
                color: white;
            }
            tbody tr:hover {
                background-color: #e3f2fd;
                transform: scale(1.01);
                transition: all 0.2s ease-in-out;
            }
            .table thead th {
                background-color: #000000 !important; /* ? black bg */
                color: #ffffff !important;            /* ? white text */
            }
            td, th {
                vertical-align: middle;
                text-align: center;
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
                String query = "SELECT * FROM contact ORDER BY created_at DESC";
                rs = stmt.executeQuery(query);
        %>

        <div class="container mt-5">
            <div class="card card-custom">
                <h3 class="text-center">Contact Messages</h3>
                <div class="table-responsive">
                    <table class="table table-hover table-bordered align-middle">
                        <thead>
                            <tr>
                                <th>ID</th>
                                <th>First Name</th>
                                <th>Last Name</th>
                                <th>Mobile</th>
                                <th>Country</th>
                                <th>Subject</th>
                                <th>Created At</th>
                            </tr>
                        </thead>
                        <tbody>
                            <%
                                while (rs.next()) {
                            %>
                            <tr>
                                <td><%= rs.getInt("id")%></td>
                                <td><%= rs.getString("firstname")%></td>
                                <td><%= rs.getString("lastname")%></td>
                                <td><%= rs.getString("mobile")%></td>
                                <td><%= rs.getString("country")%></td>
                                <td><%= rs.getString("subject")%></td>
                                <td><%= rs.getTimestamp("created_at")%></td>
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
