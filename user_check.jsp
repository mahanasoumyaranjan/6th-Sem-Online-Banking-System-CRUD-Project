<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="Bank.*,java.util.*" %>
    <%@ page import="javax.servlet.*,javax.servlet.http.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>User Credential Check</title>
</head>
<body>
<%
String name = request.getParameter("name");
String email = request.getParameter("email");
String mobile = request.getParameter("mobile");
String password = request.getParameter("password");
session.setAttribute("name",name);
session.setAttribute("email",email);
session.setAttribute("mobile",mobile);
if(CustomerDao.Validate(name, email, mobile, password)){
	response.setHeader("Pragma","no-cache");
	response.setHeader("Cache-Control","no-cache");
	response.setHeader("Cache-Control","no-store");
	response.setHeader("Expires", "0");
	response.setDateHeader("Expires", -1);
	response.sendRedirect("CustomerDashboard.jsp");
}else{
	%>
	<center><h2 style="color:red;">Invalid credentials</h2></center>
	<jsp:include page="user_login.html"></jsp:include>
	<%
}
%>
</body>
</html>