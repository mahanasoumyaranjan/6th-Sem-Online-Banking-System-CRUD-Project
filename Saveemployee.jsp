<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.util.*" %>
    <%@ page import="Bank.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Employee Registration</title>
</head>
<body>
<%
String name = request.getParameter("name");
String email = request.getParameter("email");
long mobile = Long.parseLong(request.getParameter("mobile"));
String password = request.getParameter("password");
String dob = request.getParameter("dob");
String address = request.getParameter("address");
String gender = request.getParameter("GENDER");
String emp_type = request.getParameter("op");
EmpInfo e = new EmpInfo();
e.setName(name);
e.setEmail(email);
e.setMobile(mobile);
e.setPassword(password);
e.setDob(dob);
e.setAddress(address);
e.setGender(gender);
e.setEmp_type(emp_type);
int i = EmpDao.Save(e);
if(i>0){
	out.println("Employee added successfully !!!");
	response.sendRedirect("Admin.jsp");
}else{
	%>
	<h2 style="color:red;">Unable to add employee, please try after some time !!!</h2>
	<jsp:include page="Admin.jsp"></jsp:include>
	<%
}
%>
</body>
</html>