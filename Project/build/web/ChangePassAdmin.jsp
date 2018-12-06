
<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<html>
    <head>
   
        <script>
            function succesful() {

                alert("Update Done Succesfully");
            }
            function Unsuccesful() {

                alert("Unsuccesfully");
            }


        </script>

    </head>
    <title>
        Change Password
    </title>

  
                
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

                   
 <div style="text-align: center;" >
        <div style="box-sizing: border-box; display: inline-block; width: auto; max-width: 480px; background-color:#336666; border: 2px solid #0361A8; border-radius: 5px; box-shadow: 0px 0px 8px #0361A8; margin: 50px auto auto;">
            <div style="background: #0361A8; border-radius: 5px 5px 0px 0px; padding: 15px;"><span style="font-family: verdana,arial; color: #D4D4D4; font-size: 1.00em; font-weight:bold;">Fill up all field >>>>>>></span></div>
            <div style="background:  padding: 15px" id="ap_style">
                <style type="text/css" scoped>
                    #ap_style td 
                    { 
                        text-align:left; font-family: verdana,arial; color:white; font-size: 1.00em; weight:250px;height:70px;
                    }
                    #ap_style input 
                    {
                        border: 1px solid #CCCCCC; border-radius: 5px; color: #666666; display: inline-block; font-size: 1.00em;  padding: 5px; width: 100%; 
                    }
                    #ap_style input[type="button"], #ap_style input[type="reset"], #ap_style input[type="submit"]
                    {
                        height: auto; width: auto; cursor: pointer; box-shadow: 0px 0px 5px #0361A8; float: right; text-align:right; margin-top: 10px; margin-left:7px;
                    }
                    #ap_style table.center
                    { 
                        margin-left:auto; margin-right:auto; 
                    }
                    #ap_style .error 
                    {
                        font-family: verdana,arial; color: #D41313; font-size: 1.00em;
                    }
                         



                </style><form method="post" action="" class="login">

                        <table class='center' >
                            <tr><td>User Name:</td><td><input type="text" name="UserName" value=""></td></tr>
                            <tr><td>Old Password:</td><td><input type="password" name="oldPass" value=""></td></tr>
                            <tr><td>New Password:</td><td><input type="password" name="newPass" value=""></td></tr>

                            <tr><td>&nbsp;</td><td><input type="submit" value="Submit" name="submit"></td></tr>
                            <tr><td colspan=2>&nbsp;</td></tr>

                        </table>
                    </form>
            </div>
        </div>

    </div>

    <%

          String oldPass=request.getParameter("oldPass");
            String NewPass=request.getParameter("newPass");
           String User_Name=request.getParameter("UserName");
        
        try{
            Class.forName("com.mysql.jdbc.Driver");
        }
        catch(NullPointerException e){
            System.out.println("Connecton Error is:"+e.getMessage());
        }
        try{
        Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/login", "root", "");
        PreparedStatement ps=con.prepareStatement("select UserName,Password from admin_login WHERE Password="+oldPass+"");
        ResultSet rs=ps.executeQuery();
        while(rs.next()){
            String user_Name=rs.getString("UserName");
       
            String Password=rs.getString("Password");
        
            if(user_Name.equals(User_Name) &&  Password.equals(oldPass)){
                PreparedStatement ps1=con.prepareStatement("UPDATE admin_login SET Password=? WHERE Password=?  and UserName=?");
                ps1.setString(1, NewPass);
                ps1.setString(2, oldPass);
                 ps1.setString(3, User_Name);
           
                // out.println(" Updated Succesfully");
    %>
    <script>
        succesful();

    </script>

    <%
            ps1.executeUpdate();
        
        }
      
    }
 
    con.close();
  }catch(SQLException e){
      System.out.println("Error is:"+e.getMessage());  
    
    }
    %>
</body>

</html>