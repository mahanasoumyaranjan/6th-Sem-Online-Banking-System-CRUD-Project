<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="Bank.*,java.util.*" %>
    <%@ page import="javax.servlet.*,javax.servlet.http.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Account Balance</title>
<style>
a:link {
  color: red;
}

/* visited link */
a:visited {
  color: green;
}

/* mouse over link */
a:hover {
  color: hotpink;
}

/* selected link */
a:active {
  color: blue;
}
</style>
</head>
<body>
<div class="container">
<div class="row">
<div class="col">
<%
String email = (String)session.getAttribute("email");
List<AccountInfo> list = AccountDao.getBalance(email);
for(AccountInfo u:list){
	%>
	<h2>
	<%
	out.println("Your account no xxxxxx has balance Rs."+u.getBalance()+".00 ");
	out.println("<br>");
	out.print("<a href='CustomerDashboard.jsp'>Close</a>");
	%>
	</h2>
	<%
}
%>
</div>
</div>
</div>
</body>
</html>