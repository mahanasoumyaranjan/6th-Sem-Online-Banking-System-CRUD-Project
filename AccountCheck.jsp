<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="Bank.*" %>
    <%@page import="javax.servlet.*,javax.servlet.http.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Account Check</title>
</head>
<body>
<%
String email2 = request.getParameter("email");
long mobile = Long.parseLong(request.getParameter("mobile"));
int acc_no1 = Integer.parseInt(request.getParameter("acc_no"));
int balance = Integer.parseInt(request.getParameter("balance"));
String today = request.getParameter("tday");
String type= request.getParameter("type");
AccountInfo a = new AccountInfo();
a.setEmail(email2);
a.setMobile(mobile);
a.setAcc_no(acc_no1);
a.setBalance(balance);
a.setToday(today);
a.setType(type);
if(!CustomerDao.Check_Email(email2)){
	%>
	<h2 style="color:orange;">Customer is not added yet, to open an account Customer needs to add</h2>
	<jsp:include page="AccountForm.html"></jsp:include>
	<%
}else if(AccountDao.Check_Email(email2)){
	%>
	<h2 style="color:orange;">This Bank account is already exist, please try with different account</h2>
	<jsp:include page="AccountForm.html"></jsp:include>
	<%
}else if(AccountDao.Check_Account(acc_no1)){
	%>
	<h2 style="color:orange;">Account number is already exist with some other Bank Account</h2>
	<jsp:include page="AccountForm.html"></jsp:include>
	<%
}else{
	int i = AccountDao.save(a);
	if(i>0){
		%>
		<h2 style="color:orange;">Bank account has been created succesfully!!!</h2>
		<jsp:include page="Employee.jsp"></jsp:include>
		<%
	}else{
		%>
		<h2 style="color:orange;">Unable to process your request!!!</h2>
		<jsp:include page="AccountForm.html"></jsp:include>
		<%
	}
}
%>
</body>
</html>