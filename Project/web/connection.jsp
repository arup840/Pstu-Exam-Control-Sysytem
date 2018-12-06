<%-- 
    Document   : connection
    Created on : 17-Sep-2017, 14:38:43
    Author     : Hossen
--%>

<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%

    String name = request.getParameter("Name");
    String Fathers_Name = request.getParameter("Fathers_Name");
    try {
        Class.forName("com.mysql.jdbc.Driver");
        Connection con = (Connection) DriverManager.getConnection("jdbc:mysql://localhost:3306/practice", "root", "");
        String query = "insert into insert1 (Name,Fathers_Name) values(?,?)";
        PreparedStatement ps = con.prepareStatement(query);
        ps.setString(1, name);
        ps.setString(2, Fathers_Name);
        out.print("Inserted");
        ps.executeUpdate();

    } catch (Exception e) {
        e.printStackTrace();
    }

%>