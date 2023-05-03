package Bank;
import java.util.*;
import java.sql.*;
public class AccountDao {
	public static boolean Check_Email(String email2){
		boolean status = false;
		try{
			String email1 = "";
			Class.forName("oracle.jdbc.driver.OracleDriver");
			Connection conn = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system1","system");
			PreparedStatement ps = conn.prepareStatement("select email from account where email=?");
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
	public static boolean Check_Account(int acc_no1){
		boolean status = false;
		try{
			int a_number = 0;
			Class.forName("oracle.jdbc.driver.OracleDriver");
			Connection conn = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system1","system");
			PreparedStatement ps = conn.prepareStatement("select acc_no from account where acc_no=?");
			ps.setInt(1, acc_no1);
			ResultSet rs = ps.executeQuery();
			while(rs.next()){
				a_number = rs.getInt("acc_no");
				if(a_number == acc_no1){
					status = true;
				}else{
					status = false;
				}
			}
		}catch(Exception ob){
			ob.printStackTrace();
		}
		return status;
	}
	public static int save(AccountInfo u){
		int status = 0;
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
			Connection conn = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system1","system");
			PreparedStatement ps = conn.prepareStatement("insert into account values(?,?,?,?,?,?)");
			ps.setString(1, u.getEmail());
			ps.setLong(2, u.getMobile());
			ps.setInt(3, u.getAcc_no());
			ps.setInt(4, u.getBalance());
			ps.setString(5, u.getToday());
			ps.setString(6, u.getType());
			status = ps.executeUpdate();
			conn.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return status;
	}
	public static List<AccountInfo> getAllAccounts(){
		List<AccountInfo> list = new ArrayList<AccountInfo>();
		try{
			Class.forName("oracle.jdbc.driver.OracleDriver");
			Connection conn = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system1","system");
			PreparedStatement ps = conn.prepareStatement("select * from account");
			ResultSet rs = ps.executeQuery();
			while(rs.next()){
				AccountInfo u = new AccountInfo();
				u.setEmail(rs.getString(1));
				u.setMobile(rs.getLong(2));
				u.setAcc_no(rs.getInt(3));
				u.setBalance(rs.getInt(4));
				u.setToday(rs.getString(5));
				u.setType(rs.getString(6));
				list.add(u);
			}
			conn.close();
		}catch(Exception ob1){
			ob1.printStackTrace();
		}
		return list;
	}
	public static List<AccountInfo> getBalance(String email10){
		List<AccountInfo> list = new ArrayList<AccountInfo>();
		boolean status = false;
		try{
			String email1 = "";
			Class.forName("oracle.jdbc.driver.OracleDriver");
			Connection conn = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system1","system");
			PreparedStatement ps = conn.prepareStatement("select acc_no, balance from account where email=?");
			ps.setString(1, email10);
			ResultSet rs = ps.executeQuery();
			while(rs.next()){
				AccountInfo u = new AccountInfo();
				u.setAcc_no(rs.getInt(1));
				u.setBalance(rs.getInt(2));
				list.add(u);
			}
			conn.close();
		}catch(Exception w){
			w.printStackTrace();
		}
		return list;
	}
	public static int Deposit(int acc_no1, int balance1){
		int status = 0;
		try{
			Class.forName("oracle.jdbc.driver.OracleDriver");
			Connection conn = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system1","system");
			PreparedStatement ps = conn.prepareStatement("update account set balance=balance+? where acc_no=?");
			ps.setInt(1, balance1);
			ps.setInt(2, acc_no1);
			status = ps.executeUpdate();
		}catch(Exception rt){
			rt.printStackTrace();
		}
		return status;
	}
	public static int Withdraw(int acc_no1, int balance1){
		int status = 0;
		try{
			Class.forName("oracle.jdbc.driver.OracleDriver");
			Connection conn = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system1","system");
			PreparedStatement ps = conn.prepareStatement("update account set balance=balance-? where acc_no=?");
			ps.setInt(1, balance1);
			ps.setInt(2, acc_no1);
			status = ps.executeUpdate();
		}catch(Exception rt){
			rt.printStackTrace();
		}
		return status;
	}
	public static boolean Bal_Check(int acc_no1, int amount){
		boolean status = false;
		try{
			int balance1 = 0;
			Class.forName("oracle.jdbc.driver.OracleDriver");
			Connection conn = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system1","system");
			PreparedStatement ps = conn.prepareStatement("select balance from account where acc_no=?");
			ps.setInt(1, acc_no1);
			ResultSet rs = ps.executeQuery();
			while(rs.next()){
				balance1 = rs.getInt("balance");
				if(balance1>=amount){
					status = true;
				}else{
					status = false;
				}
			}
		}catch(Exception q){
			q.printStackTrace();
		}
		return status;
	}
}
