<%-- 
    Document   : AddFaculty
    Created on : Jan 16, 2018, 9:29:32 AM
    Author     : Hossen
--%>

<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            String Faculty=request.getParameter("fname");
        try {
Class.forName("com.mysql.jdbc.Driver");
Connection connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/janu_jun_2014", "root", "");
PreparedStatement ps = connection.prepareStatement("CREATE TABLE "+Faculty+" (ID  varchar(25) Primary Key , Registration varchar(25));");
ps.executeUpdate();
connection.close();
//out.println("Table student create sucessfully.");
}
catch (Exception e)
{
out.println(e.getMessage());
}
        
        
       
        try {

Connection connection1 = DriverManager.getConnection("jdbc:mysql://localhost:3306/pstu", "root", "");
PreparedStatement ps2 = connection1.prepareStatement("CREATE TABLE "+Faculty+"Credit (ID  varchar(25) Primary Key , S1 varchar(25) NULL,S2 varchar(25) NULL,S3 varchar(25) NULL,S4 varchar(25) NULL,S5 varchar(25) NULL,S6 varchar(25) NULL,S7 varchar(25)NULL,S8 varchar(25) NULL);");
PreparedStatement ps3 = connection1.prepareStatement("CREATE TABLE "+Faculty+"StudentInto (Name varchar(20),Registration varchar(20), Roll  varchar(25),Faculty varchar(25),Session varchar(25),1st_Semester varchar(25) ,2nd_Semester varchar(25) NULL,3rd_Semester varchar(25) NULL,4th_Semester varchar(25) NULL,5th_Semester varchar(25) NULL,6th_Semester varchar(25) NULL,7th_Semester varchar(25) NULL,8th_Semester varchar(25) NULL,S1 varchar(25) NULL,S2 varchar(25) NULL,S3 varchar(25) NULL,S4 varchar(25) NULL,S5 varchar(25) NULL,S6 varchar(25) NULL,S7 varchar(25)NULL,S8 varchar(25) NULL);");
ps2.executeUpdate();
ps3.executeUpdate();
connection1.close();
out.println("Faculty Added sucessfully.");
}
catch (Exception e)
{
out.println(e.getMessage());
}
        
        %>
    </body>
</html>
