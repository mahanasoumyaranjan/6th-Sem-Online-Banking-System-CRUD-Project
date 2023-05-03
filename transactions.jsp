<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="Bank.*,java.util.*" %>
    <%@ page import="javax.servlet.*,javax.servlet.http.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Transactions Table</title>
</head>
<body>
<%
int acc_no = (int)session.getAttribute("acc_no");
List<TransactionInfo> list = TransactionDao.getAllTransaction(acc_no);
for(TransactionInfo u:list){
	%>
	<h2>Transaction on account XXXXXX is <%=u.getBalance() %> on <%=u.getToday() %></h2>	
	<%
}
%>
<a href="CustomerDashboard.jsp">Go Back</a>
<%
%>
</body>
</html>