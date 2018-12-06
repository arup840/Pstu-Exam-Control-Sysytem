<%-- 
    Document   : AnotherAdmin
    Created on : Jan 5, 2018, 11:09:35 PM
    Author     : Hossen
--%>
 <%@page import="java.sql.SQLException"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Teacher password</title>
        <script>
            function s(){
                alert("Succesful");
                
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
         <div style="text-align: center;">
        <div style="box-sizing: border-box; display: inline-block; width: auto; max-width: 550px; background-color:#336666; border: 2px solid #0361A8; border-radius: 5px; box-shadow: 0px 0px 8px #0361A8; margin: 50px auto auto;">
            <div style="background: #0361A8; border-radius: 5px 5px 0px 0px; padding: 15px;"><span style="font-family: verdana,arial; color: #D4D4D4; font-size: 1.00em; font-weight:bold;">Fill up all field >>>>>>></span></div>
            <div style="background:  padding: 15px" id="ap_style">
              

               

                    <form method="post" action="" class="login">

                        <table class='center' >
                            <tr><td>Faculty:</td><td><input type="text" name="fName" value=""></td></tr>
                            <tr><td>Course_Code:</td><td><input type="text" name="Course_Code" value=""></td></tr>
                            <tr><td>Password:</td><td><input type="password" name="Pass" value=""></td></tr>
                          
                            <tr><td>&nbsp;</td><td><input type="submit" value="Submit" name="submit"></td></tr>
                            <tr><td colspan=2>&nbsp;</td></tr>

                        </table>
                    </form>
            </div>
        </div>

    </div>
        
       
<%
    String facul=request.getParameter("fName");
    String Course_Code=request.getParameter("Course_Code");
     String Password=request.getParameter("Pass");
       try{
            Class.forName("com.mysql.jdbc.Driver");
        }
        catch(NullPointerException e){
            System.out.println("Connecton Error is:"+e.getMessage());
        }
        try{
        Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/login", "root", "");
        PreparedStatement ps=con.prepareStatement("insert into teacher_login (Faculty,Course_Code,Password) values(?,?,?)");
        ps.setString(1,facul);
         ps.setString(2,Course_Code);
        ps.setString(3,Password);
        
        ps.executeUpdate();
        %>
        <script>
            s();
        </script>
        <%
   con.close();
  }catch(SQLException e){
      System.out.println("Error is:"+e.getMessage());  
    
    }
     
%>

    </body>
</html>
