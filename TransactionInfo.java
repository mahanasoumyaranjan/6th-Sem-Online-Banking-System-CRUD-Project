package Bank;

import java.sql.Date;

public class TransactionInfo {
	private int acc_no, balance;
	private Date today;
public TransactionInfo(){
		
	}
	public TransactionInfo(int acc_no, int balance){
		super();
		this.acc_no = acc_no;
		this.balance = balance;
	}
	public int getAcc_no() {
		return acc_no;
	}

	public void setAcc_no(int acc_no) {
		this.acc_no = acc_no;
	}

	public int getBalance() {
		return balance;
	}

	public void setBalance(int balance) {
		this.balance = balance;
	}

	public Date getToday() {
		return today;
	}

	public void setToday(Date today) {
		this.today = today;
	}

}
