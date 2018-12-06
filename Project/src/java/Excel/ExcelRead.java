
package Excel;

import java.io.IOException;
import java.io.InputStream;
import java.io.PrintWriter;
import java.nio.file.Paths;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;
import jxl.Cell;
import jxl.Sheet;
import jxl.Workbook;
import jxl.read.biff.BiffException;
@WebServlet("/upload")
@MultipartConfig

public class ExcelRead extends HttpServlet {


    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
         PrintWriter out=response.getWriter();
         Workbook workbook ;
        Sheet s;
        Cell rowData[];
        int rowCount;
        int columnCount;
           
           try {
               String subject=request.getParameter("sub");
    String description = request.getParameter("description"); // Retrieves <input type="text" name="description">
    Part filePart = request.getPart("file"); // Retrieves <input type="file" name="file">
    String fileName = Paths.get(filePart.getSubmittedFileName()).getFileName().toString(); // MSIE fix.
    InputStream fileContent = filePart.getInputStream();
      
             // fs= new FileInputStream(new File(fileContent));      
          //  ws = new WorkbookSettings();
            workbook = Workbook.getWorkbook(fileContent);
   
                String sheetName="";
               
                    sheetName=workbook.getSheet(0).getName();
                    System.out.println("Sheet Name:" + sheetName);
 
                    s = workbook.getSheet(0);
                    System.out.println("Total Rows inside Sheet:" + s.getRows());
                    rowCount = s.getRows();
 
                    System.out.println("Total Column inside Sheet:" + s.getColumns());
                    columnCount = s.getColumns();
 
                    //Reading Individual Row Content
                    for (int i = 1; i < rowCount; i++) {
                        //Get Individual Row
                        rowData = s.getRow(i);                      
                        if (rowData[0].getContents().length() != 0) { // the first date column must not null
                            int j=0;
                       
                            String Name="";
                            String Reg="";
                            String ID="";
                            String AT="";
                            String Mid="";
                            String Assign="";
                            String Final="";
                            String Total="";
                            
                            
                          for ( j = 0; j < columnCount; j++) {                 
                                try{
                                    switch (j) {
                                    case 0:
                                        Name= rowData[j].getContents();
                                        System.out.println("Name="+Name);
                                        break;
                                    case 1:
                                        ID=rowData[j].getContents(); 
                                        System.out.println("ID="+ID);
                                        break;
                                        case 2:
                                            Reg = rowData[j].getContents();
                                            System.out.println("Reg=" + Reg);
                                            break;
                                        case 3:
                                            AT = rowData[j].getContents();
                                            System.out.println("Attendance=" + ID);
                                            break;
                                        case 4:
                                            Mid = rowData[j].getContents();
                                            System.out.println("MID=" + Mid);
                                            break;
                                        case 5:
                                            Assign = rowData[j].getContents();
                                            System.out.println(" Assign=" +  Assign);
                                            break;
                                        case 6:
                                            Final = rowData[j].getContents();
                                            System.out.println("Final=" + Final);
                                            break;
                                        case 7:
                                            Total = rowData[j].getContents();
                                            System.out.println("Total=" + Total);
                                        
                                            break;
                                        default:
                                            break;
                                    }
                                }catch (Exception e) {
                                    System.out.print(e);
                                }
                            }
                        try{ 
                            
                             Class.forName("com.mysql.jdbc.Driver");
                        Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/practice", "root", "");
                      
                            String query = "insert into "+subject+" values(?,?,?,?,?,?,?,?)";
                            PreparedStatement pstmt=con.prepareStatement(query);
                         
                            pstmt.setString(1, Name); // set input parameter 1
                            pstmt.setString(2, ID); // set input parameter 2   
                           pstmt.setString(3, Reg);
                           pstmt.setString(4, AT);
                           pstmt.setString(5, Mid);
                           pstmt.setString(6, Assign);
                           pstmt.setString(7, Final);
                           pstmt.setString(8, Total);
                           if(i==(rowCount-1)){
                          out.println("Succesfully Uploaded");}
                           pstmt.executeUpdate(); // execute insert statement\
                             
                        }catch(ClassNotFoundException | SQLException e){
                            System.out.println(e.getMessage() );
                             
                        }
 
                        }       
                         
                    }
                    
            workbook.close(); 
               System.out.println("Succesful");
        } catch (IndexOutOfBoundsException e) {
               System.out.println(e.getMessage());
               System.out.println("Sorry");
        
    }      catch (BiffException ex) {
               Logger.getLogger(ExcelRead.class.getName()).log(Level.SEVERE, null, ex);
           }
     
   
       
    }
}
   