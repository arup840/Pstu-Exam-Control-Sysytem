

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
                    <table  align="center" bgcolor="#E3F2E1" width="1300" cellspacing="30" >
                        <tr>
                            <th> Serial No</th><th>Registration</th><th> Attendance</th><th> +</th><th>Mid</th><th> +</th><th> Assignment</th><th> +</th><th> Final</th><th>=</th><th> Total</th>
                        </tr>
                        <tr>
                            <%
                                String str = request.getParameter("Code");
                                //out.println(str);
                                String Attendance[] = request.getParameterValues("id");
                                String Mid[] = request.getParameterValues("id1");

                                String Assignment[] = request.getParameterValues("id2");

                                String Final[] = request.getParameterValues("id3");

                                try {
                                    Class.forName("com.mysql.jdbc.Driver");
                                    Connection con = (Connection) DriverManager.getConnection("jdbc:mysql://localhost:3306/janu_jun_2014", "root", "");
                                    Statement st = (Statement) con.createStatement();
                                    ResultSet rs = st.executeQuery(" select ID,REgistration from cse_enrollment1 WHERE " + str + "='1'");
                                    int j = 1;
                                    for (int i = 0; i < Attendance.length; i++) {
                                        while (rs.next()) {

                                            String ID = rs.getString("ID");


                            %>
                        <form action="Upload.jsp" method="post">

                            <td align="center">
                                <%                                  if (i < Attendance.length) {
                                        out.println(j);
                                        j++;
                                %>

                            </td>
                            <td align="center"> <% out.print(ID);%> </td>

                            <td><input type="text" name="id" value="<%out.print(Integer.parseInt(Attendance[i]));%>"></td>
                            <td> + </td>
                            <td><input type="text" name="id1" value="<%out.print(Integer.parseInt(Mid[i]));%>"></td>
                            <td> + </td>
                            <td><input type="text" name="id2" value="<%out.print(Integer.parseInt(Assignment[i]));%>"></td>
                            <td> + </td>
                            <td><input type="text" name="id3" value="<%out.print(Integer.parseInt(Final[i]));%>"></td>
                            <td> = </td>
                            <td><input type="text" name="Result" value="<%out.print(Integer.parseInt(Mid[i]) + Integer.parseInt(Attendance[i]) + Integer.parseInt(Assignment[i]) + Integer.parseInt(Final[i]));%>"></td> 
                            </tr>



                            <%
                                        }
                                        i++;
                                    }
                                }

                            %><tr>
                                <td >
                                    <input type="submit" value="Submit" name="submit">
                                </td>
                            </tr>
                            <input type="hidden"  name="Code"  value="<%out.print(str);%>">
                        </form> 
                        <%

                            } catch (Exception e) {
                                e.printStackTrace();
                            }
                        %>
                    </table>

                </td>
            </tr>
        </table>
</html>