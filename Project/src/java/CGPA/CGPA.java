package CGPA;

import static java.lang.System.out;
import java.math.RoundingMode;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.text.NumberFormat;

public class CGPA {

    public static double cgpa = 0;
   // public static String seme2 = "0";
    public static String seme="";
   public static double insertCGPA(String semester, double gpa, String roll, double c) {
       double gpa1=gpa;
    if(semester.equals("1st_Semester")){
        seme="S1";
        }
        
        else if (semester.equals("2nd_Semester")) {
            seme = "S2";

        } else if (semester.equals("3rd_Semester")) {
            seme = "S3";
        } else if (semester.equals("4th_Semester")) {
            seme = "S4";
        } else if (semester.equals("5th_Semester")) {
            seme = "S5";
        } else if (semester.equals("6th_Semester")) {
            seme = "S6";
        } else if (semester.equals("7th_Semester")) {
            seme = "S7";
        } else if(semester.equals("8th_Semester")){

            seme = "S8";
        }
       
     
     
        
        if (semester == "1st_Semester") {
            cgpa = gpa1;
        } else {
            
            
            try {
                Class.forName("com.mysql.jdbc.Driver");
                Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/pstu", "root", "");
                PreparedStatement ps1 = conn.prepareStatement("select * FROM student1 WHERE Roll=" + roll + "");
                 ResultSet rs = ps1.executeQuery();
                 
                PreparedStatement ps2 = conn.prepareStatement("select * FROM credit1 WHERE ID=" + roll + "");
                ResultSet rs1 = ps2.executeQuery();
                while (rs.next() && rs1.next()) {
                    
                    if (semester == "2nd_Semester") {
                        Double s1 = Double.parseDouble(rs.getString("S1"));
                        //System.out.println(s1);
                        Double c1 = Double.parseDouble(rs1.getString("S1"));
                       // System.out.println(s1+",,,"+c1);

                        cgpa = ((s1 * c1) + (gpa * c))/ (c + c1);
                    } else if (semester == "3rd_Semester") {
                        Double s1 = Double.parseDouble(rs.getString("S2"));
                        Double c1 = Double.parseDouble(rs1.getString("S2"));

                        cgpa = ((s1 * c1) + (gpa * c) )/ (c + c1);
                    } else if (semester == "4th_Semester") {
                        Double s1 = Double.parseDouble(rs.getString("S3"));
                        Double c1 = Double.parseDouble(rs1.getString("S3"));

                        cgpa = ((s1 * c1) + (gpa * c) )/ (c + c1);
                    } else if (semester == "5th_Semester") {
                        Double s1 = Double.parseDouble(rs.getString("S4"));
                        Double c1 = Double.parseDouble(rs1.getString("S4"));

                        cgpa = ((s1 * c1) + (gpa * c)) / (c + c1);
                    } else if (semester == "6th_Semester") {
                        Double s1 = Double.parseDouble(rs.getString("S5"));
                        Double c1 = Double.parseDouble(rs1.getString("S5"));

                        cgpa = ((s1 * c1) + (gpa * c)) / (c + c1);
                    } else if (semester == "7th_Semester") {
                        Double s1 = Double.parseDouble(rs.getString("S6"));
                        Double c1 = Double.parseDouble(rs1.getString("S6"));

                        cgpa = ((s1 * c1) + (gpa * c)) / (c + c1);
                    } else {
                        Double s1 = Double.parseDouble(rs.getString("S7"));
                        Double c1 = Double.parseDouble(rs1.getString("S7"));

                        cgpa = ((s1 * c1) + (gpa * c))/ (c + c1);
                    }

                }
                ps1.close();
                ps2.close();
                conn.close();
            } catch (Exception e) {
                System.out.println("Error:" + e.getMessage());
            }

        }

       
        System.out.println(seme);
        try {
            //System.out.println(cgpa);
            Class.forName("com.mysql.jdbc.Driver");
            Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/pstu", "root", "");
            PreparedStatement psa = conn.prepareStatement("Update student1 SET "+seme+"  = " + cgpa + " WHERE Roll=" + roll + "");

            out.print("Inserted");
            psa.executeUpdate();
            psa.close();
            conn.close();

        } catch (Exception e) {
            System.out.println("eror:"+e.getMessage());
        }

   return 0;    
    }
    
    
    public static String previousCGPA(String semester, String roll) {
        String seme1 = "0";
        String a = "0";

        if (semester == "1st_Semester") {
            return a;

        } else if (semester.equals("2nd_Semester")) {
            seme1 = "S1";

        } else if (semester.equals("3rd_Semester")) {
            seme1 = "S2";
        } else if (semester.equals("4th_Semester")) {
            seme1 = "S3";
        } else if (semester.equals("5th_Semester")) {
            seme1 = "S4";
        } else if (semester.equals("6th_Semester")) {
            seme1 = "S5";
        } else if (semester.equals("7th_Semester")) {
            seme1 = "S6";
        } else {

            seme1 = "S7";
        }

        try {

            Class.forName("com.mysql.jdbc.Driver");
            Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/pstu", "root", "");
            PreparedStatement ps4 = conn.prepareStatement("select * from student1 WHERE Roll=" + roll + "");
            ResultSet rs1 = ps4.executeQuery();
            while (rs1.next()) {
              String  PCCH = rs1.getString(seme1);
                //System.out.println("csjkdnsj=" + PCCH);
              double aa=Double.parseDouble(PCCH);
                 NumberFormat format = NumberFormat.getInstance();
                format.setRoundingMode(RoundingMode.DOWN);
                format.setMaximumFractionDigits(2);
                a = format.format(aa);
            }
            ps4.close();
            conn.close();
        } catch (Exception e) {
            System.out.println("Error" + e.getMessage());
        }

        return a;
    }
    
    
    

    public static String CGPA1( String semester,String roll) {
        //String semester="1st_Semester";
        //String roll="1202002";
        String a = "0";
        String seme2="0";
        if (semester == "1st_Semester") {
            seme2 = "S1";

        } else if (semester.equals("2nd_Semester")) {
            seme2 = "S2";

        } else if (semester.equals("3rd_Semester")) {
            seme2 = "S3";
        } else if (semester.equals("4th_Semester")) {
            seme2 = "S4";
        } else if (semester.equals("5th_Semester")) {
            seme2 = "S5";
        } else if (semester.equals("6th_Semester")) {
            seme2 = "S6";
        } else if (semester.equals("7th_Semester")) {
            seme2 = "S7";
        } else {

            seme2 = "S8";
        }

        try {

            Class.forName("com.mysql.jdbc.Driver");
            Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/pstu", "root", "");
            PreparedStatement ps5 = conn.prepareStatement("select * from student1 WHERE Roll=" + roll + "");
            ResultSet rs1 = ps5.executeQuery();
            while (rs1.next()) {
              String  PCCH = rs1.getString(seme2);
                //System.out.println("csjkdnsj=" + PCCH);
              double aa=Double.parseDouble(PCCH);
                 NumberFormat format = NumberFormat.getInstance();
  format.setRoundingMode(RoundingMode.DOWN);
  format.setMaximumFractionDigits(2);
   a=format.format(aa);
            }
            ps5.close();
            conn.close();
        } catch (Exception e) {
            System.out.println("Error" + e.getMessage());
        }
        return a;
    }
    
   
}
