<%-- 
    Document   : FinalTranscript
    Created on : Jan 16, 2018, 7:56:56 PM
    Author     : Hossen
--%>

<%@page import="CGPA.FinalTranscript"%>
<%@page import="java.util.ArrayList"%>
<%@page import="Mark.GradeCalculation"%>
<%@page import="CGPA.SemesterResult"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <style>
      
        </style>
             <script type="text/javascript">

function pt(divName) {
    var restorepase=document.body.innerHTML;
    var printcontent=document.getElementById(divName).innerHTML;
    document.body.innerHTML=printcontent;
    window.print();
    document.body.innerHTML=restorepase;

 }     </script>
          <style media="print">
 @page {
  size: auto;
  margin: 0;
       }
     
</style>
    </head>
    <body>
        <div id="FT">
            <p align="right"><button onclick="pt('FT')">Print</button></p>
        <%
                  try {
                        //String roll = request.getParameter("id");
                        String roll = request.getParameter("id");
                        String Faculty=request.getParameter("currencies");
                        String Session=request.getParameter("session");
                       // out.println(roll+","+Faculty+","+Session);
                        String Name="";
                        String Reg="";
                        String Roll="";
                        //String Session="";
                         String CGPA="";
                        Class.forName("com.mysql.jdbc.Driver");
                        Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/pstu", "root", "");
                        PreparedStatement ps = conn.prepareStatement("select * from student1 where Roll=" + roll + "");
                        ResultSet rs = ps.executeQuery();
                        while (rs.next()) {
                            Name = rs.getString("Name");
                             Reg = rs.getString("Registration");
                            Roll = rs.getString("Roll");
                            // Session = rs.getString("Session");
                            CGPA=rs.getString("S8");
 %>
       
        <h2>   <p align="center">TRANSCRIPT OF ACADEMIC RECORD</p></h2>
        
        <table width="90%"  align="center" cellpadding="5" >
            <tr>
                <td>1.&nbsp; Name of the Student</td> <td>:<% out.println(Name); %></td>
            </tr>
             <tr>
                <td>2.&nbsp; Registration No</td><td>:<% out.println(Reg); %></td>
            </tr>
             <tr>
                <td>3.&nbsp;Nationality</td><td>:Bangladeshi</td>
            </tr>
            <tr>
                <td>4.&nbsp;Date of Enrollment</td><td>:--/--/</td>
            </tr>
            <tr>
                <td width="50%">5.&nbsp;Degree Awarded</td><td>:Bachelor of Science in Computer Science and <br>Engineering abbreviated as B.ScEngg. (CSE)</td>
            </tr>
            <tr>
                <td>6.&nbsp;Concentration / Major</td><td>:Not applicable</td>
            </tr>
            <tr>
                <td>7.&nbsp;Minimum Duration Required for the Degree</td><td>:4 Years ( 08 Semesters)</td>
            </tr>
            <tr>
                <td>8.&nbsp;Total Number of Semester Attended</td><td>:08 Semesters</td>
            </tr>
            <tr>
                <td>9.&nbsp;Session </td><td>:<% out.println(Session); %></td>
            </tr>
            <tr>
                <td>10.&nbsp;Date of Completion of Degree Requirements</td><td>:</td>
            </tr>
            <tr>
                <td>11.&nbsp;Date of Completion of Degree Requirements</td><td>:10</td>
            </tr>
            <tr>
                <td>12.&nbsp;Total Credits</td><td>:165</td>
            </tr>
            <tr>
                <td>13.&nbsp;Cumulative Grade Point Average(CGPA) earned</td><td>:<% out.println(CGPA); %></td>
            </tr>
            <tr>
                <td>14.&nbsp;Highest CGPA  earned in the Examinations</td><td>:<%
               
                %></td>
            </tr>
            <tr>
                <td>15.&nbsp;Merit Position</td><td>:Passed</td>
            </tr>
            <tr>
                <td>16.&nbsp;Medium of Instruction </td><td>:English</td>
            </tr>
           
        </table>
        <p align="center">  Four (4) additional sheets containing name of the courses studied and grades obtained therein are enclosed. General information given in the overleaf.
        </p>
        <p>
       &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  Tabulator-01……………………….<br>
        </p>
        <p>
       &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Tabulator-01……………………….   &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;              Date:........................&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;       Controller of Examinations<br>
       </p>
       <p>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Tabulator-01……………………….
        </p>
      
        <p style="page-break-before: always">

     <%
     for(int i=1;i<=8;i++){
         
     
     if(i==1 || i==3 || i==5 || i==7){
     %>
     <h2 align="center">Details of Academic Record</h2>
     <table border="1" align="center" width="90%" cellspacing="0">
         <tr>
             <td>Faculty Name:Computer Science And Engineering</td>
             <td>Reg No:<% out.println(Reg); %></td>
         </tr>
         <tr>
             <td>Name:<% out.println(Name); %></td>
             <td>Session:<% out.println(Session); %></td>
         </tr>
     </table>
         <% }
         String semester="";
         String period="";
         if(i==1){
             semester="First Year First Semester (Level-1 Semester I)";
             period="Period: January – June";
         }
         else if(i==2){
            semester="First Year Second Semester (Level-1 Semester II)";
             period="Period: July – December"; 
             
         }
          else if(i==3){
            semester="Second Year First Semester (Level-2 Semester I)";
             period="Period: January – June"; 
             
         }
         else if(i==4){
            semester="Second Year Second Semester (Level-2 Semester II)";
             period="Period: July – December"; 
             
         }
         else if(i==5){
            semester="Third Year First Semester (Level-3 Semester I)";
             period="Period: January – June"; 
             
         }
         else if(i==6){
            semester="Third Year Second Semester (Level-3 Semester II)";
             period="Period: July – December"; 
             
         }
         else if(i==7){
            semester="Forth Year First Semester (Level-4 Semester I)";
             period="Period: January – June"; 
             
         }
           else{
            semester="Forth Year Second Semester (Level-4 Semester II)";
             period="Period: July – December"; 
         }
         %>
         
         <h3 align="center"><% out.println(semester);%> &nbsp; &nbsp;&nbsp;&nbsp;&nbsp;   <% out.println(period);%> </h3> 
         <table border="1" align="center" width="90%"  cellpadding="" cellspacing="0">
             <tr>
                 <td align="center">Serial No.</td><td align="center">Course Code</td><td align="center">Course Title</td><td align="center">Credit Hours</td><td align="center">Grade</td><td align="center">Grade Point</td>
             </tr>
             <%
         String semester2="";
               if (i==1) {
                    semester2 = "11";
                } else if (i==2) {
                    semester2 = "12";
                } else if (i==3) {
                    semester2 = "21";
                } else if (i==4) {

                    semester2 = "22";
                } else if (i==5) {
                    semester2 = "31";
                } else if (i==6) {
                    semester2 = "32";
                } else if (i==7) {
                    semester2 = "41";
                } else {
                    semester2 = "42";
                }
             try {
                   // String roll = request.getParameter("id");
                    // out.println(semester);
                    Class.forName("com.mysql.jdbc.Driver");
                    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/pstu", "root", "");
                    PreparedStatement ps1 = con.prepareStatement("SELECT * FROM courses1 WHERE Course_Code LIKE '%"+semester2+"_'");
                    ResultSet rs1 = ps1.executeQuery();
                    int ii = 1, x;
                   if (rs1.last()) {
                        x = rs1.getRow();
                       // out.println(x);
                        rs1.beforeFirst();

                        int j = 0;
                         double cr=0;
                        while (rs1.next()) {
                            String Course_Code = rs1.getString("Course_Code");

                            String Course_Title = rs1.getString("Course_Title");
                            String Credit = rs1.getString("Credit_Hours");

            %>


            <tr>
                <td align="center">
                    <%                out.println(ii);

                    %>
                </td>


                <td align="center"><% out.println(Course_Code); %></td>
                <td><% out.println(Course_Title); %></td>
                <td align="center"><% out.println(Credit); %></td>

               


                <td align="center"> <%
                    //FOR SHOWING LETTER GRADE
                    GradeCalculation gc = new GradeCalculation();
                    out.println(gc.grade(roll, Course_Code));
               
                %>
                     </td>
                     <td align="center"> 

                    <%
                        //FOR SHOWING GRADE POINT
                        double gp = gc.point(roll, Course_Code);
                        out.println(gp);
 %>

                </td>
            </tr>
          
             <%
                       cr=  GradeCalculation.total_Credit(semester2);
                      ii++;   }
                        
                        %>
             
              <tr >
                  <td colspan="6">
                      <table width="90%">
                          <%
                          FinalTranscript ft=new FinalTranscript();
                          ft.FinalTrans(i);
                          %>
                          <tr>
                              <td>Earned Credits                       :  <% out.println(cr); %></td>
                               <td>Grade Point Average                  :<% out.println(FinalTranscript.gpa1); %></td>
                          </tr>
                          <tr>
                              <td>Cumulative Earned Credits    :<% out.println(FinalTranscript.credit); %></td>
                               <td>Cumulative Grade Point Average   <% out.println(FinalTranscript.cgpa1); %></td>
                          </tr>
                      </table>
                </td>
            </tr>
            <%
                        
                       
                   }
             
             }
                        catch(Exception e){
                            out.println(e.getMessage());
                                }
             %>
         </table>
         <%
         if(i==2|| i==4 || i==6 || i==8){
          
              %>
              <p>
       &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  Tabulator-01……………………….<br>
        </p>
        <p>
       &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Tabulator-01……………………….   &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;              Date:........................&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;       Controller of Examinations<br>
       </p>
       <p>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Tabulator-01……………………….
        </p>
          
     <p style="page-break-before: always">
     
           <%  
         }
             
         
         
         %>
         <% 
     
     }
             }
                       conn.close();
                        } catch (Exception e) {
                            out.println("Error=" + e.getMessage());
                        } %>
        
        
    </div>
    </body>
</html>
