/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Mark;

import static java.lang.System.out;
import java.math.RoundingMode;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.text.NumberFormat;

public class GPA {

    double result1 = 0;
    double fCredit = 0;
    public static String PCCH = "0";
    public static String seme = "0";
     public static String sm = "0";

    public double gpa(double a, double b) {
        double credit = a;
        double Grade = b;
        double result = credit * Grade;
        result1 = result1 + result;
        return result1;
    }

    public double failCredit(double credit, double gp) {
        if (gp == 0) {
            fCredit = fCredit + credit;
        }
        return fCredit;
    }

    public double mygpa(String i, double point, String Semeter) {

        String id = i;
        double cgpa = point;
        String semeter = Semeter;

        try {
            Class.forName("com.mysql.jdbc.Driver");
            Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/pstu", "root", "");
            PreparedStatement psa = conn.prepareStatement("Update student1 SET " + semeter + " = " + cgpa + " WHERE Roll=" + id + "");

            out.print("Inserted");
            psa.executeUpdate();
            conn.close();
        } catch (Exception e) {

        }

        return 0;

    }

    public double myResult(String id, String Semester) {
        double result = 0;
        double a=0;
        try {
            Class.forName("com.mysql.jdbc.Driver");
            Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/pstu", "root", "");
            PreparedStatement ps = conn.prepareStatement("select " + Semester + " from student1 WHERE Roll=" + id + "");
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                result = rs.getDouble(Semester);
                
                NumberFormat format = NumberFormat.getInstance();
                format.setRoundingMode(RoundingMode.DOWN);
                format.setMaximumFractionDigits(2);
               a= Double.parseDouble(format.format(result));
            }
           conn.close();

        } catch (Exception e) {
            System.out.println("Error is:== " + e.getMessage());

        }

        return a;
    }

    public static String previousCCH(String semester, String roll) {
        //System.out.println(semester);
        String seme = "0";
        String PCCH = "0";

        if (semester.equals("1st_Semester")) {
            return PCCH;

        } else if (semester.equals("2nd_Semester")) {
            seme = "S1";

        } else if (semester.equals("3rd_Semester")) {
            seme = "S2";
        } else if (semester.equals("4th_Semester")) {
            seme = "S3";
        } else if (semester.equals("5th_Semester")) {
            seme = "S4";
        } else if (semester.equals("6th_Semester")) {
            seme = "S5";
        } else if (semester.equals("7th_Semester")) {
            seme = "S6";
        } else {

            seme = "S7";
        }
//System.out.println(seme);
        try {

            Class.forName("com.mysql.jdbc.Driver");
            Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/pstu", "root", "");
            PreparedStatement ps4 = conn.prepareStatement("select * from credit1 WHERE ID=" + roll + "");
            ResultSet rs1 = ps4.executeQuery();
            while (rs1.next()) {
                PCCH = rs1.getString(seme);
               // System.out.println("csjkdnsj=" + PCCH);
            }
            ps4.close();
            conn.close();
        } catch (Exception e) {
            System.out.println("Error" + e.getMessage());
        }

        return PCCH;
    }

    public static String CCH(String semester, String roll) {

        String PCCH = "0";

        if (semester.equals("1st_Semester")) {
            seme = "S1";

        } else if (semester.equals("2nd_Semester")) {
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
        } else {

            seme = "S8";
        }

        try {

            Class.forName("com.mysql.jdbc.Driver");
            Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/pstu", "root", "");
            PreparedStatement ps5 = conn.prepareStatement("select * from credit1 WHERE ID=" + roll + "");
            ResultSet rs1 = ps5.executeQuery();
            while (rs1.next()) {
                PCCH = rs1.getString(seme);
                //System.out.println("csjkdnsj=" + PCCH);
            }
            conn.close();
        } catch (Exception e) {
            System.out.println("Error" + e.getMessage());
        }
        return PCCH;
    }

    public static double insertCompleteCredit(String roll, double c, String Semester) {
        
                 if (Semester.equals("1st_Semester")) {
                    sm = "S1";
                } else if (Semester.equals("2nd_Semester")) {
                    sm= "S2";
                } else if (Semester.equals("3rd_Semester")) {
                    sm = "S3";
                } else if (Semester.equals("4th_Semester")) {

                    sm = "S4";
                } else if (Semester.equals("5th_Semester")) {
                    sm = "S5";
                } else if (Semester.equals("6th_Semester")) {
                    sm = "S6";
                } else if (Semester.equals("7th_Semester")) {
                     sm = "S7";
                } else {
                     sm = "S8";
                }
            
       double pc=Double.parseDouble(GPA.previousCCH(Semester,roll));
            
            
            try {

                double a = c;
                double ab=pc+a;
                Class.forName("com.mysql.jdbc.Driver");
                Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/pstu", "root", "");
                String s = "Update credit1 SET "+sm+" = " + ab + " WHERE ID = " + roll + " ";
                PreparedStatement ps6 = conn.prepareStatement(s);

                ps6.executeUpdate();
                conn.close();
            } catch (Exception e) {
                System.out.println("Error" +e.getMessage());
            }
        

        return 0;
    }

}
