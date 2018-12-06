<%-- 
    Document   : Table
    Created on : Oct 7, 2017, 11:33:57 PM
    Author     : Hossen
--%>

<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

</body>
<form method="post">

<table border="2">
<tr>
<td>ID</td>
<td>NAME</td>
<td>SKILL</td>
<td>ACTION</td>
</tr>
<%
try
{
Class.forName("com.mysql.jdbc.Driver");
String url="jdbc:mysql://localhost/test";
String username="root";
String password="root";
String query="select * from jsp1";
Connection conn=DriverManager.getConnection(url,username,password);
Statement stmt=conn.createStatement();
ResultSet rs=stmt.executeQuery(query);
while(rs.next())
{

%>
    <tr><td><%rs.getInt("ID"); %></td></tr>
    <tr><td><%rs.getString("NAME"); %></td></tr>
    <tr><td><%rs.getString("SKILL"); %></td></tr>
        <%

}
%>
    </table>
    <%
    rs.close();
    stmt.close();
    conn.close();
    }
catch(Exception e)
{
    e.printStackTrace();
    }




%>

</form>
</html> 
