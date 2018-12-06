
import java.io.IOException;
import java.io.InputStream;
import java.nio.file.Paths;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
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

/**
 *
 * @author Hossen
 */

@WebServlet("/upload")
@MultipartConfig
public class Registration extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        Workbook workbook ;
        Sheet s;
        Cell rowData[];
        int rowCount;
        int columnCount;
           
           try {
               
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
                            String Roll="";
                            String Faculty="";
                            String Session="";
                           
                            
                            
                          for ( j = 0; j < columnCount; j++) {                 
                                try{
                                    switch (j) {
                                    case 0:
                                        Name= rowData[j].getContents();
                                        System.out.println("Name="+Name);
                                        break;
                                    case 1:
                                        Reg=rowData[j].getContents(); 
                                        System.out.println("ID="+Reg);
                                        break;
                                        case 2:
                                            Roll = rowData[j].getContents();
                                            System.out.println("Reg=" + Roll);
                                            break;
                                        case 3:
                                            Faculty = rowData[j].getContents();
                                            System.out.println("Attendance=" + Faculty);
                                            break;
                                        case 4:
                                            Session= rowData[j].getContents();
                                            System.out.println("MID=" + Session);
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
                        Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/pstu", "root", "");
                      
                            String query = "insert into student1(Name,Registration,Roll,Faculty,Session) values(?,?,?,?,?)";
                            PreparedStatement pstmt=con.prepareStatement(query);
                         
                            pstmt.setString(1, Name); // set input parameter 1
                            pstmt.setString(2, Reg); // set input parameter 2   
                           pstmt.setString(3, Roll);
                           pstmt.setString(4, Faculty);
                           pstmt.setString(5, Session);
                         
                            pstmt.executeUpdate(); // execute insert statement\
                             
                        }catch(Exception e){
                            System.out.println(e.getMessage() );
                             
                        }
 
                        }       
                         
                    }
            workbook.close(); 
            
        } catch (IndexOutOfBoundsException e) {
        
    }   catch (BiffException ex) {     
            Logger.getLogger(Registration.class.getName()).log(Level.SEVERE, null, ex);
        }     
       
    }
    
}
