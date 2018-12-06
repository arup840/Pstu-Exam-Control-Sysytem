/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package CGPA;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import jdbc_connection.Connection1;

public class Remarks {
 public static ArrayList list;
  public static int fail=0;
    public static ArrayList failSubject(String roll,String sm){
        list=new ArrayList();
    try {
          Class.forName("com.mysql.jdbc.Driver");
                    Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/pstu", "root", "");
                    PreparedStatement ps1 = conn.prepareStatement("SELECT * FROM courses1 WHERE Course_Code LIKE '%"+sm+"_'");
                    ResultSet rs1 = ps1.executeQuery();
                    while(rs1.next()){
                    String Course=rs1.getString("Course_Code");
                    
                        try {
                           Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/session2013-14", "root", "");
                    
                                 PreparedStatement ps = con.prepareStatement("SELECT Total from " + Course + " WHERE ID=" + roll + " ");
                                 ResultSet rs = ps.executeQuery();
                                 while(rs.next()){
                                  int Mark = Integer.parseInt(rs.getString("Total"));
                                  if(Mark<40){
                                      
                                  list.add(Course);
                                  //System.out.println(Course);
                                  }
                                 }
                                 con.close();
                                 ps.close();
                                 
                                 
                        } catch (Exception e) {
                             System.out.println("Error"+e.getMessage());
                        }
                    
                    }
                    ps1.close();
                    conn.close();
        } catch (Exception e) {
            System.out.println("Error"+e.getMessage());
        
        }
   //for(int i = 0; i<list.size();i++){
          //  System.out.println(list.get(i));}
    return list;
    }
    
    public static String enroll(String s){
    String a="0";
    
    if(s.equals("11")){
        
    a="Enrollment.jsp";
    }
    else{
        a="Enrollment1.jsp";
    }
    return a;
    }
    
    
}
