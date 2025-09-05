<%@ page import="java.sql.*" %>
<%@ page session="true" %>
<%
    // Session check
    if (session.getAttribute("doctor_id") == null) {
        response.sendRedirect("doctor_login.jsp");
        return;
    }

    int doctorId = (Integer) session.getAttribute("doctor_id");
    String doctorName = (String) session.getAttribute("doctor_name");
%>

<!DOCTYPE html>
<html>
    <head>
        <title>Doctor Dashboard</title>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
        <style>
            body {
                background-color: #eef2f7;
                font-family: 'Segoe UI', sans-serif;
            }
            .dashboard-container {
                max-width: 1100px;
                margin: 40px auto;
                background: #fff;
                padding: 30px;
                border-radius: 12px;
                box-shadow: 0 4px 12px rgba(0,0,0,0.1);
            }
            h2 {
                color: #007bff;
                text-align: center;
                margin-bottom: 30px;
            }
            .badge-approved {
                background-color: #28a745;
                color: white;
                padding: 5px 12px;
                border-radius: 12px;
            }
            .btn-action {
                margin-right: 5px;
            }
            .btn{
                align-items: center;
                margin-right: 20px;
                margin-top: 20px;
            }
        </style>
    </head>
    <body>
        <div class="d-flex justify-content-end mb-3">
            <a href="index.jsp" class="btn btn-outline-danger">Logout</a>
        </div>

        <div class="dashboard-container">
            <h2>Welcome <span><%= doctorName%></span>&#x2624</h2>

            <table class="table table-bordered table-hover">
                <thead class="thead-dark">
                    <tr>
                        <th>Patient Name</th>
                        <th>Date</th>
                        <th>Time</th>
                        <th>Symptoms</th>
                        <th>Location</th>
                        <th>Hospital</th>
                        <th>Specialities</th>
                        <th>Action</th>
                    </tr>
                </thead>
                <tbody>
                    <%
                        try {
                            Class.forName("com.mysql.jdbc.Driver");
                            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/hospital", "root", "");
                            PreparedStatement ps = con.prepareStatement("SELECT * FROM appointments WHERE doctor_id = ?");
                            ps.setInt(1, doctorId);
                            ResultSet rs = ps.executeQuery();

                            boolean found = false;
                            while (rs.next()) {
                                found = true;
                    %>
                    <tr>
                        <td><%= rs.getString("patient_name")%></td>
                        <td><%= rs.getString("date")%></td>
                        <td><%= rs.getString("time")%></td>
                        <td><%= rs.getString("symptoms")%></td>
                        <td><%= rs.getString("location")%></td>
                        <td><%= rs.getString("hospital")%></td>
                        <td><%= rs.getString("specialities")%></td>
                        <td>
                            <%

                                String status = rs.getString("status");
                                if (status == null || (!status.equalsIgnoreCase("Approved") && !status.equalsIgnoreCase("Cancelled"))) {
                            %>
                            <a href="doctor_update_appointment.jsp?id=<%= rs.getInt("id")%>&status=Approved" class="btn btn-success btn-sm btn-action">Approve</a>
                            <a href="doctor_update_appointment.jsp?id=<%= rs.getInt("id")%>&status=Cancelled" class="btn btn-danger btn-sm btn-action">Cancel</a>
                            <%
                            } else if (status.equalsIgnoreCase("Approved")) {
                            %>
                            <span class="badge badge-success">Approved</span>
                            <%
                            } else if (status.equalsIgnoreCase("Cancelled")) {
                            %>
                            <span class="badge badge-danger">Cancelled</span>
                            <%
                                }
                            %>

                        </td>
                    </tr>
                    <%
                        }

                        if (!found) {
                    %>
                    <tr>
                        <td colspan="8" class="text-center text-muted">? No appointments found for you.</td>
                    </tr>
                    <%
                        }

                        con.close();
                    } catch (Exception e) {
                    %>
                    <tr>
                        <td colspan="8" class="text-danger text-center">Error: <%= e.getMessage()%></td>
                    </tr>
                    <%
                        }
                    %>
                </tbody>
            </table>
        </div>

    </body>
</html> 