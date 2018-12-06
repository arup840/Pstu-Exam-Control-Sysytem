/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Mark;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import jdbc_connection.Connection1;

public class GradeCalculation {

    public  String  grade( String a,String b) {
      
         String id=a;
         String Course_Code=b;
        String grade="0";
        try {
           // Class.forName("com.mysql.jdbc.Driver");
          //  Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/session2013-14", "root", "");
            Connection conn=Connection1.getCon();
            PreparedStatement ps9 = conn.prepareStatement("SELECT Total from " + Course_Code + " WHERE ID=" + id + " ");
            ResultSet rs = ps9.executeQuery();
            while (rs.next()) {
                int Mark = Integer.parseInt(rs.getString("Total"));

                if (Mark >= 80) {
                    grade="A+";
                    
                } else if (Mark >= 75 && Mark < 80) {
                    grade="A";
                   
                } else if (Mark >= 70 && Mark < 75) {
                    grade="A-";
                   
                } else if (Mark >= 65 && Mark < 70) {
                    grade="B+";
                    
                } else if (Mark >= 60 && Mark < 65) {
                    grade="B";
                    
                } else if (Mark >= 55 && Mark < 60) {
                    grade="B-";
                   

                } else if (Mark >= 50 && Mark < 55) {
                    grade="C+";
                   
                } else if (Mark >= 45 && Mark < 50) {
                    grade="C";
                   
                } else if (Mark >= 40 && Mark < 45) {
                     grade="D";
                   
                } else {
                    grade="F";
                }
            }
            ps9.close();
            conn.close();
        } catch (Exception e) {
            System.out.println("Error"+e.getMessage());
        }
        
    return grade;
    }
    
    
    
    
    public  double  point( String a,String b) {
      
         String id=a;
         String Course_Code=b;
       double grade=0;
        try {
           Connection conn=Connection1.getCon();
            PreparedStatement ps = conn.prepareStatement("SELECT Total from " + Course_Code + " WHERE ID=" + id + " ");
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                int Mark = Integer.parseInt(rs.getString("Total"));

                if (Mark >= 80) {
                    grade=4.00;
                   
                } else if (Mark >= 75 && Mark < 80) {
                    grade=3.75;
                    
                } else if (Mark >= 70 && Mark < 75) {
                    grade=3.50;
                   
                } else if (Mark >= 65 && Mark < 70) {
                    grade=3.25;
                  
                } else if (Mark >= 60 && Mark < 65) {
                    grade=3.00;
                   
                } else if (Mark >= 55 && Mark < 60) {
                    grade=2.75;
                   

                } else if (Mark >= 50 && Mark < 55) {
                    grade=2.50;
                   
                } else if (Mark >= 45 && Mark < 50) {
                    grade=2.25;
                    
                } else if (Mark >= 40 && Mark < 45) {
                     grade=2.00;
                   
                } else {
                    grade=0.00;
                }
            }
            ps.close();
            conn.close();
        } catch (Exception e) {
            System.out.println("Error"+e.getMessage());
        }
        
    return grade;
    }
    
    public static double total_Credit(String sm ){
        
        double Total=0;
        try{
        Class.forName("com.mysql.jdbc.Driver");
            Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/pstu", "root", "");
           
            PreparedStatement ps2 = conn.prepareStatement("SELECT Credit_Hours from courses1 WHERE Course_Code LIKE '%"+sm+"_'");
            ResultSet rs2 = ps2.executeQuery();
             
            while(rs2.next()){
           
            double credit=Double.parseDouble(rs2.getString("Credit_Hours"));
            Total=Total+credit;
            //System.out.println(Total);
            
            }
    ps2.close();
    conn.close();
    
        }
        catch(Exception e){
            System.out.println(e.getMessage());
        
        }
        
   return Total;
    }
    
}
