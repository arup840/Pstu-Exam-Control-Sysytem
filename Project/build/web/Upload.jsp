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
    //String str="CCE112";
    //out.println(str);
    String Attendance[] = request.getParameterValues("id");
    String Mid[] = request.getParameterValues("id1");
     String Assignment[] = request.getParameterValues("id2");

    String Final[] = request.getParameterValues("id3");

    String Result[] = request.getParameterValues("Result");
    try {
        
        Class.forName("com.mysql.jdbc.Driver");
        Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/janu_jun_2014", "root", "");
        PreparedStatement ps=con.prepareStatement(" select ID,Registration from cse_enrollment1 WHERE "+str+"='1'");
        ResultSet rs = ps.executeQuery();
        
       
       int i=0;
             
        while (rs.next()) {
            

          String ID = rs.getString("ID");
          
          String Registration = rs.getString("Registration");
   
    
          Connection con1 = DriverManager.getConnection("jdbc:mysql://localhost:3306/session2013-14", "root", "");
         
       // String query = "insert into CCE112(ID,Registration,Attendance,Mid,Assignment,Final,Total)values('"+ID+"','"+Registration+"','"+Attendance[i]+"','"+Mid[i]+"','"+Assignment[i]+"','"+Final[i]+"','"+Result[i]+"')";
        //PreparedStatement ps1 = con1.prepareStatement("insert into cce112(ID,Registration,Attendance,Mid,Assignment,Final,Total)values('"+ID+"','"+Registration+"','"+Attendance[i]+"','"+Mid[i]+"','"+Assignment[i]+"','"+Final[i]+"','"+Result[i]+"')");
           
        
            
          String s = "insert into "+str+"(ID,Registration,Attendance,Mid,Assignment,Final,Total)values(?,?,?,?,?,?,?)";
       //out.println(ID);
       // out.println(Registration);
        // out.println(Attendance[i]);
         // out.println(Mid[i]);
           //out.println(Assignment[i]);
           // out.println(Final[i]);
             //out.println(Result[i]);
            
            PreparedStatement ps1 = con1.prepareStatement(s);
          ps1.setString(1, ID);
          ps1.setString(2, Registration);
          ps1.setString(3, Attendance[i]);
          ps1.setString(4, Mid[i]);
          ps1.setString(5, Assignment[i]);
          ps1.setString(6, Final[i]);
           ps1.setString(7, Result[i]);
         
           
        
    
     
        ps1.executeUpdate();
    
           //out.println(s);
        i++;
       }
        RequestDispatcher rd=request.getRequestDispatcher("SelectResult.jsp");
            rd.forward(request, response);
         //out.println("inserted succesfully...");
    } catch (Exception e) {
      System.out.println("Error is"+e.getMessage());
    }

    

%>

   
    </body>
</html>