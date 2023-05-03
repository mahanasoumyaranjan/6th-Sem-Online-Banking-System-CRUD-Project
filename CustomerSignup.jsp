<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="Bank.*,java.util.*" %>
    <%@ page import="javax.servlet.*,javax.servlet.http.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Customer Signup</title>
</head>
<body>
<%
String name = request.getParameter("name");
String email = request.getParameter("email");
String password = request.getParameter("password");
long mobile = Long.parseLong(request.getParameter("mobile"));
String dob = request.getParameter("dob");
String gender = request.getParameter("GENDER");
CustomerInfo c = new CustomerInfo();
c.setName(name);
c.setEmail(email);
c.setPassword(password);
c.setMobile(mobile);
c.setDob(dob);
c.setGender(gender);
int i = CustomerDao.save(c);
if(i>0){
	out.println("Customer added successfully !!!");
	response.sendRedirect("Employee.jsp");
}else{
	%>
	<h2 style="color:red;">Unable to add customer, please try after some time !!!</h2>
	<jsp:include page="cust_signup.jsp"></jsp:include>
	<%
}
%>
</body>
</html>