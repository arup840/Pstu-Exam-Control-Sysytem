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


public class SemesterResult {
   public static String sm="0";
    public static int TotalStudent=0;
     public static double  HighestCGPA=0;
      public static int GCGPA=0;
      public static int pst=0;
    
    public static String semester(String Semester){
         
               if (Semester.equals("S1")) {
                    sm = "1st Semester";
                } else if (Semester.equals("S2")) {
                    sm = "2nd Semester";
                } else if (Semester.equals("S3")) {
                    sm = "3rd Semester";
                } else if (Semester.equals("S4")) {

                    sm = "4th Semester";
                } else if (Semester.equals("S5")) {
                    sm = "5th Semester";
                } else if (Semester.equals("S6")) {
                    sm = "6th Semester";
                } else if (Semester.equals("S7")) {
                    sm = "7th Semester";
                } else {
                    sm = "8th Semester";
                }
    
    return sm;
    }
    
    public static void ABC(String Session,String Semester){
        String smt="";
            pst=0;
             TotalStudent=0;
      HighestCGPA=0;
      GCGPA=0;
            
         if (Semester.equals("S1")) {
                    smt = "11";
                } else if (Semester.equals("S2)")) {
                    smt = "12";
                } else if (Semester.equals("S3")) {
                    smt = "21";
                } else if (Semester.equals("S4")) {

                    smt= "22";
                } else if (Semester.equals("S5")) {
                    smt = "31";
                } else if (Semester.equals("S6")) {
                    smt = "32";
                } else if (Semester.equals("S7")) {
                    smt = "41";
                } else {
                    smt= "42";
                }
        
    
     try {
            Class.forName("com.mysql.jdbc.Driver");
            Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/pstu", "root", "");
            PreparedStatement ps = conn.prepareStatement("select * from student1 WHERE Session='"+ Session +"'");
            ResultSet rs = ps.executeQuery();
           
            //System.out.println(a);
            
            while (rs.next()) {
                TotalStudent++;
              String ID=rs.getString("Roll");
                ArrayList al=Remarks.failSubject(ID,smt);
                if(al.size()==0){
                pst++;
                }
                
            Double CGPA=Double.parseDouble(rs.getString(Semester));
            if(CGPA>HighestCGPA){
                HighestCGPA=CGPA;
            
            }
            if(CGPA>3.75){
            GCGPA++;
            }
            }
   conn.close();
     }
     catch(Exception e){
         System.out.println(e.getMessage());
     }

   
    }
    /*
    public static void main(String []args){
    SemesterResult s=new SemesterResult();
    s.ABC("2012-2013", "S1");
        System.out.println(SemesterResult.HighestCGPA+","+SemesterResult.GCGPA);
        System.out.println(SemesterResult.pst);
    }*/

}
