<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="com.mysql.jdbc.Connection"%>
<%
    String Name = request.getParameter("Name");
    String Registration = request.getParameter("Registration");
    String Roll = request.getParameter("Roll");
    String Faculty = request.getParameter("Faculty");
    String Session = request.getParameter("Session");
    try {
        Class.forName("com.mysql.jdbc.Driver");
        Connection con = (Connection) DriverManager.getConnection("jdbc:mysql://localhost:3306/pstu", "root", "");
        String query = "insert into student1(Name,Registration,Roll,Faculty,Session) values(?,?,?,?,?)";
      // String query = "insert into cse_enroll(ID,Registration,PHY111,PHY112,CHE111,CHE112,MATH111,EEE111,EEE112,CIT111,CIT112,CCE112) values(?,?,?,?,?,?,?,?,?,?,?,?)";

        PreparedStatement ps = con.prepareStatement(query);

        ps.setString(1, Name);

        ps.setString(2, Registration);
        ps.setString(3, Roll);
        ps.setString(4, Faculty);

        ps.setString(5, Session);
        out.print("Inserted");
        ps.executeUpdate();

    } catch (Exception e) {
        e.printStackTrace();
    }

%>
