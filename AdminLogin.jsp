<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="Bank.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Login Validation</title>
</head>
<body>
<%
String email = request.getParameter("email");
String password = request.getParameter("password");
if(Admindao.validate(email, password)){
	response.setHeader("Pragma","no-cache");
	response.setHeader("Cache-Control","no-cache");
	response.setHeader("Cache-Control","no-store");
	response.setHeader("Expires", "0");
	response.setDateHeader("Expires", -1);
	session.setAttribute("user",email);
	response.sendRedirect("Admin.jsp");
}else{
	%>
	<center><h3 style="color:red">Invalid user or password</h3></center>
	<jsp:include page="griv_login.html"></jsp:include>
	<%
}
%>
</body>
</html>