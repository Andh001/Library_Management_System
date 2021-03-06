<%-- 
    Document   : UserProfile
    Created on : Mar 23, 2017, 9:30:44 PM
    Author     : MAHARAJ
--%>

<%@page import="lib.User"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Homepage | Library Management System</title>
    <style>
        @import url('https://fonts.googleapis.com/css?family=Dosis');
        @import url('https://fonts.googleapis.com/css?family=Dosis');
        h1{
            display: block;
            font-size: 70;
            font-family: 'Dosis', sans-serif;
            color: rgba( 247, 247, 247, 0.672 );
        }
        
        .main{
            justify-content: center;
            display: flex;
            background-color: rgba( 0, 0, 0, 0.617 );
            width: 80%;
            height: 100%;
            border-radius: 20px;
            padding: 10px;
            box-shadow: 0 0 50px #000000;
            position: inherit;
        }
        
        .b{
            display: flex;
            justify-content: center;
        }
        
        .b1{
            display: flex;
            justify-content: center;
        }
        
        body{
            background-image: url(img/back1.jpg);
        }
        
        .quote1{
            width: 100%;
            justify-content: center;
            transform: translateY(90px);
            font-size: 50px;
            display: flex;
            padding: 10px;
            background-color: rgba( 41, 41, 50, 0.523 );
            
        }
        h2{
            color: rgba( 247, 247, 247, 0.523 );
            text-shadow: 0 0 2px rgba( 255, 255, 255, 0.672 );
            font-size: 40px;
        }
        
        .row1{
            justify-content: center;
            display: flex;
            font-size: 80px;
            margin: 10px;
            background-color: rgba( 31, 55, 106, 0.672 );
            transform: translateY(200px);
            box-shadow: 0 0 20px #4147bd;
        }
        
        .btn1{
            justify-content: center;
            display: inline-block;
            margin: 40px;
            width: 30%;
        }
        
        .f1{
            display: flex;
            justify-content: center;
            color: #000000;
            padding: 20px;
            text-shadow: 0 0 2px #0c0c0c;
            transition: box-shadow 0.3s, border-radius 0.3s;
        }
        
        .f1:hover{
            box-shadow: 0 0 20px #f7f7f7;
            border-radius: 50px;
        }
.text {
    display: flex;
    border: 1px solid #848484;
    border-radius: 30px;
    height:25px; 
    width: 275px;
    width: auto;
    margin: 20px;
    height: 60px;
    justify-content: center;
    padding-left:10px; 
    padding-right:10px; 
    font-family: 'Dosis', sans-serif;
    font-size: 30px;
    box-shadow: 0 0 15px #000000;
  } 
        .text1 {
    display: flex;
    border: 1px solid #848484;
    border-radius: 30px;
    height:25px; 
    width: 275px;
    width: auto;
    height: 60px;
    justify-content: center;
    padding-left:10px; 
    padding-right:10px; 
    font-family: 'Dosis', sans-serif;
    font-size: 30px;
    box-shadow: 0 0 15px #000000;
  }
        .two{
            display: flex;
            justify-content: center;
            background-color: rgba( 14, 14, 225, 0.273 );
            width: 80%;
        }
        
        .two_main{
            transform: translateY(70px);
            justify-content: center;
            display: flex;
        }
        
        .login{
            justify-content: center;
            display: block;
            margin: 10px;
        }
        
        .register{
            display: block;
            margin: 10px;
        }
        
        h3{
            color: #ffffff;
            text-shadow: 0 0 2px #000000;
            font-size: 40px;
        }
        td{
            display: inline-grid;
            background-color: rgba( 186, 186, 124, 0.734 );
            justify-content: center;
            padding: 10px;
            border-radius: 10px;
            font-size: 50px;
            box-shadow: 0 0 5px black;
        }
        
        th{
            display: inline-grid;
            background-color: rgba( 186, 186, 124, 0.734 );
            justify-content: center;
            padding: 10px;
            border-radius: 10px;
            font-size: 50px;
            box-shadow: 0 0 5px black;
        }
        
        .hh{
        display: flex;
            padding: 10px;
        justify-content: center;   
        box-shadow: 0 0 5px #000000;
            border-radius: 20px;
            text-shadow: 0 0 10px white;
            transition : background-color 0.5s;
        }
        
        .hh:hover{
            background-color: #2626d8;
        }
    </style>
</head>
    
    
<body>
    
    <div class="b">
    <div class="main">
        <h1>Library Management System</h1>
    </div>
    </div>
    
  <%
  User user = (User)session.getAttribute("user");
  user.load();
  %>
    <div class="two_main">
    <div class="two">
        
        <table border="1">
    <tbody>
        
        <tr>
            <td><div class="hh">Name</div></td>
            <td><div class="hh"><%out.print(user.getName());%></div></td>
        </tr>
        <tr>
            <td><div class="hh">Username</div></td>
            <td><div class="hh"><%out.print(user.getUsername());%></div></td>
        </tr>
        <tr>
            <td><div class="hh">Address</div></td>
            <td><div class="hh"><%out.print(user.getAddress());%></div></td>
        </tr>
        <tr>
            <td><div class="hh">Email ID</div></td>
            <td><div class="hh"><%out.print(user.getEmail());%></div></td>
        </tr>
        <tr>
            <td><div class="hh">Phone Number</div></td>
            <td><div class="hh"><%out.print(user.getPhone_no());%></div></td>
        </tr>
    </tbody>
        </table>
        
        </div>
    </div>
    
</body>
</html>