package DBConnection;
import java.sql.*;
public class DBConnection {
	
	public static Connection con=null;
	static
	{
	try
	{
	
		Class.forName("oracle.jdbc.driver.OracleDriver");
		con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:orcl","c##amol2000","amolbhakare");
		
	}
	catch(Exception e)
	{
		e.printStackTrace();
	}
	}
	public static Connection getCon()
	{
		return con;
	}
}
