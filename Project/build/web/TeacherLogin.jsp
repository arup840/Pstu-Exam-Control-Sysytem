<%@page import="com.mysql.jdbc.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="com.mysql.jdbc.Connection"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="com.mysql.jdbc.PreparedStatement"%>
<%
    String facul = request.getParameter("currencies");
    String course_code = request.getParameter("Course_Code");
    String pass = request.getParameter("Password");
    //String facul="CSE";
   // String course_code="CCE112";
   // String pass="123456";
   // out.println(course_code);
    request.setAttribute("name1", course_code);

    try {

        Class.forName("com.mysql.jdbc.Driver");
        Connection con = (Connection) DriverManager.getConnection("jdbc:mysql://localhost:3306/login", "root", "");

        Statement st = (Statement) con.createStatement();
        ResultSet rs = st.executeQuery("select * from teacher_login where Faculty = '" + facul + "'and Course_Code =  '" + course_code + "'and Password='" + pass + "' ");

        String d_faculty = null;

        String d_course_code = null;
        String d_pass = null;

        while (rs.next()) {

            d_course_code = rs.getString("Course_Code");
            d_pass = rs.getString("Password");
            d_faculty = rs.getString("Faculty");

            if (d_faculty.equals(facul) && d_course_code.equals(course_code) && d_pass.equals(pass)) {
               
                RequestDispatcher rd=request.getRequestDispatcher("SelectResult.jsp");
            rd.forward(request, response);
            }
        }
      response.sendRedirect("WrongLogin.html");
    } catch (Exception e) {
        e.printStackTrace();
    }


%>
