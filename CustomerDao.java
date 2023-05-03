package Bank;
import java.util.*;
import java.sql.*;
public class CustomerDao {
	public static int save(CustomerInfo u){
		int status = 0;
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
			Connection conn = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system1","system");
			PreparedStatement ps = conn.prepareStatement("insert into customer values(?,?,?,?,?,?)");
			ps.setString(1, u.getName());
			ps.setString(2, u.getEmail());
			ps.setString(3, u.getPassword());
			ps.setLong(4, u.getMobile());
			ps.setString(5, u.getDob());
			ps.setString(6, u.getGender());
			status = ps.executeUpdate();
			conn.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return status;
	}
	public static List<CustomerInfo> getAllUsers(){
		List<CustomerInfo> list = new ArrayList<CustomerInfo>();
		try{
			Class.forName("oracle.jdbc.driver.OracleDriver");
			Connection conn = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system1","system");
			PreparedStatement ps = conn.prepareStatement("select * from customer");
			ResultSet rs = ps.executeQuery();
			while(rs.next()){
				CustomerInfo u = new CustomerInfo();
				u.setName(rs.getString(1));
				u.setEmail(rs.getString(2));
				u.setPassword(rs.getString(3));
				u.setMobile(rs.getLong(4));
				u.setDob(rs.getString(5));
				u.setGender(rs.getString(6));
				list.add(u);
			}
			conn.close();
		}catch(Exception ob1){
			ob1.printStackTrace();
		}
		return list;
	}
	public static boolean Check_Email(String email2){
		boolean status = false;
		try{
			String email1 = "";
			Class.forName("oracle.jdbc.driver.OracleDriver");
			Connection conn = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system1","system");
			PreparedStatement ps = conn.prepareStatement("select email from customer where email=?");
			ps.setString(1, email2);
			ResultSet rs = ps.executeQuery();
			while(rs.next()){
				email1 = rs.getString("email");
				if(email2.equals(email1)){
					status = true;
				}else{
					status = false;
				}
			}
		}catch(Exception e1){
			e1.printStackTrace();
		}
		return status;
	}
	public static boolean Validate(String name, String email, String mobile, String password){
		boolean status = false;
		try{
			Class.forName("oracle.jdbc.driver.OracleDriver");
			Connection conn = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system1","system");
			PreparedStatement ps = conn.prepareStatement("select * from customer where name=? and email=? and mobile=? and password=?");
			ps.setString(1, name);
			ps.setString(2, email);
			ps.setString(3, mobile);
			ps.setString(4, password);
			ResultSet rs = ps.executeQuery();
			status = rs.next();
			conn.close();
		}catch(Exception r){
			r.printStackTrace();
		}
		return status;
	}
}
