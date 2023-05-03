package Bank;
import java.util.*;
import java.sql.*;
public class Admindao {
	public static boolean validate(String email, String password){
		boolean status = false;
		try{
			Class.forName("oracle.jdbc.driver.OracleDriver");
			Connection conn = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system1","system");
			PreparedStatement ps = conn.prepareStatement("select * from Admin where email=? and password=?");
			ps.setString(1, email);
			ps.setString(2, password);
			ResultSet rs = ps.executeQuery();
			status = rs.next();
			conn.close();
		}catch(Exception ob){
			ob.printStackTrace();
		}
		return status;
	}
}
