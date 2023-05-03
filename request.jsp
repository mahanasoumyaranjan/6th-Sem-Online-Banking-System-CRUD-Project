<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
    <meta charset="ISO-8859-1">
    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Registration</title>
        <style>
            body{
                 background-image: url(contact_us.jpg);
                 background-repeat: no-repeat;
                 background-size: 1700px 800px;
            }
            #i1{
                background-color: aqua;
                width: 300px;
                border: 15px rgb(16, 37, 175);
                padding: 50px;
                margin: 20px;
                opacity:0.75;
                margin-left:32%;
                border-radius: 10px;
            }
            #i2{
                margin-left: 35%;
            }
            #i3{
                margin-left:18%;
            }
            #i4{
                margin-left:37%;
            }
            #i5{
                margin-left:17%;
            }
            #mobile{
                margin-left:37%;
            }
            #password{
                margin-left:37%;
            }
            #i8{
                margin-left:20%;
            }
            #i9{
                margin-left:36%;
            }
            .c1{
                font-size:xx-large;
                margin-left:30%;
                background-color: blue;
             }
             #x1{
                margin-left:42%;
                font-size: xx-large;
             }
             a{
            text-decoration: none;
            }
        </style>
    </head>
    <body>
        <h class="c1">EMPLOYEE REGISTRATION LIST</h>
        <form method="post" onsubmit="return validate()" name="myform" action="welcome.jsp" method="post">
            <div id="i1">
                <label>NAME:</label>
                <input type="text" id="i3" placeholder="Enter Student name" name="n1"><br><br>
                <label>USER ID:</label>
                <input type="text" id="i4" placeholder="Enter user id"><br><br>
                <label>EMAIL:</label>
                <input type="text" id="i5" placeholder="Enter email"><br><br>
                <label>MOBILE NO:</label>
                <input type="text"  id="mobile" placeholder="Enter mobile number"><br><br>
                <label>PASSWORD:</label>
                <input type="password"  id="password" placeholder="Enter password"><br><br>
                <label>D.O.B:</label>
                <input type="date"  id="i8" placeholder="Enter date of birth"><br><br>
                <label>ADDRESS:</label>
                <input type="text"  id="i9" placeholder="Enter Address"><br><br>
                <label>GENDER:</label>
                <input type="radio" name="GENDER" id="male" value="gend">
                <label for="Male">Male</label>
                <input type="radio" name="GENDER" value="Female" id="gend">
                <label for="Female">Female</label>
                <input type="radio" name="GENDER" value="Othes" id="gend">
                <label for="Others">Others</label>
                <br><br>
                <label>EMPLOYEE TYPE:</label>
                <select>
                    <option value="manager">MANAGER</option>
                    <option value="cashier">CASHIER</option>
                    <option value="accountant">ACCOUNTANT</option>
                </select>
                <br>
                <br>
                <div id="i2">
                    <button type="submit">Register</button>
                </div>
            </div>
        </form>
        <a href="griv_login.html" id="x1">HOME</a>
    </body>
</html>