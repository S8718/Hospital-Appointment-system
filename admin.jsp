<%@ page import="java.sql.*" %>
<%@ page session="true" %>
<%
    int totalDoctors = 0;
    int totalPatients = 0;
    int totalAppointments = 0;
%>

<%
    try {
        Class.forName("com.mysql.jdbc.Driver");
        Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/hospital", "root", "");
        Statement stmt = con.createStatement();

        ResultSet rs1 = stmt.executeQuery("SELECT COUNT(*) FROM reg1");
        if (rs1.next()) {
            totalPatients = rs1.getInt(1);
        }

        ResultSet rs2 = stmt.executeQuery("SELECT COUNT(*) FROM doctors");
        if (rs2.next()) {
            totalDoctors = rs2.getInt(1);
        }

        ResultSet rs3 = stmt.executeQuery("SELECT COUNT(*) FROM appointments");
        if (rs3.next()) {
            totalAppointments = rs3.getInt(1);
        }

        rs1.close();
        rs2.close();
        rs3.close();
        stmt.close();
        con.close();
    } catch (Exception e) {
        out.print("Error: " + e.getMessage());
    }
%>

<!DOCTYPE html>
<html>
    <head>
        <title>Admin Dashboard</title>
        <style>
            body {
                background-color: #f5f5f5;
                font-family: Arial, sans-serif;
            }
            .top-bar {
                display: flex;
                justify-content: space-between;
                align-items: center;
                padding: 15px 30px;
                background-color: #007BFF;
                color: white;
                border-radius: 0 0 8px 8px;
            }
            .top-bar h2 {
                margin: 0;
                font-size: 22px;
            }
            .logout-btn {
                background: red;
                color: white;
                padding: 10px 18px;
                border-radius: 5px;
                text-decoration: none;
                transition: 0.3s;
            }
            .logout-btn:hover {
                background: darkred;
            }

            .dashboard {
                width: 90%;
                margin: auto;
                padding: 20px;
            }
            h1 {
                text-align: center;
                margin-bottom: 30px;
            }
            .cards {
                display: flex;
                justify-content: space-around;
                margin-bottom: 40px;
            }
            .card {
                background:blue;
                color: white;
                padding: 20px;
                border-radius: 10px;
                width: 30%;
                text-align: center;
            }
            .card:hover{
                background-color: red;
            }
            .btns {
                margin-top: 40px;
                text-align: center;
            }
            .btns a {
                text-decoration: none;
                margin: 10px;
                background: #007BFF;
                color: white;
                padding: 12px 20px;
                border-radius: 5px;
                display: inline-block;
                transition: 0.3s;
            }
            .btns a:hover {
                background-color: #0056b3;
            }
        </style>
    </head>
    <body>

        <div class="dashboard">
            <a href="logout.jsp" class="logout-btn">Logout</a>
            <h1>Admin Dashboard</h1>



            <div class="cards">
                <div class="card">
                    <h2><%= totalDoctors%></h2>
                    <p>Total Doctors</p>
                </div>
                <div class="card">
                    <h2><%= totalPatients%></h2>
                    <p>Total Patients</p>
                </div>
                <div class="card">
                    <h2><%= totalAppointments%></h2>
                    <p>Total Appointments</p>
                </div>
            </div>

            <div class="btns">
                <a href="Contact_detail.jsp">Contact List</a>
                <a href="manage_patient.jsp">Manage Patients</a>
                <a href="Manage_doctor.jsp">Manage Doctors</a>
                <a href="All_appointment.jsp">All Appointments</a>
                <a href="Add_doctor.jsp">Add New Doctor</a>
                <a href="index.jsp">Home</a>
            </div>
        </div>

    </body>
</html>
