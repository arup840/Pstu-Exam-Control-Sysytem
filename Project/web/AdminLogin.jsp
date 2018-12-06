<%@page import="com.mysql.jdbc.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="com.mysql.jdbc.Connection"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="com.mysql.jdbc.PreparedStatement"%>
<%
          String name = request.getParameter("Username");
          String pass = request.getParameter("Password");
  
     
        try {
 
            Class.forName("com.mysql.jdbc.Driver");
               Connection con = (Connection) DriverManager.getConnection("jdbc:mysql://localhost:3306/login", "root", "");
                Statement st = (Statement) con.createStatement();
   
            ResultSet rs = st.executeQuery( "select * from admin_login where UserName = '" + name + "'and Password =  '"+pass+" ' ");

            String d_UserName = null;
            String d_pass = null;
          
            while (rs.next()) {
              
                d_UserName= rs.getString("UserName");
                d_pass = rs.getString("Password");
              

          
            

            if (d_UserName.equals(name) && d_pass.equals(pass) ) {
                //RequestDispatcher rd = request.getRequestDispatcher("/SelectResult.html");
                //rd.forward(request, response);
              response.sendRedirect("home.html");
  
            } 
            }
               response.sendRedirect("Adminlogin.html");
        }
            

            
         catch (Exception e) {
            e.printStackTrace();
        }

    
%>
