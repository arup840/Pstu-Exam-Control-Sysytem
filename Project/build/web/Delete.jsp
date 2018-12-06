<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%
    String value = request.getParameter("Name");

    try {

        Class.forName("com.mysql.jdbc.Driver");
        Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/practice", "root", "");
        PreparedStatement pst = conn.prepareStatement("delete from insert1 where Name = ?");
        pst.setString(1, value);
        pst.executeUpdate();
        out.print("Deleted");
        pst.close();
        conn.close();
    } catch (Exception e) {
        e.printStackTrace();
    }
%>