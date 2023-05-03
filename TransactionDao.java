package Bank;
import java.util.*;
import java.util.Date;
import java.sql.*;
import java.time.*;
import java.text.SimpleDateFormat;
public class TransactionDao {
	public static int save(TransactionInfo u){
		int status = 0;
		try {
			java.sql.Date currentDate=new java.sql.Date(System.currentTimeMillis());
			Class.forName("oracle.jdbc.driver.OracleDriver");
			Connection conn = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system1","system");
			PreparedStatement ps = conn.prepareStatement("insert into transaction values(?,?,?)");
			ps.setInt(1, u.getAcc_no());
			ps.setInt(2, u.getBalance());
			ps.setDate(3, currentDate);
			status = ps.executeUpdate();
			conn.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return status;
	}
	public static List<TransactionInfo> getAllTransaction(int acc_no1){
		List<TransactionInfo> list = new ArrayList<TransactionInfo>();
		try{
			Class.forName("oracle.jdbc.driver.OracleDriver");
			Connection conn = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system1","system");
			PreparedStatement ps = conn.prepareStatement("select * from transaction where acc_no=?");
			ps.setInt(1, acc_no1);
			ResultSet rs = ps.executeQuery();
			while(rs.next()){
				TransactionInfo t = new TransactionInfo();
				t.setAcc_no(rs.getInt(1));
				t.setBalance(rs.getInt(2));
				t.setToday(rs.getDate(3));
				list.add(t);
			}
			conn.close();
		}catch(Exception ob1){
			ob1.printStackTrace();
		}
		return list;
	}
}
