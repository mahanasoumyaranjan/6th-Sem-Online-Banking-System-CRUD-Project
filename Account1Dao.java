package Bank;
import java.util.*;
import java.sql.*;
public class Account1Dao {
	public static List<Account1Info> getAllInfo(){
		List<Account1Info> list = new ArrayList<Account1Info>();
		try{
			Class.forName("oracle.jdbc.driver.OracleDriver");
			Connection conn = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system1","system");
			PreparedStatement ps = conn.prepareStatement("select customer.name, customer.email, customer.mobile, customer.dob, account.acc_no, account.today, account.balance from customer ,account where customer.email=account.email and customer.mobile = account.mobile");
			ResultSet rs = ps.executeQuery();
			while(rs.next()){
				Account1Info u = new Account1Info();
				u.setName(rs.getString(1));
				u.setEmail(rs.getString(2));
				u.setMobile(rs.getLong(3));
				u.setDob(rs.getString(4));
				u.setAcc_no(rs.getInt(5));
				u.setToday(rs.getString(6));
				u.setBalance(rs.getInt(7));
				list.add(u);
			}
			conn.close();
		}catch(Exception ob1){
			ob1.printStackTrace();
		}
		return list;
	}
}
