<%@ page import="java.sql.*" %>
<%@ page session="true" %>
<%
    String patientEmail = (String) session.getAttribute("patient_email");

    if (patientEmail == null) {
        response.sendRedirect("login.jsp?msg=Please login first");
        return;
    }

    Connection con = null;
    PreparedStatement ps = null;
    PreparedStatement ps2 = null;
    ResultSet rs = null;
    ResultSet rs2 = null;

    String fullName = "";
%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <title>My Appointments</title>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    </head>
    <body class="bg-light">
        <div class="container mt-5">
            <div class="card shadow-lg">
                <div class="card-header bg-primary text-white text-center">
                    <h3>My Appointments</h3>
                </div>
                <div class="card-body">
                    <table class="table table-striped table-bordered">
                        <thead class="thead-dark">
                            <tr>
                                <th>Id</th>
                                <th>Doctor_name</th>
                                <th>Symptoms</th>
                                <th>Date</th>
                                <th>Time</th>
                                <th>Hospital</th>
                                <th>Status</th>
                            </tr>
                        </thead>
                        <tbody>
                            <%
                                try {
                                    Class.forName("com.mysql.cj.jdbc.Driver");
                                    con = DriverManager.getConnection(
                                            "jdbc:mysql://localhost:3306/hospital?useSSL=false&serverTimezone=UTC", "root", ""
                                    );

                                    // Step 1: Get patient full name using email
                                    ps = con.prepareStatement("SELECT first_name, last_name FROM reg1 WHERE email = ?");
                                    ps.setString(1, patientEmail);
                                    rs = ps.executeQuery();
                                    if (rs.next()) {
                                        fullName = rs.getString("first_name") + " " + rs.getString("last_name");
                                    }

                                    // Step 2: Get appointments using patient_name
                                    ps2 = con.prepareStatement(
                                            "SELECT id, doctor_name, symptoms, date, time, hospital, status "
                                            + "FROM appointments WHERE patient_name = ?"
                                    );
                                    ps2.setString(1, fullName.trim());
                                    rs2 = ps2.executeQuery();

                                    boolean hasData = false;
                                    while (rs2.next()) {
                                        hasData = true;
                            %>
                            <tr>
                                <td><%= rs2.getInt("id")%></td>
                                <td><%= rs2.getString("doctor_name")%></td>
                                <td><%= rs2.getString("symptoms")%></td>
                                <td><%= rs2.getString("date")%></td>
                                <td><%= rs2.getString("time")%></td>
                                <td><%= rs2.getString("hospital")%></td>
                                <td>
                                    <% String status = rs2.getString("status");
                                if ("Approved".equalsIgnoreCase(status)) { %>
                                    <span class="badge badge-success">Approved</span>
                                    <% } else if ("Pending".equalsIgnoreCase(status)) { %>
                                    <span class="badge badge-warning">Pending</span>
                                    <% } else if ("Cancelled".equalsIgnoreCase(status)) { %>
                                    <span class="badge badge-danger">Cancelled</span>
                                    <% } else {%>
                                    <span class="badge badge-secondary"><%= status%></span>
                                    <% } %>
                                </td>
                            </tr>
                            <%
                                }
                                if (!hasData) {
                            %>
                            <tr>
                                <td colspan="7" class="text-center text-muted">No appointments found</td>
                            </tr>
                            <%
                                    }
                                } catch (Exception e) {
                                    out.println("<tr><td colspan='7' class='text-danger text-center'>Error: " + e.getMessage() + "</td></tr>");
                                } finally {
                                    try {
                                        if (rs != null) {
                                            rs.close();
                                        }
                                    } catch (Exception e) {
                                    }
                                    try {
                                        if (rs2 != null) {
                                            rs2.close();
                                        }
                                    } catch (Exception e) {
                                    }
                                    try {
                                        if (ps != null) {
                                            ps.close();
                                        }
                                    } catch (Exception e) {
                                    }
                                    try {
                                        if (ps2 != null) {
                                            ps2.close();
                                        }
                                    } catch (Exception e) {
                                    }
                                    try {
                                        if (con != null) {
                                            con.close();
                                        }
                                    } catch (Exception e) {
                                    }
                                }
                            %>
                        </tbody>
                    </table>
                </div>
            </div>
        </div>

        <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.2/dist/js/bootstrap.bundle.min.js"></script>
    </body>
</html>
