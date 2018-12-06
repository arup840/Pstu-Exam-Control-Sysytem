
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import jxl.Cell;
import jxl.Sheet;
import jxl.Workbook;
import jxl.WorkbookSettings;
import jxl.read.biff.BiffException;


public class NewClass {
    
    public void contentReading(String filePath)  throws Exception {
       // WorkbookSettings ws ;
        Workbook workbook ;
        Sheet s;
        Cell rowData[];
        int rowCount;
        int columnCount;
       
  try {
             FileInputStream fs= new FileInputStream(new File(filePath));      
          //  ws = new WorkbookSettings();
            workbook = Workbook.getWorkbook(fs);
   
                String sheetName="";
               
                    sheetName=workbook.getSheet(0).getName();
                    System.out.println("Sheet Name:" + sheetName);
 
                    s = workbook.getSheet(0);
                    System.out.println("Total Rows inside Sheet:" + s.getRows());
                    rowCount = s.getRows();
 
                    System.out.println("Total Column inside Sheet:" + s.getColumns());
                    columnCount = s.getColumns();
 
                    String at[]=new String[columnCount];
                    rowData = s.getRow(0);   
                    
                    String column="";
                    String values="";
                    for(int i=0;i<columnCount;i++){
                    at[i]=rowData[i].getContents();
                    if(i>1){
                    column=column+","+at[i];
                    values=values+","+"'1'";}
                    }
                    System.out.println(column);
                    System.out.println(values);
                    for(int i=0;i<columnCount-2;i++){
                        System.out.println(at[i]);
                    }
                    
                    
                    
                    //Reading Individual Row Content
                    for (int i = 1; i < rowCount; i++) {
                        //Get Individual Row
                        rowData = s.getRow(i);                      
                        if (rowData[0].getContents().length() != 0) { // the first date column must not null
                            int j=0;
                       
                            
                            String Reg="";
                            String ID="";
                            
                            
                            
                          for ( j = 0; j < columnCount; j++) {                 
                                try{
                                    switch (j) {
                                    case 0:
                                        ID= rowData[j].getContents();
                                       
                                        break;
                                    case 1:
                                        Reg=rowData[j].getContents(); 
                                        
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
                        Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/janu_jun_2014", "root", "");
                      
                            String query = "insert into cse_enrollment1(ID,Registration "+column+") values('"+ID+"','"+Reg+"'"+values+")";
                            System.out.println(query);
                            PreparedStatement pstmt=con.prepareStatement(query);
                         
                           
                            pstmt.executeUpdate(); // execute insert statement\
                             
                        }catch(ClassNotFoundException | SQLException e){
                            System.out.println(e.getMessage() );
                             
                        }
 
                        }       
                         
                    }
            workbook.close(); 
            
        } catch (IOException | BiffException | IndexOutOfBoundsException e) {
        
    }}
      public static void main(String[] args) {
        try {
            NewClass xlReader = new NewClass();
            xlReader.contentReading("C:\\Users\\Hossen\\Desktop\\B.xls");
        } catch (Exception e) {
        }
    }
}
