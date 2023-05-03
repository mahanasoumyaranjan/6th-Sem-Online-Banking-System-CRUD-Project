<%@page import="java.sql.Date"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="Bank.*,java.util.*,java.text.SimpleDateFormat" %>
    <%@ page import="javax.servlet.*,javax.servlet.http.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Deposit Amount</title>
</head>
<body>
<%
int acc_no = Integer.parseInt(request.getParameter("acc_no"));
int balance = Integer.parseInt(request.getParameter("balance"));
session.setAttribute("acc_no", acc_no);
TransactionInfo t = new TransactionInfo(acc_no,balance);
TransactionDao.save(t);
if(!AccountDao.Bal_Check(acc_no, balance)){
	%>
	<h3>Withdraw balance exceeded from available balance!!!!!!</h3>
	<jsp:include page="CustomerDashboard.jsp"></jsp:include>
	<%
}else{
	int i = AccountDao.Withdraw(acc_no, balance);
	if(i>0){
		%>
		<h3>Dear customer, plz visit any employee section to collect your cash Amount=<%=balance %>,your withdraw is successful</h3>
		<button class="btn btn-primary"><a href="transactions.jsp" style="text-decoration:none;">Check Your Transactions</a></button>
		<jsp:include page="CustomerDashboard.jsp"></jsp:include>
		<%
	}else{
		%>
		<h3>Withdraw balance should be lower than the available balance</h3>
		<jsp:include page="CustomerDashboard.jsp"></jsp:include>
		<%
	}
}
	%>
</body>
</html>