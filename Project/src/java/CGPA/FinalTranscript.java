/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package CGPA;

import java.math.RoundingMode;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.text.NumberFormat;

/**
 *
 * @author Hossen
 */
public class FinalTranscript {
    public static String gpa="";
  public static String cgpa="";
 public static  double gpa1=0;
 public static double cgpa1=0;
  public static  String credit="";
    
       public static String FinalTrans(int S){
    
          if(S ==1){
          gpa="1st_Semester";
          cgpa="S1";
          }
          else if(S ==2){
          gpa="2nd_Semester";
          cgpa="S2";
          }
           else if(S ==3){
          gpa="3rd_Semester";
          cgpa="S3";
          }
           else if(S ==4){
          gpa="4th_Semester";
          cgpa="S4";
          }
           else if(S ==5){
          gpa="5th_Semester";
          cgpa="S5";
          }
           else if(S ==6){
          gpa="6th_Semester";
          cgpa="S6";
          }
           else if(S ==7){
          gpa="7th_Semester";
          cgpa="S4";
          }
           else {
          gpa="8th_Semester";
          cgpa="S8";
          }
      try {

            Class.forName("com.mysql.jdbc.Driver");
            Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/pstu", "root", "");
            PreparedStatement ps5 = conn.prepareStatement("select "+gpa+","+cgpa+" from student1 WHERE Roll=1202002");
            ResultSet rs1 = ps5.executeQuery();
            while (rs1.next()) {
            String x=rs1.getString(gpa);
              double a=Double.parseDouble(x);
             NumberFormat format = NumberFormat.getInstance();
                format.setRoundingMode(RoundingMode.DOWN);
                format.setMaximumFractionDigits(2);
               gpa1= Double.parseDouble(format.format(a));
               
               
            String y=rs1.getString(cgpa);
             double b=Double.parseDouble(y);
             NumberFormat format1 = NumberFormat.getInstance();
                format1.setRoundingMode(RoundingMode.DOWN);
                format1.setMaximumFractionDigits(2);
               cgpa1= Double.parseDouble(format.format(b));
            }
           
            ps5.close();
            conn.close();
        } catch (Exception e) {
            System.out.println("Error" + e.getMessage());
        }
     try {

            Class.forName("com.mysql.jdbc.Driver");
            Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/pstu", "root", "");
            PreparedStatement ps5 = conn.prepareStatement("select "+cgpa+" from credit1 WHERE ID=1202002");
            ResultSet rs1 = ps5.executeQuery();
            while (rs1.next()) {
             credit=rs1.getString(cgpa);
           // double a=Double.parseDouble(credit);
             
            }
         
            conn.close();
        } catch (Exception e) {
            System.out.println("Error" + e.getMessage());
        }
    return null;
      }
}
