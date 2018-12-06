
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="com.mysql.jdbc.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="com.mysql.jdbc.Connection"%>
<html>
    <head>
        <title>Mark Upload</title>
        
     
    </head>
    <body>
        <table >
            <tr>
                <td>
                    <img src="logo1.jpg" width="1300" height="120">
        </td>
        </tr>
        <tr>
            <td> 
        <table  align="center" bgcolor="#E3F2E1" width="1300" cellspacing="30">
            <tr>
                <th> Serial No</th><th>ID</th><th> Attendance</th><th> +</th><th>Mid</th><th> +</th><th> Assignment</th><th> +</th><th> Final</th><th>=</th><th> Total</th>
            </tr>
             <tr>
        <%
         String str=request.getParameter("Code");
         String id=request.getParameter("id");
        // out.println(str);
          //out.println(id);
        try{
            //String CourseCode=request.getParameter("");
        Class.forName("com.mysql.jdbc.Driver");
                Connection con = (Connection) DriverManager.getConnection("jdbc:mysql://localhost:3306/session2013-14", "root", "");
                PreparedStatement ps =con.prepareStatement(" select ID,Registration from "+str+" where ID="+id+" ");
               // out.println(ps);
                ResultSet rs = ps.executeQuery();
                int i=1;
                while (rs.next()) {
                    
                     String ID = rs.getString("ID");
                        //out.println(n1);
                         String Registration = rs.getString("Registration");
                   
                  %>
             <form action="UpdateMark1.jsp" method="post"> 
                     
                          <td align="center">
                              <%
                         out.println(i);
                         i++;
                              %>
                              
                          </td>
                          <td align="center"> <% out.print(ID);%> </td>
                          
                          <td> <input type="text" name="id" value=""></td> 
                          <td> + </td>
                          <td align="center"><input type="text" name="id1" value=""> </td>
                          <td>+</td>
                          <td align="center"><input type="text" name="id2" value=""></td>
                           <td>+</td>
                           <td align="center"><input type="text" name="id3" value=""></td>
                          <td> =</td>
                          <td align="center"><input type="text" name="Result" value=""></td> 
                          
                      </tr>  
                  <%
               }
                %>
                <tr>
                    <td align="right">
                <input type="submit" value="Submit" name="submit">
                    </td>
                    </tr>
                <input type="hidden"  name="Code"  value="<%out.print(str);%>">
                 <input type="hidden"  name="Roll"  value="<%out.print(id);%>">
                
                
                  </form>
                
             <%   
        }
       catch (Exception e) {
                e.printStackTrace();
            }
        %>
        </table>
   
        </td>
        </tr>
        </table> 
        
    </body>
</html>
