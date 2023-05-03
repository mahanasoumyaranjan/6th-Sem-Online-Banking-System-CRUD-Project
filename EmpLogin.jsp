<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="Bank.*" %>
    <%@page import="javax.servlet.*,javax.servlet.http.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Login Validation</title>
</head>
<body>
<%
String name = request.getParameter("name");
String password = request.getParameter("password");
if(EmpDao.validate(name, password)){
	response.setHeader("Pragma","no-cache");
	response.setHeader("Cache-Control","no-cache");
	response.setHeader("Cache-Control","no-store");
	response.setHeader("Expires", "0");
	response.setDateHeader("Expires", -1);
	session.setAttribute("user",name);
	response.sendRedirect("Employee.jsp");
}else{
	%>
	<center><h3 style="color:red">Invalid username or password</h3></center>
	<jsp:include page="emp_login.html"></jsp:include>
	<%
}
%>
</body>
</html>