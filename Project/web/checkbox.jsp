<%@page import="java.util.ArrayList"%>
<%@page import="CGPA.Irregular"%>
<%@page import="CGPA.Remarks"%>
<%@page import="java.util.jar.Attributes.Name"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<html >
    <head>

        <style type="text/css">
            .k1{
                font-family: Cursive;
                color: white;}
           l {list-style: none;padding: 0px;margin: 0px;}
  ul li {display: block;position:auto;float: left;border:0px solid #000}
  li ul {display: none;
 }
  ul li a {display: block;padding: 21px 20px 17px 23px;text-decoration: none;
           white-space: nowrap;color: #fff;}
  ul li a:hover {background: #88BC6E;}
  li:hover ul {display: block; position: absolute;}
  li:hover li {float:none;}
  li:hover a {background: #88BC6E;}
  li:hover li a:hover {background: #319A9C;}
  #drop-nav li ul li {border-top: 0px}
            h1{
                font-family: Cursive;
                color: white;}
            </style>
            <title>Home</title> 
            <link href="Home.css" rel="stylesheet">
        </head>
        <body>
            
                    <script language="JavaScript">
                        function selectAll(source) {
                            checkboxes = document.getElementsByName('s1');
                            for (var i in checkboxes)
                                checkboxes[i].checked = source.checked;
                        }
                    </script>

 <ul>
  <li style="float:right"><a  href="index.html">LogOut</a></li>
  <li style="float:right"><a href="Administrator.html">Administrator</a></li>
  <li style="float:right"><a href="Security.jsp">Security</a></li>
  <li style="float:right"><a href="">Faculty Management</a>
   <ul>
      <li><a href="AddFaculty.html">Add Faculty</a></li>
      <li><a href="AddSubject.html">Add Subject</a></li>
      <li><a href="Registration.html">Registration </a></li>
    </ul>
  </li>
  <li style="float:right"><a  class="active" href="Enrollment.html">Enrollment</a></li>
  <li style="float:right"><a  href="home.html">Home</a></li>
</ul> 
    <center>
        
          <%  
         //out.println(semester);
               //String semester1="11";
              String semester1=request.getParameter("currencies");
               String Regis = request.getParameter("Registration");
                String type = request.getParameter("type");
             //out.println(semester1); 
        String a1= Remarks.enroll(semester1);
        
        //out.println(a1); 
        //out.println(type); 
        //out.println(Regis);
         if((type.equals("Irregular") && semester1.equals("11")) || (type.equals("Irregular") && semester1.equals("12") )){
             
             out.println("Sorry You Can't Remove Any Fail At Now ");
             
         }
          else if(type.equals("Irregular")){
           // out.println("abc");
           
         ArrayList a=Irregular.Sum(semester1, Regis);
              %>
              
                <table border="1">
                    <tr><td width="300">
                             <center> <input type="checkbox" id="selectall" onClick="selectAll(this)" />Select All</center>
                            <%
         for(int i=0;i<a.size();i++){
            
      //out.println(a.get(i));
          %>
        
       <p>
                  <input type="checkbox" name="s1" value="<%%>>"> 
                            <%
                                out.println(a.get(i));
         }
                            %>
                        
           
                        </p>
                        <center><p><input type="submit" value="submit"/></center>
                         </td>
                         
                         <td>
                             
                          <%
                          // String Regis = request.getParameter("Registration");
                            try {
                                Class.forName("com.mysql.jdbc.Driver");
                                Connection con = (Connection) DriverManager.getConnection("jdbc:mysql://localhost:3306/pstu", "root", "");
                                Statement st = (Statement) con.createStatement();
                                ResultSet rs = st.executeQuery("SELECT * FROM student1 where Registration='"+Regis+"'");
                                while (rs.next()) {
                                    String Name = rs.getString("Name");
                                     String Registration = rs.getString("Registration");
                                      String Roll = rs.getString("Roll");
                                    String Faculty = rs.getString("Faculty");
                                    String Session = rs.getString("Session");
                                    %>
                                    <input type="hidden" name="Roll" value="<%out.print(Roll);%>" />
                                    <input type="hidden" name="Registration" value="<%out.print(Registration);%>" />
                                    <h1>
                                         <p> 
                                    Name: <%out.println(Name);%><br>
                                    
                                   Registration: <%out.println(Registration);%><br>
                                   
                                   ID: <%out.println(Roll);%><br>
                                   
                                   Faculty: <%out.println(Faculty);%><br>
                                   
                                   Session: <%out.println(Session);%>
                                      </p>
                                   </h1>
                                
                                    <%
                                }
                                con.close();
                            }
                            catch(Exception e){
                                System.out.println("error :" +e.getMessage());
                            }
        
                        %>   
                             
                         </td>
          </tr>
         
          </table>
                        <%
                                
   
        }
        
        
        
        
        
        
        
      
        
        
        else{
         //   %>
           <table border="2" width="800">
             
            <form action="
                  <% 
               out.println(a1);%>"
              
             
            <tr>
             
                <td width="300"> 

                    
                      


                        <%
                           String  semester=request.getParameter("currencies");
                            try {
                                Class.forName("com.mysql.jdbc.Driver");
                                Connection con = (Connection) DriverManager.getConnection("jdbc:mysql://localhost:3306/pstu", "root", "");
                                Statement st = (Statement) con.createStatement();
                                ResultSet rs = st.executeQuery("SELECT * FROM courses1 WHERE Course_Code LIKE '%"+semester+"_'");
                             %>  
            <center> <input type="checkbox" id="selectall" onClick="selectAll(this)" />Select All</center>
                                <%
                                        while (rs.next()) {
                                    String s1 = rs.getString("Course_Code");

                        %>
                        <p> <input type="checkbox" name="s1" value="<%out.print(s1);%>>"> 
                            <%
                                out.println(s1);
                            %>
                        </p>
                        <%
                                }
                               con.close();
                            } catch (Exception e) {
                                e.printStackTrace();
                            }
                        %>
                        <center><p><input type="submit" value="submit"/></center>
            </td>
                <td> 
                       <%
                          // String Regis = request.getParameter("Registration");
                            try {
                                Class.forName("com.mysql.jdbc.Driver");
                                Connection con = (Connection) DriverManager.getConnection("jdbc:mysql://localhost:3306/pstu", "root", "");
                                Statement st = (Statement) con.createStatement();
                                ResultSet rs = st.executeQuery("SELECT * FROM student1 where Registration='"+Regis+"'");
                                while (rs.next()) {
                                    String Name = rs.getString("Name");
                                     String Registration = rs.getString("Registration");
                                      String Roll = rs.getString("Roll");
                                    String Faculty = rs.getString("Faculty");
                                    String Session = rs.getString("Session");
                                    %>
                                    <input type="hidden" name="Roll" value="<%out.print(Roll);%>" />
                                    <input type="hidden" name="Registration" value="<%out.print(Registration);%>" />
                                    <h1>
                                         <p> 
                                    Name: <%out.println(Name);%><br>
                                    
                                   Registration: <%out.println(Registration);%><br>
                                   
                                   ID: <%out.println(Roll);%><br>
                                   
                                   Faculty: <%out.println(Faculty);%><br>
                                   
                                   Session: <%out.println(Session);%>
                                      </p>
                                   </h1>
                                
                                    <%
                                }
                                con.close();
                            }
                            catch(Exception e){
                                System.out.println("error :" +e.getMessage());
                            }
        }
                        %>
                                

                </td>
           
            </tr>
                 </form>
        </table>
    </center>
</body>

</html >