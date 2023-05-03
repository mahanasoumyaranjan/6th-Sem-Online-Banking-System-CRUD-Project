<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="Bank.*,java.util.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Bank Account List</title>
<style>

.styled-table {
    border-collapse: collapse;
    margin: 25px 0;
    font-size: 0.9em;
    font-family: sans-serif;
    min-width: 400px;
    box-shadow: 0 0 20px rgba(0, 0, 0, 0.15);
}
.styled-table thead tr {
    background-color: #009879;
    color: #ffffff;
    text-align: left;
}
.styled-table th,
.styled-table td {
    padding: 12px 15px;
}
.styled-table tbody tr {
    border-bottom: 1px solid #dddddd;
}

.styled-table tbody tr:nth-of-type(even) {
    background-color: #f3f3f3;
}

.styled-table tbody tr:last-of-type {
    border-bottom: 2px solid #009879;
}
.styled-table tbody tr.active-row {
    font-weight: bold;
    color: #009879;
}
a{
font-size:20px;
text-align:center;
text-decoration:none;
}
table{
text-align:center;
align-items:center;
}
body{
background-color:#D6EAF8;
}
</style>
</head>
<body>
<%
List<Account1Info> list = Account1Dao.getAllInfo();
out.println("<table class='styled-table'>");
out.println("<thead><tr><th>Account Holder Name</th><th>Email</th><th>Mobile Number</th><th>DOB</th><th>Account Number</th><th>Date of Opening</th><th>Avl. Balance</th></tr></thead>");
for(Account1Info u:list){
	out.println("<tbody><tr><td>"+u.getName()+"</td><td>"+u.getEmail()+"</td><td>"+u.getMobile()+"</td><td>"+u.getDob()+"</td><td>"+u.getAcc_no()+"</td><td>"+u.getToday()+"</td><td>"+u.getBalance()+"</td></tr></tbody>");
}
out.println("</table></body></html>");
%>
<a href="Employee.jsp">Go Back</a>
<%
%>
</body>
</html>