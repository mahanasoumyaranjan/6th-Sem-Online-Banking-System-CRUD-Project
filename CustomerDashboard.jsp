<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>User Dashboard | Dolphin Bank Global</title>
  <style>
  body {
    font-family: Arial, sans-serif;
    margin: 0;
    padding: 0;
  }
  
  header {
    background-color: #000000;
    color: #fff;
    text-align: center;
    padding: 1em;
  }
  
  nav ul {
    list-style-type: none;
    margin: 0;
    padding: 0;
    background-color: #C0EEF2;
    overflow: hidden;
  }
  
  nav li {
    float: left;
  }
  
  nav li a {
    display: block;
    color: #000;
    text-align: center;
    padding: 14px 16px;
    text-decoration: none;
  }
  
  nav li.active a {
    background-color: #ddd;
  }
  
  nav li a:hover {
    background-color: #ddd;
  }
  
  main {
    margin: 2em;
  }
  
  h2 {
    margin-bottom: 1em;
  }
  
  .statistics {
    display: flex;
    flex-wrap: wrap;
    justify-content: space-between;
  }
  
  .statistic {
    background-color:#F6F7D4;
    border-radius: 5px;
    box-shadow: 0px 0px 10px 2px rgba(0,0,0,0.2);
    margin-bottom: 1em;
    padding: 1em;
    text-align: center;
    width: calc(20% - 1em);
  }
  
  .statistic h3 {
    margin-top: 0;
  }
  
  .statistic p {
    font-size: 2em;
    font-weight: bold;
    margin: 0;
  }
  .dropbtn {
  background-color: #3498DB;
  color: white;
  padding: 16px;
  font-size: 16px;
  border: none;
  cursor: pointer;
}

.dropbtn:hover, .dropbtn:focus {
  background-color: #2980B9;
}

.dropdown {
  position: relative;
  display: inline-block;
}

.dropdown-content {
  display: none;
  position: absolute;
  background-color: #f1f1f1;
  min-width: 160px;
  overflow: auto;
  box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2);
  z-index: 1;
}

.dropdown-content a {
  color: black;
  padding: 12px 16px;
  text-decoration: none;
  display: block;
}

.dropdown a:hover {background-color: #ddd;}

.show {display: block;}
  </style>
  <script>
  function myFunction() {
	  document.getElementById("myDropdown").classList.toggle("show");
	}

	// Close the dropdown if the user clicks outside of it
	window.onclick = function(event) {
	  if (!event.target.matches('.dropbtn')) {
	    var dropdowns = document.getElementsByClassName("dropdown-content");
	    var i;
	    for (i = 0; i < dropdowns.length; i++) {
	      var openDropdown = dropdowns[i];
	      if (openDropdown.classList.contains('show')) {
	        openDropdown.classList.remove('show');
	      }
	    }
	  }
	}
  </script>
</head>
<body>
<%
String name = (String)session.getAttribute("name");
String email = (String)session.getAttribute("email");
String mobile = (String)session.getAttribute("mobile");
session.setAttribute("name", name);
%>
  <header>
    <h1>Welcome <%out.print(name); %></h1>
    <div class="dropdown">
  <button onclick="myFunction()" class="dropbtn"><%out.print(email); %></button>
  <div id="myDropdown" class="dropdown-content">
    <a href="check_bal.jsp">Check Bal.</a>
    <a href="account_details.jsp">Account Details.</a>
    <a href="deposit.html">Deposit.</a>
    <a href="withdraw.html">Withdraw.</a>
    <a href="#">Transfer Fund.</a>
  </div>
</div>
    <h3><img src="logo.png" alt="logo"></h3>
  </header>
  <nav>
    <ul>
      <li><a href="logout2.jsp">Logout</a>
    </ul>
  </nav>
  <footer style="background-color:powderblue;"><marquee width="80%"><h2>24/7 Customer Service</h2></marquee></footer>
  <main>
    <h2>Statistics</h2>
    <div class="statistics">
      <div class="statistic">
        <h3>Daily Users</h3>
        <p>1 Milion</p>
      </div>
      <div class="statistic">
        <h3>Employees</h3>
        <p>5 Lakhs</p>
      </div>
      <div class="statistic">
        <h3>Accounts</h3>
        <p>1 Lakhs</p>
      </div>
      <div class="statistic">
        <h3>Manager</h3>
        <p>50 Thusands</p>
      </div>
      <div class="statistic">
        <h3>Daily Transactions</h3>
        <p>30 Lakhs</p>
      </div>
      <div class="statistic">
        <h3>GDP</h3>
        <p>5000000$</p>
      </div>
      <div class="statistic">
        <h3>Indian Currency</h3>
        <p>50,00,000</p>
      </div>
      <div class="statistic">
        <h3>Branches</h3>
        <p>1 Lakh around the world</p>
      </div>
    </div>
  </main>
  <footer style="background-color:blue;">
    <p>&copy; Since 1997 service provider</p>
  </footer>
</body>
</html>