<%@page import="CGPA.Remarks"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="Mark.GPA"%>
<%@page import="CGPA.CGPA"%>
<%@page import="Mark.GradeCalculation"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Driver"%>
<%@page import="java.util.*"%>

<html>
    <head>
        <script>
            function pt(divName) {
                var restorepase = document.body.innerHTML;
                var printcontent = document.getElementById(divName).innerHTML;
                document.body.innerHTML = printcontent;
                window.print();
                document.body.innerHTML = restorepase;

            }
        </script>
        <style>
            table
            {
                width: 100%;
            }
            td
            {
                text-align:center;
            }
            th
            {
                text-align:left;
            }


        </style>
        <style media="print">
            @page {
                size: auto;
                margin: 0;
            }
        </style>
    </head>

    <body>
        <p align="right"><button onclick="pt('a')">Print</button></p>


        <%

            String Faculty = request.getParameter("Faculty");
            String semester1 = request.getParameter("Semester");
            String Session1 = request.getParameter("Session");
            //out.println(Faculty+""+Session1+""+Semester);
            try {
               //String roll = request.getParameter("id");
                //String roll = "1202002";
                Class.forName("com.mysql.jdbc.Driver");
                Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/pstu", "root", "");
                PreparedStatement ps7 = conn.prepareStatement("select Roll from student1 where Faculty='" + Faculty + "'  and Session='" + Session1 + "' ");
                ResultSet rs7 = ps7.executeQuery();
                while (rs7.next()) {

                    String roll = rs7.getString("Roll");


        %>
        <div id="a">
            <br> <br>
            <table cellspacing="0" cellpadding="0">
                <tr>
                    <td width="338"><table style="border-collapse:collapse" width="338" border="1">
                            <caption>
                                Grading System
                            </caption>
                            <tr>
                                <td width="174">Numerical Grade</td>
                                <td width="49">Letter Grade</td>
                                <td width="33">Grade Point</td>
                            </tr>
                            <tr>
                                <td>80% and Above</td>
                                <td>A+</td>
                                <td>4.00</td>
                            </tr>
                            <tr>
                                <td>75% Less than 80%</td>
                                <td>A</td>
                                <td>3.75</td>
                            </tr>
                            <tr>
                                <td>70% Less than 75%</td>
                                <td>A-</td>
                                <td>3.50</td>
                            </tr>
                            <tr>
                                <td>65% Less than 70%</td>
                                <td>B+</td>
                                <td>3.25</td>
                            </tr>
                            <tr>
                                <td>60% Less than 65%</td>
                                <td>B</td>
                                <td>3.00</td>
                            </tr>
                        </table></td>
                    <td>
                        <img src="logo.jpg" height="120" style="align:top"/>
                    </td>
                    <td width="600"><h2 style="color:blue;text-align:center">Patuakhali Science And Technology University</h2>
                        <h3 style="text-align:center">Dumki,Patuakhali-8602,Bangladesh</h3>
                        <h3 style="color:blue;text-align:center">MARKS CERTIFICATE AND ACADEMIC TRANSCRIPT</h2>
                            <p style="text-align:center">(PROVISION)</p>
                    </td>
                    <td width="300"><table style="border-collapse:collapse" width="300" border="1">
                            <caption>
                                Grading System
                            </caption>
                            <tr>
                                <td width="174">Numerical Grade</td>
                                <td width="49">Letter Grade</td>
                                <td width="33">Grade Point</td>
                            </tr>
                            <tr>
                                <td>55% Less than 60%</td>
                                <td>B-</td>
                                <td>2.75</td>
                            </tr>
                            <tr>
                                <td>50% Less than 55%</td>
                                <td>C+</td>
                                <td>2.50</td>
                            </tr>
                            <tr>
                                <td>45% Less than 50%</td>
                                <td>C</td>
                                <td>2.25</td>
                            </tr>
                            <tr>
                                <td>40% Less than 45%</td>
                                <td>B+</td>
                                <td>2.00</td>
                            </tr>
                            <tr>
                                <td>Less than 40%</td>
                                <td>F</td>
                                <td>0.00</td>
                            </tr>
                        </table></td>
                </tr>
            </table>
            <%            // String Semester = request.getParameter("currencies");
                String sm = null;
                try {
                    if (semester1.equals("1st Semester(Level-1 Semester-I)") || semester1.equals("3rd Semester(Level-2 Semester-I)") || semester1.equals("5th Semester(Level-3 Semester-I)") || semester1.equals("7th Semester(Level-4 Semester-I)")) {
                        sm = "January-June";
                    } else {
                        sm = "July-December";
                    }
                } catch (Exception e) {
                    System.out.println("Error" + e.getMessage());
                }
            %>
            <h3 align="center"><%out.println(semester1);%>Final Examination of B.Sc.Engg.(CSE)<%out.println(sm);%>  </h3>
            <table  style="border-collapse:collapse" cellspacing="0" cellpadding="2" border="1" >
                <tr>
                    <%
                        try {
                            // String roll = request.getParameter("id");
                            //String roll = "1202002";
                            Class.forName("com.mysql.jdbc.Driver");
                            Connection conn1 = DriverManager.getConnection("jdbc:mysql://localhost:3306/pstu", "root", "");
                            PreparedStatement ps = conn1.prepareStatement("select * from student1 where Roll=" + roll + "");
                            ResultSet rs = ps.executeQuery();
                            while (rs.next()) {
                                String Name = rs.getString("Name");
                                String Reg = rs.getString("Registration");
                                String Roll = rs.getString("Roll");
                                String Session = rs.getString("Session");


                    %>
                    <th colspan="4">Name of the Student:<% out.println(Name); %></th>
                    <th colspan="3">Reg. No.<% out.println(Reg); %></th>
                    <th colspan="3">Session:<% out.println(Session); %></th>
                    <th colspan="2">Exam Roll No: <% out.println(Roll); %></th>
                        <%
                                }
                                ps.close();
                                conn1.close();
                            } catch (Exception e) {
                                out.println("Error=" + e.getMessage());
                            } %>
                </tr>
                <tr>
                    <td>SL.No.</td>
                    <td width="120">Course<br> Code</td>
                    <td width="360">Course<br> Title</td>
                    <td>Credit<br> Hours</td>
                    <td width="60">Letter<br> Grade</td>
                    <td width="60">GP</td>
                    <td width="60">GPA</td>
                    <td>Previous<br> CGPA</td>
                    <td>Previous<br> CCH</td>
                    <td>CGPA</td>
                    <td>CCH</td>
                    <td>REMARKS</td>
                </tr>
                <tr>
                    <td>1</td>
                    <td>2</td>
                    <td>3</td>
                    <td>4</td>
                    <td>5</td>
                    <td>6</td>
                    <td>7</td>
                    <td>8</td>
                    <td>9</td>
                    <td>10</td>
                    <td>11</td>
                    <td>12</td>

                </tr>


                <%
                    String semester = "0";
                    String semester2 = "0";
                    //String semester1 = request.getParameter("currencies");
                    //out.println(semester1);
                    if (semester1.equals("1st Semester(Level-1 Semester-I)")) {
                        semester = "1st_Semester";
                    } else if (semester1.equals("2nd Semester(Level-1 Semester-II)")) {
                        semester = "2nd_Semester";
                    } else if (semester1.equals("3rd Semester(Level-2 Semester-I)")) {
                        semester = "3rd_Semester";
                    } else if (semester1.equals("4th Semester(Level-2 Semester-II)")) {

                        semester = "4th_Semester";
                    } else if (semester1.equals("5th Semester(Level-3 Semester-I)")) {
                        semester = "5th_Semester";
                    } else if (semester1.equals("6th Semester(Level-3 Semester-II)")) {
                        semester = "6th_Semester";
                    } else if (semester1.equals("7th Semester(Level-4 Semester-I)")) {
                        semester = "7th_Semester";
                    } else {
                        semester = "8th_Semester";
                    }

                    if (semester1.equals("1st Semester(Level-1 Semester-I)")) {
                        semester2 = "11";
                    } else if (semester1.equals("2nd Semester(Level-1 Semester-II)")) {
                        semester2 = "12";
                    } else if (semester1.equals("3rd Semester(Level-2 Semester-I)")) {
                        semester2 = "21";
                    } else if (semester1.equals("4th Semester(Level-2 Semester-II)")) {

                        semester2 = "22";
                    } else if (semester1.equals("5th Semester(Level-3 Semester-I)")) {
                        semester2 = "31";
                    } else if (semester1.equals("6th Semester(Level-3 Semester-II)")) {
                        semester2 = "32";
                    } else if (semester1.equals("7th Semester(Level-4 Semester-I)")) {
                        semester2 = "41";
                    } else {
                        semester2 = "42";
                    }

                    try {
                        //String roll = request.getParameter("id");
                        // out.println(semester);
                        Class.forName("com.mysql.jdbc.Driver");
                        Connection conn2 = DriverManager.getConnection("jdbc:mysql://localhost:3306/pstu", "root", "");
                        PreparedStatement ps1 = conn2.prepareStatement("SELECT * FROM courses1 WHERE Course_Code LIKE '%" + semester2 + "_'");
                        ResultSet rs1 = ps1.executeQuery();
                        int i = 1, x;
                        ;
                        double tgp1 = 0, TotalFailCredit = 0;

                        if (rs1.last()) {
                            x = rs1.getRow();
                            // out.println(x);
                            rs1.beforeFirst();

                            int j = 0;
                            ArrayList list;
                            while (rs1.next()) {
                                String Course_Code = rs1.getString("Course_Code");

                                String Course_Title = rs1.getString("Course_Title");
                                String Credit = rs1.getString("Credit_Hours");

                %>


                <tr>
                    <td>
                        <%                out.println(i);

                        %>
                    </td>


                    <td><% out.println(Course_Code); %></td>
                    <td><% out.println(Course_Title); %></td>
                    <td><% out.println(Credit); %></td>




                    <td> <%
                        //FOR SHOWING LETTER GRADE
                        GradeCalculation gc = new GradeCalculation();
                        out.println(gc.grade(roll, Course_Code));

                 //String failCourse=Remarks.failSubject(Course_Code,roll);
                        //list=new ArrayList();
                        //  list.add(failCourse);
                        // out.println(list.get(0));

                        %>
                    </td>





                    <td> 

                        <%                        //FOR SHOWING GRADE POINT
                            double gp = gc.point(roll, Course_Code);
                            out.println(gp);

                            GPA g = new GPA();
                            double tgp = g.gpa(Double.parseDouble(Credit), gp);
                            tgp1 = tgp1 + tgp;
                            // out.println(tgp1);

                            double fail = g.failCredit(Double.parseDouble(Credit), gp);
                            TotalFailCredit = TotalFailCredit + fail;

                            if (i == x) {
                                //out.println(TotalFailCredit);

                                double c = Math.abs(gc.total_Credit(semester2) - TotalFailCredit);
                                //out.println("credit"+c);
                                double gpa = (tgp1) / c;
                                // out.println(gpa);
                                //inserting gpa...................................................................................
                                g.mygpa(roll, gpa, semester);
                                g.insertCompleteCredit(roll, c, semester);
                                CGPA.insertCGPA(semester, gpa, roll, c);

                            }
                        %>

                    </td>

                    <%  if (i == 1) {
                    %>
                    <td rowspan="<% out.println(x); %>">
                        <%

                            //Showing GPA...................................
                            GPA g1 = new GPA();
                            double r = g1.myResult(roll, semester);
                            out.println(r);
                        %>
                    </td>


                    <td rowspan="<% out.println(x); %>">

                        <%
                            //showing Previous CGPA.......................

                            out.println(CGPA.previousCGPA(semester, roll));

                        %>

                    </td>


                    <td rowspan="<% out.println(x); %>">
                        <%
                            //showing Previous CCH...........................................................
                            out.println(g1.previousCCH(semester, roll));
                        %>

                    </td>
                    <td rowspan="<% out.println(x); %>">
                        <%
                            out.println(CGPA.CGPA1(semester, roll));
                        %>
                    </td>
                    <td rowspan="<% out.println(x); %>"><%

                        out.println(g1.CCH(semester, roll));


                        %></td>
                    <td rowspan="<% out.println(x); %>">



                        <%

                         //Remarks rm=new Remarks();
                            //out.println(sm);
                            ArrayList al = Remarks.failSubject(roll, semester2);
                            if ((al.size()) == 0) {
                                out.println("Passed");
                            } else {
                        %>
                        Fail in:  <br>   
                        <%
                            for (int k = 0; k < al.size(); k++) {

                                out.println(al.get(k));
                        %><br><%
               }%>
                        <br>

                        <%  }

                        %>
                    </td>
                    <% }
                            i++;
                        }

                    %>
                </tr>


            </table>
            <br>
            <br>
            <br>
            <br>

            <table style="width: 100%">
                <tr><td>
                        <span style="text-decoration: overline">Tabulator(1)</span> 
                    </td>
                    <td><span style="text-decoration: overline">Tabulator(2)</span> </td>
                    <td><span style="text-decoration: overline">Scrutinizer(3)</span> </td>
                    <td>Date:<%                    String timeStamp = new SimpleDateFormat("yyyy-MM-dd").format(Calendar.getInstance().getTime());
                        out.println(timeStamp);
                        %> </td>
                    <td><span style="text-decoration: overline">Controller Of Examinations</span> </td>
            </table>
            <%
                conn2.close();
            %>
            <p style="page-break-before: always">
                <br> <br> <br> <br>
                <%
                                }

                            } catch (Exception e) {
                                out.println("Error is" + e.getMessage());
                            }
                        }

                        conn.close();
                    } catch (Exception e) {
                    }
                %>
        </div>

    </body>
</html>

