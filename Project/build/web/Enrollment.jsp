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
             String sw="";
             
             //out.print(id+","+Registration);
            for(int i=0; i<Courses.length; i++){
                
                //out.print(Courses[i]);
                
             ss= ss+","+Courses[i];
            sw=sw+"'1'";
            if(i<Courses.length-1){
                sw=sw+",";
            }
            }
        try {
             
        Class.forName("com.mysql.jdbc.Driver");
        
        Connection con = (Connection) DriverManager.getConnection("jdbc:mysql://localhost:3306/janu_jun_2014", "root", "");
        
        PreparedStatement ps1=con.prepareStatement("select * from cse_enrollment1");
        
        ResultSet rs=ps1.executeQuery();
        
        while(rs.next()){
        String id= rs.getString("Registration");
        
        if(Regis.equals(id)){
        out.println("Sorry exit");
        break;
        }
        else{
             out.print("Succesfull");
         String query = "insert into cse_enrollment1(ID,Registration"+ss+") values('"+Roll+"','"+Regis+"',"+sw+")";
         out.print("Succesfull");
        PreparedStatement ps = con.prepareStatement(query);
      //out.print("Succesfull");
      
        response.sendRedirect("Enrollment.html");
        
         ps.executeUpdate();
        }
        }
        
       
     } catch (Exception e) {
        e.printStackTrace();
    }
        }   }
         else
            out.print("UnSuccesfull"); 
         %>