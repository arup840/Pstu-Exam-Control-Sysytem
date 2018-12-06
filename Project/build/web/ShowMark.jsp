<%-- 
    Document   : ShowMark
    Created on : Dec 14, 2017, 9:59:27 PM
    Author     : Hossen
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.SQLException"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
         String Code=request.getParameter("Code");
        %>
       
        <table align="center" >
            <tr>
                 <td>
                    <img src="logo1.jpg" width="1300" height="120">
                </td>
            </tr>
            <tr>
                <td align="center"><h3><p>Mark Of &nbsp<% out.println(Code);%></p></h3></td>
            </tr>
            <tr>
                <td>
            <table border="1" width="1200" align="center" cellspacing="0" cellpadding="10" >
                <tr>
                    <th>ID</th>
                     <th>Registration</th>
                      <th>Attendance</th>
                       <th>Mid</th>
                        <th>Assignment</th>
                         <th>Final</th>
                          <th>Total</th>
                </tr>
                <tr>
                    
                         <%
                            
                            
       
       try{
	Class.forName("com.mysql.jdbc.Driver");
	Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/session2013-14","root","");
	PreparedStatement ps=con.prepareStatement("select * from "+Code+"");
	ResultSet rs=ps.executeQuery();
	while(rs.next()){
		String ID=rs.getString("ID");
		String Registration=rs.getString("Registration");
                String Attendance=rs.getString("Attendance");
                String Mid=rs.getString("Mid");
                String Assignment=rs.getString("Assignment");
                String Final=rs.getString("Final");
                String Total=rs.getString("Total");
                %>
                <td align="center"> <% out.print(ID);%> </td>
                    
                    <td align="center"><% out.print(Registration);%></td>
                    <td align="center"><% out.print(Attendance);%></td>
                    <td align="center"><% out.print(Mid);%></td>
                    <td align="center"><% out.print(Assignment);%></td>
                    <td align="center"><% out.print(Final);%></td>
                    <td align="center"><% out.print(Total);%></td>
                      </tr>
                    
                    <%
	}
	con.close();
}
catch(ClassNotFoundException e){
	System.out.println(e.getMessage());

}
        %>
                     
                   
              
            </table>
                </td>
            </tr>
        </table>
    </body>
</html>
