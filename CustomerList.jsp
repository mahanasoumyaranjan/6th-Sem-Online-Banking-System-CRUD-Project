<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="Bank.*,java.util.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Customer Table ..</title>
<link href="style.css" rel="stylesheet" type="text/css">
<script type="text/javascript">
function ctck()
{
var sds = document.getElementById("dum");

}
</script>
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
.styled-table tbody tr {
    border-bottom: 1px solid #dddddd;
}

.styled-table tbody tr{
    background-color: #f3f3f3;
}

.styled-table tbody tr {
    border-bottom: 2px solid #009879;
}
</style>
</head>

<body>

<div id="top_links">
  
<%
response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate");
String user = (String)session.getAttribute("user");
%>
<div id="header">
<h2 style="color:white;">Welcome <%out.print(user); %></h2>
	<h1>DOLPHIN - BANK<span class="style1"></span></h1>
    <h2>ExtraOrdinary Service</h2>	

</div>

<div id="navigation">
    <ul>
    <li><a href="index.html">Home</a>
    <li><a href="cust_signup.jsp">Add Customer</a></li>
    <li><a href="CustomerList.jsp">Customer List</a>
    <li><a href="#">Daily Status</a>
    <li><a href="#">Installment</a>
    <li><a href="Logout1.jsp">Logout</a></li>
    </ul>
</div>
<section">
<div class="container">
<div class="row">

<%
List<CustomerInfo> list = CustomerDao.getAllUsers();
out.println("<table class='styled-table'>");
out.println("<thead><tr><th>Customer Name</th><th>Email</th><th>Mobile Number</th><th>DOB</th><th>Gender</th></tr></thead>");
for(CustomerInfo u:list){
	out.println("<tbody><tr><td>"+u.getName()+"</td><td>"+u.getEmail()+"</td><td>"+u.getMobile()+"</td><td>"+u.getDob()+"</td><td>"+u.getGender()+"</td></tr></tbody>");
}
out.println("</table></body></html>");
%>

</div>
</div>
</section>
<table cellpadding="0" cellspacing="0" id="content1"><tr align="justify">
	<td class="con" valign="top">
    	<div id="heade1"><h1>Results</h1></div>
        <p>It was a time when people use to help each other and families use to do everything for their near and dear ones. But time has changed how people live in nuclear families and they do not have many contacts. People in cities hail from different places as a result they won't trust. Then who will help you financially, who will trust you and give you some money when you need it. It is a bank which provides loan and helps you financially..<br><br>
</p>
    </td>
    
    <td class="con" valign="top">
    	<div id="heade2"><h1>Opportunities</h1></div>
        <p> Banks that are controlled by legislative bodies are central banks. It can be a central bank or reserve bank. We can also state them as the main bank which decides the interest rates as per inflation in the country. They are not only a bank but they also keep an eye on other banks and controls the overall money supply. They also take care of any kind of foreign exchange as well as government bonds. We can call them as the head of all banks.
</p>
    </td>
    
    <td class="con" valign="top">
    	<div id="heade3"><h1>Solutions</h1></div>
        <p>Banks are important parts of our life and have become very necessary for us. We can’t imagine a society without a bank. We can’t trust others, but we can trust a bank and they are our true friends who never ditch us and also protect our money.
        
    </td>
</tr></table>

<table style="width:897px; background:#FFFFFF; margin:0 auto;"><tr align="justify">
	<td width="299" valign="top" style="border-right:#666666 1px dotted;">
    	<div id="services"><h1>Services</h1><br>
		    <ul>
        	<li><a href="#">Fixed Deposit</a></li>
            <li><a href="#">PPF Account</a></li>
            <li><a href="#">KYC Update</a></li>
            </ul>
			
       </div>
	</td>
    
    <td width="299" valign="top">
    	<div id="welcome" style="border-right:#666666 1px dotted;"><h1>Welcome</h1><br>
    	    <center><img src="images/globe_10.gif" alt="business" width="196" height="106"></center><br>
		    <p>A Business Account is a specialised Current Account that provides added features. These added features depend from bank to bank but mostly they provide an umbrella of services in one account. The Current Account gains access to the business to other services offered by the bank at discounted rates, access to other services such as marketing, and may network with peers in initiatives led by the bank. Having a custom-tailored Business Account can help a start-up get additional expertise from the bank. A start-up Business Account provides additional resources to a start-up to expand their business..</p>
	    	
	    </div>      
    </td>
    
    <td width="299" valign="top">
   	  <div id="news"><h1>News &amp; Events</h1><br>
      	<div class="img"><img src="images/globe_12.gif" alt="Business"></div>
        <h2>Nov. 17, 2023.</h2>
        <p>Get your money safe with us, thanks for choosing Dolphin Bank as a service..</p><br>
        <div class="img"><img src="images/globe_16.gif" alt="Business"></div>
        <h2>Nov. 17, 2025.</h2>
        <p>Investment of money with us means a professional career..</p>
      
      </div>
        	
     </td>
</tr></table>

<div id="footer_top">
  <div id="footer_navigation">
  

  </div>
  
  <div id="footer_copyright" >
 
    	    <center><img src="data:image/jpeg;base64,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"  alt="business"  width="196" height="106"></center><br>
		    <p>Each people plan their site layouts depending upon their business type. Here comes a free designer template which provides you with a selection of different kinds of webdesign   starting from business template, fashion template, media template, Science template, Arts template and much more.</p>
	  
  Copyright © since 2008 dolphin Bank</div>
</div>

<script type="text/javascript">
document.onload = ctck();
</script>
</div>
</html>