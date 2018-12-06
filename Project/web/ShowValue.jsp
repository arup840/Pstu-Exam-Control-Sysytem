<%-- 
    Document   : newjsp
    Created on : 17-Sep-2017, 15:06:59
    Author     : Hossen
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="com.mysql.jdbc.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="com.mysql.jdbc.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            try {
                Class.forName("com.mysql.jdbc.Driver");
                Connection con = (Connection) DriverManager.getConnection("jdbc:mysql://localhost:3306/practice", "root", "");
                Statement st = (Statement) con.createStatement();
                ResultSet rs = st.executeQuery(" select * from insert1");
                while (rs.next()) {
        %>
        <table border="2">
            <tr>
                <td>
                    <%
                        String n = rs.getString("Name");
                        out.println(n);
                    %>
                </td>
                <td>
                    <%
                        String fn = rs.getString("Fathers_Name");
                        out.println(fn);
                    %>
                </td>
            </tr>
        </table>
        <%
                }
            } catch (Exception e) {
                e.printStackTrace();
            }
        %>

    </body>
</html>