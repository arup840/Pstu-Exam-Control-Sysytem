<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="com.mysql.jdbc.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%
    String F_name=request.getParameter("fName");
    String CCode=request.getParameter("CourseCode");
    String oldPass=request.getParameter("oldPass");
    String NewPass=request.getParameter("newPass");
            //out.println(F_name);
    try{
        Class.forName("com.mysql.jdbc.Driver");
    }
    catch(NullPointerException e){
        System.out.println("Connecton Error is:"+e.getMessage());
    }
    try{
    Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/login", "root", "");
    PreparedStatement ps=con.prepareStatement("select Faculty,Course_Code,Password from teacher_login WHERE Password="+oldPass+"");
    ResultSet rs=ps.executeQuery();
    while(rs.next()){
        String Faculty_Name=rs.getString(1);
        String Course_Code=rs.getString(2);
        String Password=rs.getString(3);
        
        if(Faculty_Name.equals(F_name) && Course_Code.equals(CCode) && Password.equals(oldPass)){
            PreparedStatement ps1=con.prepareStatement("UPDATE teacher_login SET Password=? WHERE Password=? and Faculty=? and Course_Code=?");
            ps1.setString(1, NewPass);
            ps1.setString(2, oldPass);
             ps1.setString(3, F_name);
             ps1.setString(4, CCode);
             out.println(" Updated Succesfully");
            ps1.executeUpdate();
        
        }    
       
    }
    out.println(" Updated Unsuccesful");
    con.close();
   }catch(SQLException e){
      System.out.println("Error is:"+e.getMessage());  
    
    }
%>
