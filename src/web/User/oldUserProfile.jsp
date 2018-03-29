<%@page import="lib.User"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%/*
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello World! ${user.username}</h1>
        <table border="1">
            <tbody>
                <tr>
                    <td>Name</td>
                    <td>${user.name}</td>
                </tr>
                <tr>
                    <td>Phone No</td>
                    <td>${user.phone_no}</td>
                </tr>
                <tr>
                    <td>Address</td>
                    <td>${user.address}</td>
                </tr>
                <tr>
                    <td>Email</td>
                    <td>${user.email}</td>
                </tr>
                <tr>
                    <td>username</td>
                    <td>${user.username}</td>
                </tr>
            </tbody>
        </table>

        
    </body>
</html>

*/%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="content-type" content="text/html; charset=UTF-8">
  <meta charset="UTF-8">
  <title>Material Login Form</title>
  <link rel="stylesheet" href="Profile_files/reset.css">
  <link rel="stylesheet prefetch" href="Profile_files/css.css">
<link rel="stylesheet prefetch" href="Profile_files/font-awesome.css">
      <link rel="stylesheet" href="Profile_files/style.css">
</head>
<body>
<!-- Mixins-->
<!-- Pen Title-->
<div class="pen-title">
  <h1>Library Management</h1>
  <h2>Logged as ${user.username}</h2>
</div>
  <%
  User user = (User)session.getAttribute("user");
  user.load();
  %>
<div class="rerun"><a href="Homepage.jsp">Back to Homepage</a></div>
<div class="container">
  <div class="card"></div>
  <div class="card">
	<h6 class="title">Name :<%out.print(user.getName());%></h6>
	<h6 class="title">Phone Number :<%out.print(user.getPhone_no());%></h6>
	<h6 class="title">Address :<%out.print(user.getAddress());%></h6>
	<h6 class="title">Email :<%out.print(user.getEmail());%></h6>
	<h6 class="title">Username: <%out.print(user.getUsername());%></h6>
  </div>
  </div>
<!-- Portfolio--><a id="portfolio" href="http://andytran.me/" title="View my portfolio!"><i class="fa fa-link"></i></a>
<!-- CodePen--><a id="codepen" href="http://codepen.io/andytran/" title="Follow me!"><i class="fa fa-codepen"></i></a>
  <script src="Profile_files/jquery.js"></script>
    <script src="Profile_files/index.js"></script>
</body></html>