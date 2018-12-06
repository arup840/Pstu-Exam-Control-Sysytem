<%@page import="java.sql.Connection"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="com.mysql.jdbc.Statement"%>
<%@page import="java.sql.DriverManager"%>
<html>
    <head>
        <title>Mark Upload</title>
        
     
    </head>
    <body>
        
        
        <%
   String str=request.getParameter("Code");
   String id=request.getParameter("Roll");
    //String str="CCE112";
    //out.println(str);
    // out.println(id);
    
    String Attendance = request.getParameter("id");
    String Mid = request.getParameter("id1");
     String Assignment = request.getParameter("id2");

    String Final = request.getParameter("id3");

    String Result = request.getParameter("Result");
    
    try {
        
        Class.forName("com.mysql.jdbc.Driver");
   
    
          Connection con1 = DriverManager.getConnection("jdbc:mysql://localhost:3306/session2013-14", "root", "");
           
          String s = "UPDATE    "+str+" SET Attendance=?,Mid=?,Assignment=?,Final=?,Total=? WHERE ID ="+id+"";
      
            
            PreparedStatement ps1 = con1.prepareStatement(s);
         
          ps1.setString(1, Attendance);
          ps1.setString(2, Mid);
          ps1.setString(3, Assignment);
          ps1.setString(4, Final);
           ps1.setString(5, Result);
         
           
        
       // out.println(ID);
     out.println("Update Succesfully Done");
        ps1.executeUpdate();
    
         //  out.println(s);
       
       }
    catch (Exception e) {
      System.out.println("Error is"+e.getMessage());
    }

    

%>

   
    </body>
</html>