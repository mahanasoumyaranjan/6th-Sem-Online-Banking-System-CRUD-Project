<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Logout Processing...</title>
</head>
<body>
<%
response.setHeader("Pragma","no-cache");
response.setHeader("Cache-Control","no-cache");
response.setHeader("Cache-Control","no-store");
response.setHeader("Expires", "0");
response.setDateHeader("Expires", -1);
session.removeAttribute("name");
session.invalidate();
//session.setAttribute("userId", null); // in your logout.jsp page
response.sendRedirect("index.html");
%>
</body>
</html>