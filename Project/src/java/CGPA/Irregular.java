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

public class Irregular {
    
    public static ArrayList Sum(String semester,String Reg){
         String seme="0";
         
         
    if (semester.equals("21")) {
            seme = "Course_Code LIKE '%11_'";
        } else if (semester.equals("22")) {
            seme = "Course_Code LIKE '%12_'";
        } else if (semester.equals("31")) {
            seme = "Course_Code LIKE '%11_' OR Course_Code LIKE '%21_'";
        } else if (semester.equals("32")) {
            seme = "Course_Code LIKE '%12_' OR Course_Code LIKE '%22_'";
        } else if (semester.equals("41")) {
            seme = "Course_Code LIKE '%11_' OR Course_Code LIKE '%21_' OR Course_Code LIKE '%31_'";
        } else if(semester.equals("42")) {

            seme = "Course_Code LIKE '%12_' OR Course_Code LIKE '%22_' OR Course_Code LIKE '%32_'";
        }
         ArrayList list=new ArrayList();
       try {
          Class.forName("com.mysql.jdbc.Driver");
             try (Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/pstu", "root", "")) {
                 PreparedStatement ps1 = conn.prepareStatement("SELECT * FROM courses1 WHERE "+seme+" ");
                 ResultSet rs1 = ps1.executeQuery();
                 while(rs1.next()){
                     String Course=rs1.getString("Course_Code");
                     //System.out.println(Course);
                     try {
                         Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/session2013-14", "root", "");
                         
                         PreparedStatement ps = con.prepareStatement("SELECT Total from " + Course + " WHERE Registration="+Reg+"");
                         ResultSet rs = ps.executeQuery();
                         while(rs.next()){
                             int Mark = Integer.parseInt(rs.getString("Total"));
                             // System.out.println(Mark);
                             if(Mark<40){
                                 
                                 list.add(Course);
                                 // System.out.println(Course);
                             }
                         }
                         con.close();
                         
                         
                         
                     } catch (Exception e) {
                         System.out.println("Error"+e.getMessage());
                     }
                 }
             }
        } catch (Exception e) {
            System.out.println("Error is"+e.getMessage());
        
        }
   
   return  list;
    }
}
