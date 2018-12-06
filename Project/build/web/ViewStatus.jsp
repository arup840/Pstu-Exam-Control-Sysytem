<%@page import="java.sql.Statement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<html >
<head>

<style type="text/css">

div.wrapper {
    
    width: 100%;
	
    display: table;
	height: 50px;
	font-family: Cursive; 
}
div.option {
    text-align:center;
    display: table-cell;
	font-family: Cursive;  
  font-size: 25px;
}
 select{ margin: 10px;
  padding: 10px; 
  border: 2px solid purple; 
  width: 150px;
  -webkit-border-radius: 5px;
  -moz-border-radius: 5px;
  border-radius: 5px;
  
}

</style>
    <title>View Status</title> 
	
	 <link href="Home.css" rel="stylesheet">
     
</head>
<body >
 <ul>
  <li style="float:right"><a  href="index.html">LogOut</a></li>
  <li style="float:right"><a class="active" href="Administrator.html">Administrator</a></li>
  <li style="float:right"><a href="Security.jsp">Security</a></li>
  <li style="float:right"><a href="">Faculty Management</a>
   <ul>
      <li><a href="AddFaculty.html">Add Faculty</a></li>
      <li><a href="AddSubject.html">Add Subject</a></li>
      <li><a href="Registration.html">Registration </a></li>
    </ul>
  </li>
  <li style="float:right"><a   href="Enrollment.html">Enrollment</a></li>
  <li style="float:right"><a  href="home.html">Home</a></li>
</ul>
<br>
<br>

        <table border="1" align="center" >
            <%

                String faculty = request.getParameter("faculty");
                String Semester = request.getParameter("semester");
               // out.println(Semester + "," + faculty);
               
                try {
                    Class.forName("com.mysql.jdbc.Driver");
                    Connection con = (Connection) DriverManager.getConnection("jdbc:mysql://localhost:3306/pstu", "root", "");
                    Statement st = (Statement) con.createStatement();
                    ResultSet rs = st.executeQuery("SELECT * FROM courses1 WHERE Course_Code LIKE '%" + Semester + "_'");
                    while (rs.next()) {
                        String Course_Code = rs.getString("Course_Code");
                        String Course_Title = rs.getString("Course_Title");
            %>

            <tr>
                <td style="color:white" width="110" align="center"><% out.println(Course_Code); %></td>
                <td style="color:white" width="400"><% out.println(Course_Title); %></td>
                <td style="color:white" width="110" align="center">

                    <%
                                try {
                                    Class.forName("com.mysql.jdbc.Driver");
                                    Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/session2013-14", "root", "");
                                    PreparedStatement ps1 = conn.prepareStatement("SELECT * FROM " + Course_Code + " ");
                                    ResultSet rs1 = ps1.executeQuery();
                                     int a = 0;
                                    if (rs1.last()) {
                                        
                                        a = rs1.getRow();
                                        
                                    }
                                     if (a > 0) {
                                        out.println("Done");
                                        
                                    } else {
                                         %>
                                         <p style="color:orangered">   <% out.println("Processing");%></p>
                                      <%  
                                    }

                                }
                                
                                catch (Exception e) {
                                    System.out.println("Error is" + e.getMessage());

                                }
                               
%>
                     </td></tr>
                    
                    <%
                            }
                        } catch (Exception e) {
                        }
                    %>  
        </table>
    </body>


</html >

 