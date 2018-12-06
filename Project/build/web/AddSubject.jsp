<%-- 
    Document   : AddSubject
    Created on : Jan 16, 2018, 3:33:25 PM
    Author     : Hossen
--%>

<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Add Course</title>
    </head>
    <body>
        <%
            // Add TAble..............................................................
            String Course_Code = request.getParameter("Course_Code");
            String Faculty = request.getParameter("currencies");
            String Course_Title = request.getParameter("Course_Title");
            String Credit_Hours = request.getParameter("Credit_Hours");
            //String Subject="A";
            out.println(Faculty);
            try {
                Class.forName("com.mysql.jdbc.Driver");
                Connection connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/session2013-14", "root", "");

                PreparedStatement ps = connection.prepareStatement("CREATE TABLE " + Course_Code + " (ID  varchar(25) Primary Key , Registration varchar(25),Attendance varchar(20),Mid varchar(20),Assignment varchar(20),Final varchar(20),Total varchar(20));");

                ps.executeUpdate();

//out.println("Table student create sucessfully.");
                connection.close();
            } catch (Exception e) {
                out.println(e.getMessage());
            }

            //add COLUMN............................................................
            try {
                Class.forName("com.mysql.jdbc.Driver");
                Connection connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/janu_jun_2014", "root", "");
                PreparedStatement ps1 = connection.prepareStatement("ALTER TABLE cse_enrollment1 ADD " + Course_Code + " VARCHAR(20) NULL");
                out.println("Course Added Succesfully..........");
                ps1.executeUpdate();
                connection.close();
            } catch (Exception e) {
                out.println(e.getMessage());
            }
            //Add Subject...............
            try{
            Class.forName("com.mysql.jdbc.Driver");
                Connection connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/pstu", "root", "");
                PreparedStatement ps1 = connection.prepareStatement("insert into courses1(Faculty,Course_Code,Course_Title,Credit_Hours) values(?,?,?,?)");
                ps1.setString(1, Faculty);
                 ps1.setString(2, Course_Code);
                  ps1.setString(3, Course_Title);
                   ps1.setString(4, Credit_Hours);
                out.println("Course Added Succesfully..........");
                ps1.executeUpdate();
                connection.close();
            } catch (Exception e) {
                out.println(e.getMessage());
            }
        %>
    </body>
</html>
