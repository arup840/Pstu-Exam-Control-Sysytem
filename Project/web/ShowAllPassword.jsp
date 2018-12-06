<%-- 
    Document   : ShowAllPassword
    Created on : Jan 5, 2018, 10:44:01 PM
    Author     : Hossen
--%>

<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>All Password</title>
        <script>
            table{
                
               cellSpacing=2px; 
            }
        </script>
    </head>
    
    <link href="Home.css" rel="stylesheet">
    <body>
<ul>
 <li style="float:right"><a  href="index.html">LogOut</a></li>
  <li style="float:right"><a   href="Administrator.html">Administrator</a></li>
  <li style="float:right"><a class="active" href="Security.jsp">Security</a></li>
  <li style="float:right"><a href="">Faculty Management</a>
   <ul>
      <li><a href="AddFaculty.html">Add Faculty</a></li>
      <li><a href="AddSubject.html">Add Subject</a></li>
      <li><a href="Registration.html">Registration </a></li>
    </ul>
  </li>
  <li style="float:right"><a  href="Enrollment.html">Enrollment</a></li>
  <li style="float:right"><a  class="" href="home.html">Home</a></li>
</ul>
<br>
<br>

<br>
        <table style=" background-color:white;" cellpadding="8" border="1" style="border-collapse:collapse" align="center"  >
            <tr>
              <th>Faculty</th>
               <th>Course Code</th>
                <th>Password</th>
          </tr>
        <%
          try{
            Class.forName("com.mysql.jdbc.Driver");
        }
        catch(NullPointerException e){
            System.out.println("Connecton Error is:"+e.getMessage());
        }
        try{
        Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/login", "root", "");
        PreparedStatement ps=con.prepareStatement("select * from teacher_login");
        ResultSet rs=ps.executeQuery();
        while(rs.next()){
        String Faculty=rs.getString("Faculty");
         String Course_Code=rs.getString("Course_Code");
          String Pass=rs.getString("Password");
          %>
          <tr>
              <td><% out.println(Faculty); %></td>
               <td><% out.println(Course_Code); %></td>
                <td><% out.println(Pass); %></td>
          </tr>
            
            <%
        }

        ps.executeUpdate();
   con.close();
  }catch(SQLException e){
      System.out.println("Error is:"+e.getMessage());  
    
    }
        
        
        %>
        </table>
    </body>
</html>
