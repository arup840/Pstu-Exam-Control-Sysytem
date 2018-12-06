<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%
		String Roll=request.getParameter("Roll");
                String Regis=request.getParameter("Registration");
                out.print(Roll);
                out.print(Regis);
            String Courses[]= request.getParameterValues("s1");
         if(Roll!=null){

        if(Courses != null){
             String ss="";
            
             
             //out.print(id+","+Registration);
           for(int i=0; i<Courses.length; i++){
                 String sw="";
                //out.print(Courses[i]);
                 if(i<Courses.length-1){
                sw=",";
            }
             ss= ss+""+Courses[i]+"=1"+sw;
          
            }
        try {
             
        Class.forName("com.mysql.jdbc.Driver");
        
        Connection con = (Connection) DriverManager.getConnection("jdbc:mysql://localhost:3306/janu_jun_2014", "root", "");
       out.print("...........2.............");
        String query = "UPDATE cse_enrollment1 SET "+ss+" WHERE ID="+Roll+" ";
         out.print(query);
          out.print("...........2.............");
        PreparedStatement ps = con.prepareStatement(query);
      
        response.sendRedirect("Enrollment.html");
        
         ps.executeUpdate();
        }
     catch (Exception e) {
        e.printStackTrace();
    }
         }}
         else
            out.print("UnSuccesfull"); 
         %>