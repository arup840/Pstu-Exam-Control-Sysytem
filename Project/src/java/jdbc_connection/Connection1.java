
package jdbc_connection;
import java.sql.Connection;
import java.sql.DriverManager;

public class Connection1 {
     public static Connection getCon()
	    {
	        Connection con=null;
	        try
	        {
	        Class.forName("com.mysql.jdbc.Driver");
	        con= DriverManager.getConnection("jdbc:mysql://localhost:3306/session2013-14","root","");
	        }
	        catch(Exception e)
	        {
	            e.printStackTrace();
	        }

	        return con;        
	    }
    
}
