<%-- 
    Document   : PublishResult
    Created on : Jan 12, 2018, 6:27:13 PM
    Author     : Hossen
--%>


<%@page import="CGPA.SemesterResult"%>
<%@page import="java.util.ArrayList"%>
<%@page import="CGPA.Remarks"%>
<%@page import="java.math.RoundingMode"%>
<%@page import="java.text.NumberFormat"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
           
        String Faculty=request.getParameter("faculty");
        String Semester=request.getParameter("semester");
        String Session=request.getParameter("session");
        out.println(Semester);
       
        %>
        <h2> <p align="center">PATUAKHALI SCIENCE AND TECHNOLY UNIVERSITY</p></h2>
        <h2> <p align="center">Result Sheet</p></h2>
        <table width="80%" align="center">
            <tr>
                <td>Faculty:<%
    
        out.println(Faculty+","+SemesterResult.semester(Semester)); 
                %></td>
                <td>Passed Student:<%
         SemesterResult s1=new SemesterResult();
    s1.ABC(Session, Semester);
    out.println(SemesterResult.pst);
                %></td>
                
           </tr>
               <tr>
                <td>Session:<% out.println(Session); %></td>
                <td>Highest CGPA:<% 
                
                double hcgpa=SemesterResult.HighestCGPA;
                //NumberFormat format = NumberFormat.getInstance();
                //format.setRoundingMode(RoundingMode.DOWN);
                //format.setMaximumFractionDigits(2);
               // String a = format.format(hcgpa);
                out.println(hcgpa); %></td>
                
           </tr>
            <tr>
                <td>Total Student:<% out.println(SemesterResult.TotalStudent); %></td>
                <td>CGPA Above 3.75:<% out.println(SemesterResult.GCGPA); %></td>
                
           </tr>
        </table>
     
        <table border="1" width="80%" align="center" cellpadding="10"style="border-collapse:collapse" >
            <tr>
                <th>SL NO </th>
                <th>Roll No</th>
                <th>Name Of Student</th>
                <th>Reg No</th>
                <th>GPA</th>
                <th>CGPA</th>
                <th>CCH</th>
                <th>REMARKS</th>
            </tr>
            <%
             String Seme="0";
             if(Semester.equals("S1")){
             Seme="1st_Semester";
             }
             else if(Semester.equals("S2")){
             Seme="2nd_Semester";
             }
             else if(Semester.equals("S3")){
             Seme="3rd_Semester";
             }
             else if(Semester.equals("S4")){
             Seme="4th_Semester";
             }
             else if(Semester.equals("S5")){
             Seme="5th_Semester";
             }
             else if(Semester.equals("S6")){
             Seme="6th_Semester";
             }
             else if(Semester.equals("S7")){
             Seme="7th_Semester";
             }
            
             else 
             Seme="8th_Semester";
           
              try {
                  int i=1;
                  

            Class.forName("com.mysql.jdbc.Driver");
            Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/pstu", "root", "");
            PreparedStatement ps = conn.prepareStatement("select * from student1 WHERE Session='"+ Session +"'");
            ResultSet rs = ps.executeQuery();
           
            while (rs.next()) {
                
                String Name=rs.getString("Name");
            String Roll=rs.getString("Roll");
            String Reg=rs.getString("Registration");
            String GPA=rs.getString(Seme);
            String CGPA=rs.getString(Semester);
            //out.println(coun);
            %>
            <tr> 
                <td align="center"><% out.println(i); %></td>
                <td><% out.println(Roll); %></td>
                <td><% out.println(Name); %></td>
                <td><% out.println(Reg); %></td>
                <td><% 
                
                NumberFormat format = NumberFormat.getInstance();
                format.setRoundingMode(RoundingMode.DOWN);
                format.setMaximumFractionDigits(3);
       // Object result;
            double gpa= Double.parseDouble(format.format(Double.parseDouble(GPA)));
                out.println(gpa); %>
                </td>
                <td>
                    <% 
                
                
              //  NumberFormat format = NumberFormat.getInstance();
                format.setRoundingMode(RoundingMode.DOWN);
                format.setMaximumFractionDigits(3);
       // Object result;
            double cgpa= Double.parseDouble(format.format(Double.parseDouble(CGPA)));
                out.println(cgpa); %>
            
                </td>
                <td>
                    <%
                    try{
                    Class.forName("com.mysql.jdbc.Driver");
            //Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/pstu", "root", "");
            PreparedStatement ps1 = conn.prepareStatement("select "+Semester+" from credit1 WHERE ID='"+Roll +"'");
            ResultSet rs1 = ps1.executeQuery();
             while(rs1.next()){
             String CCH=rs1.getString(Semester);
             out.println(CCH);
             }
             
            ps1.close();
                    }catch(Exception e){
                    
                    }
                    %>
                  </td>
                  <td>
                       <%
                    String sm="0";
               if (Semester.equals("S1")) {
                    sm = "11";
                } else if (Semester.equals("S2)")) {
                    sm = "12";
                } else if (Semester.equals("S3")) {
                    sm = "21";
                } else if (Semester.equals("S4")) {

                    sm = "22";
                } else if (Semester.equals("S5")) {
                    sm = "31";
                } else if (Semester.equals("S6")) {
                    sm = "32";
                } else if (Semester.equals("S7")) {
                    sm = "41";
                } else {
                    sm = "42";
                }
                 ArrayList al=Remarks.failSubject(Roll,sm);
                 if((al.size())==0){
                 out.println("Passed");
                 }
                 else{
                     %>
                      F in: 
                     <%
                     
                   for( int k = 0; k<al.size();k++){
                  
           out.println(al.get(k));
          

}%>
           <br>
           
           <%  }
      
                %>
                      
                  </td>
               
            </tr>
            <%
            i++;
            }
            ps.close();
            conn.close();
        } catch (Exception e) {
            System.out.println("Error" + e.getMessage());
        }
            
            %>
        </table>
        
       
    </body>
</html>
