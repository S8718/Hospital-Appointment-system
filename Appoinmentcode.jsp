
<%@page import="java.sql.*"%>
<%
    String patientName = request.getParameter("patient_name");
    String patientEmail = request.getParameter("email");
    String doctorName = request.getParameter("doctor_name").trim();  // ? important
    String speciality = request.getParameter("specialities");
    String hospital = request.getParameter("hospital");
    String location = request.getParameter("location");
    String symptoms = request.getParameter("symptoms");
    String date = request.getParameter("date");
    String time = request.getParameter("time");

    int doctorId = 0;

    try {
        Class.forName("com.mysql.jdbc.Driver");
        Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/hospital", "root", "");

        // ? doctor_id fetch with space-insensitive match
        PreparedStatement ps = con.prepareStatement(
                "SELECT id FROM doctors WHERE REPLACE(doctor_name, ' ', '') = REPLACE(?, ' ', '')"
        );
        ps.setString(1, doctorName);
        ResultSet rs = ps.executeQuery();
        if (rs.next()) {
            doctorId = rs.getInt("id");
        }

        // ? insert appointment
        PreparedStatement insert = con.prepareStatement(
                "INSERT INTO appointments (patient_name, email, doctor_id, doctor_name, specialities, hospital, location, symptoms, date, time) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?,?)"
        );
        insert.setString(1, patientName);
        insert.setString(2, patientEmail);
        insert.setInt(3, doctorId);
        insert.setString(4, doctorName);
        insert.setString(5, speciality);
        insert.setString(6, hospital);
        insert.setString(7, location);
        insert.setString(8, symptoms);
        insert.setString(9, date);
        insert.setString(10, time);

        int result = insert.executeUpdate();
        if (result > 0) {
            out.println("<script>alert('Appointment booked successfully!');window.location='Appoinment.jsp';</script>");
        } else {
            out.println("<script>alert('Booking failed.');window.location='Appoinment.jsp';</script>");
        }

        con.close();
    } catch (Exception e) {
        out.println("Error: " + e);
    }
%>
