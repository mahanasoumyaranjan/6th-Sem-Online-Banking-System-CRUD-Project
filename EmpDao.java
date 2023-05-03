package Bank;
import java.util.*;
import java.sql.*;
public class EmpDao {
	public static int Save(EmpInfo e){
		int status = 0;
		try{
			Class.forName("oracle.jdbc.driver.OracleDriver");
			Connection conn = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system1","system");
			PreparedStatement ps = conn.prepareStatement("insert into employee values(?,?,?,?,?,?,?,?)");
			ps.setString(1, e.getName());
			ps.setString(2, e.getEmail());
			ps.setLong(3, e.getMobile());
			ps.setString(4, e.getPassword());
			ps.setString(5, e.getDob());
			ps.setString(6, e.getAddress());
			ps.setString(7, e.getGender());
			ps.setString(8, e.getEmp_type());
			status = ps.executeUpdate();
			conn.close();
		}catch(Exception e1){
			e1.printStackTrace();
		}
		return status;
	}
	public static List<EmpInfo> getAllEmp(){
		List<EmpInfo> list = new ArrayList<EmpInfo>();
		try{
			Class.forName("oracle.jdbc.driver.OracleDriver");
			Connection conn = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system1","system");
			PreparedStatement ps = conn.prepareStatement("select * from employee");
			ResultSet rs = ps.executeQuery();
			while(rs.next()){
				EmpInfo e = new EmpInfo();
				e.setName(rs.getString(1));
				e.setEmail(rs.getString(2));
				e.setMobile(rs.getLong(3));
				e.setPassword(rs.getString(4));
				e.setDob(rs.getString(5));
				e.setAddress(rs.getString(6));
				e.setGender(rs.getString(7));
				e.setEmp_type(rs.getString(8));
				list.add(e);
			}
			conn.close();
		}catch(Exception ob1){
			ob1.printStackTrace();
		}
		return list;
	}
	public static boolean validate(String name, String password){
		boolean status = false;
		try{
			Class.forName("oracle.jdbc.driver.OracleDriver");
			Connection conn = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system1","system");
			PreparedStatement ps = conn.prepareStatement("select * from employee where name=? and password=?");
			ps.setString(1, name);
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
