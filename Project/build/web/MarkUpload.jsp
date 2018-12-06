
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="com.mysql.jdbc.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="com.mysql.jdbc.Connection"%>
<html>
    <head>
        <title>Mark Upload</title>
        <script>
	function myfuction(){
		var x ,y,z,f;
		x=document.getElementById("num1").value;
		y=document.getElementById("num2").value;
                z=document.getElementById("num2").value;
                f=document.getElementById("num2").value;
		if(x=="" & y=="" & z=="" & f==""){
			alert("Please enter number ");
			//document.getElementById("sum").style.color= "red";

		}
		else if(isNaN(x)){
			alert("please enter number only");
			
		} else if(isNaN(y)){
			alert("please enter number only");
			
		} 
                else if(isNaN(z)){
			alert("please enter number only");
			
		}
                else if(isNaN(f)){
			alert("please enter number only");
			
		}
                

	}
        
        function a(){
            x=document.getElementById("num1").value;
             y=document.getElementById("num2").value;
               z=document.getElementById("num3").value;
                f=document.getElementById("num4").value;
            if(x>10){
                document.getElementById("num1").value =null;
             alert("Sorry,Number is greater than 10  ");
         }
          if(y>15){
                document.getElementById("num2").value =null;
             alert("Sorry,Number is greater than 15 ");
         }
          if(z>5){
                document.getElementById("num3").value =null;
             alert("Sorry,Number is greater than 5 ");
         }
          if(f>70){
                document.getElementById("num4").value =null;
             alert("Sorry,Number is greater than 70 ");
         }
        }
	</script>
     
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
        <table  align="center" bgcolor="#E3F2E1" width="1300" cellspacing="30">
            <tr>
                <th> Serial No</th><th>Registration</th><th> Attendance</th><th> +</th><th>Mid</th><th> +</th><th> Assignment</th><th> +</th><th> Final</th><th>=</th><th> Total</th>
            </tr>
             <tr>
        <%
         String str=request.getParameter("Code");
         //out.println(str);
        try{
            //String CourseCode=request.getParameter("");
        Class.forName("com.mysql.jdbc.Driver");
                Connection con = (Connection) DriverManager.getConnection("jdbc:mysql://localhost:3306/janu_jun_2014", "root", "");
                PreparedStatement ps =con.prepareStatement(" select ID,Registration from cse_enrollment1 WHERE "+str+"='1'");
               // out.println(ps);
                ResultSet rs = ps.executeQuery();
                int i=1;
                while (rs.next()) {
                    
                     String ID = rs.getString("ID");
                        //out.println(n1);
                         String Registration = rs.getString("Registration");
                   
                  %>
             <form action="MarkUpload1.jsp" method="post"> 
                     
                          <td align="center">
                              <%
                         out.println(i);
                         i++;
                              %>
                              
                          </td>
                          <td align="center"> <% out.print(ID);%> </td>
                          
                          <td> <input type="text" name="id" id="num1"  onchange="a();" required="required"></td> 
                          <td> + </td>
                          <td align="center"><input type="text" name="id1" id="num2"  onchange="a();" required="required"> </td>
                          <td>+</td>
                          <td align="center"><input type="text" name="id2" id="num3"  onchange="a();" required="required"></td>
                           <td>+</td>
                           <td align="center"><input type="text" name="id3" id="num4"  onchange="a();" required="required"></td>
                          <td> =</td>
                          <td align="center"><input type="text" name="Result" ></td> 
                          
                      </tr>  
                  <%
               }
                %>
                <tr>
                    <td align="right">
                <input type="submit" value="Submit" name="submit" onclick="myfuction();">
                    </td>
                    </tr>
                <input type="hidden"  name="Code"  value="<%out.print(str);%>">
                
                  </form>
                
             <%   
        }
       catch (Exception e) {
                e.printStackTrace();
            }
        %>
        </table>
   
        </td>
        </tr>
        </table> 
        
    </body>
</html>