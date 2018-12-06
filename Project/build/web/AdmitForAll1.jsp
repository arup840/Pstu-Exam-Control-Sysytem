<%-- 
    Document   : Admit_Card
    Created on : Jan 7, 2018, 6:30:01 PM
    Author     : Hossen
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>

        <title>Admit Card</title>
        <script type="text/javascript">

            function pt(divName) {
                var restorepase = document.body.innerHTML;
                var printcontent = document.getElementById(divName).innerHTML;
                document.body.innerHTML = printcontent;
                window.print();
                document.body.innerHTML = restorepase;

            }</script>
        <style media="print">
            @page {
                size: auto;
                margin: 0;
            }
        </style>
    </head>
    <body >
        <p align="right"><button onclick="pt('admitCard')">Print Admit Card</button></p>
        <%

            String Faculty = request.getParameter("Faculty");
            String semester = request.getParameter("Semester");
            String Session1 = request.getParameter("Session");
            //out.println(Faculty+""+Session1+""+Semester);
            try {
                       //String roll = request.getParameter("id");
                //String roll = "1202002";
                Class.forName("com.mysql.jdbc.Driver");
                Connection conn1 = DriverManager.getConnection("jdbc:mysql://localhost:3306/pstu", "root", "");
                PreparedStatement ps7 = conn1.prepareStatement("select Roll from student1 where Faculty='" + Faculty + "'  and Session='" + Session1 + "' ");
                ResultSet rs7 = ps7.executeQuery();
                while (rs7.next()) {

                    String roll = rs7.getString("Roll");


        %>

        <div id="admitCard">
            <br> <br> <br>
            <table width="850" border="2" align="center">
                <tr>

                    <td>


                        <table height="150" >
                            <tr>

                                <td width="120">
                                    <img src="logo.jpg" height="120" style="align:top"/>
                                </td>
                                <td width=""><h3 style="text-align:center">Patuakhali Science And Technology University</h3>
                                    <h4 style="text-align:center">Dumki,Patuakhali-8602,Bangladesh</h4>
                                    <h4 style="text-align:center">ADMIT CARD</h4>

                                    <h3 > <p align="center"><% out.println(semester); %> Final Examination of B.Sc.Engg.(CSE) </p>  </h3>  
                                </td>
                                <td width="120">
                                    <p align="center">image</p>
                                </td>


                            </tr>
                        </table>
                        <%
                            try {

                                Class.forName("com.mysql.jdbc.Driver");
                                Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/pstu", "root", "");
                                PreparedStatement ps = conn.prepareStatement("select * from student1 where Roll=" + roll + "");
                                ResultSet rs = ps.executeQuery();
                                while (rs.next()) {
                                    String Name = rs.getString("Name");
                                    String Reg = rs.getString("Registration");
                                    String Roll = rs.getString("Roll");
                                    String Session = rs.getString("Session");
                        %>
                        <br>
                        <br>
                        <table width="100%">
                            <tr>
                                <td> Name: <% out.println(Name); %> </td><td> Registration: <% out.println(Reg); %></td><td>Session: <% out.println(Session); %></td>
                            </tr>
                        </table>
                        Examination Roll No: <% out.println(Roll); %> 
                        <br>

                        <table width="100%">

                            <tr>
                                <td > Date Of Examination:  </td><td style="text-decoration: overline"> Signature of the Student </td><td style="text-decoration: overline">Controller of Examination</td>
                            </tr>
                        </table>


                        <%
                                }
                            } catch (Exception e) {
                                out.println("Error=" + e.getMessage());
            } %>

                        <p style="text-decoration: underline">Instructions For Student:   </p>  
                        <h4>
                            1.No candidate will be allowed to enter the exam hall without admit card.<br>
                            2.Knowing the  exam place and time is the responsibilities of each students.<br>
                            3.Every  Student will have to obey the rules which is written on exam paper.<br>
                            4.No candidate will be allowed to enter the exam hall without admit card.<br>
                            6.Knowing the  exam place and time is the responsibilities of each students.<br>
                            3.Every  Student will have to obey the rules which is written on exam paper.
                        </h4>

                    </td>
                </tr>
            </table>

            <p style="page-break-before: always">
                <%

                        }

                    } catch (Exception e) {
                        out.println("Error is" + e.getMessage());
                    }

                %>   
        </div>
    </body>
</html>
