<%-- 
    Document   : issue.jsp
    Created on : Mar 25, 2017, 9:37:24 PM
    Author     : MAHARAJ
--%>

<%@page import="lib.Executor"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="lib.User"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
    
<html>
<head>
    <title>Homepage | Library Management System</title>
    <style>
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
        
        .row2{
            justify-content: center;
            display: flex;
            font-size: 80px;
            margin: 10px;
            background-color: rgba( 31, 55, 106, 0.672 );
            transform: translateY(200px);
            box-shadow: 0 0 20px #4147bd;
        }
        
        .plt2{
            
            display: block;
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
    </style>
</head>
    
    
<body>
    
    <div class="b">
    <div class="main">
        <h1>Library Management System</h1>
    </div>
    </div>
    <div class="b1">
    <div class="quote1">
    <h2>"Books are a uniquely portable magic,..!</h2>
    </div>
    </div>
    <div class="row2">
        
        <div class="two_main">
        <table border="1">
    <tbody>
        
        <%
                User user = new User();
                user.setId(request.getParameter("user_id"));
                user.loadDetails();

        %>
        
        <tr>
            <td><div class="hh">Name of user</div></td>
            <td><div class="hh"><%out.print(user.getName());%></div></td>
        </tr>
        <tr>
            <td><div class="hh">Phone No</div></td>
            <td><div class="hh"><%out.print(user.getPhone_no());%></div></td>
        </tr>
        <tr>
            <td><div class="hh">Email address</div></td>
            <td><div class="hh"><%out.print(user.getAddress());%></div></td>
        </tr>
        <tr>
            <form action="/SetUser" method="post">
            <td><div class="hh">Enter Book id to issue</div></td>
            <td><div class="hh"><input class="text" type="text" value="ID" name="book_id" required></div></td>
            <input type="hidden" name="id" value="${user_id}">
            <td><div class="hh"><input class="text" type="Submit" value="Issue" name="name"></div></td>
            </form>
        </tr>
    </tbody>
        </table>
    </div>
        
    </div>
    </div>
    <div class="row2">
    <div class="two_main1">
        <table border="1">
            <thead>
        <tr>
            <th>Book ID</th>
            <th>Book Name</th>
        </tr>
    </thead>
    <tbody>
        <!---->
        <%
            ResultSet rs = Executor.exer("SELECT ID,NAME FROM LIBRARY2 WHERE USER_ID='"+user.getUsername()+"'");
            
            while(rs.next())
            {
        %>
        <tr>
            <td><div class="hh"><%out.print(rs.getString("ID"));%></div></td>
            <td><div class="hh"><%out.print(rs.getString("NAME"));%></div></td>
        
        </tr>
        <%
            }
        %>
        <!---->
    </tbody>
        </table>
    </div>
    
    </div>
    <div class="row1">
        <div class="btn1"><a href="/index.html">
            <div class="f1">Logout</div>
            </a></div>
        <div class="btn1"><a href="BookControl.html">
            <div class="f1">Book Control</div>
            </a></div>
        <div class="btn1"><a href="UserControl.html">
            <div class="f1">Student Control</div>
            </a></div>
    </div>
    
</body>
</html>
