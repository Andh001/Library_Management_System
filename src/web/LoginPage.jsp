<%@page import="lib.User"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html><head>
<meta http-equiv="content-type" content="text/html; charset=UTF-8">
  <meta charset="UTF-8">
  <title>Material Login Form</title>
  
  <link rel="stylesheet" href="Home_files/reset.css">

  <link rel="stylesheet prefetch" href="Home_files/css.css">
<link rel="stylesheet prefetch" href="Home_files/font-awesome.css">

      <link rel="stylesheet" href="Home_files/style.css">

  
</head>
<body>
<!-- Mixins-->
<!-- Pen Title-->
<div class="pen-title">
  <h1>Library Management System</h1>
  <h2>Logged as ${user.username}</h2>
  <%
  User user = (User)session.getAttribute("user");
  out.print("<h2>Logged as "+user.getUsername()+"</h2>");
  %>
</div>

<div class="container">
  <div class="card"></div>
  <div class="card">
    <br>
    
    <form action="UserProfile.jsp">
      <div>
        <div class="bar"></div>
      </div>
      <div class="button-container">
        <button type="submit"><span>Profile</span></button>
      </div> 
        
    </form>
    
	<br>
        
    <form action="SearchBook.jsp">
      <div>
        <div class="bar"></div>
      </div>
      <div class="button-container">
        <button type="submit"><span>Search Book</span></button>
      </div>
    </form>
        
	<br>
        
    <form action="LoadIssuedBooks">
      <div>
        <div class="bar"></div>
      </div>
      <div class="button-container">
        <button type="submit"><span>Your Books</span></button>
      </div>
    </form>
        
	<br>
        
    <form>
      <div>
        <div class="bar"></div>
      </div>
      <div class="footer"><a href="#">About us</a></div>
    </form>
	
  </div>
  
</div>
<!-- Portfolio--><a id="portfolio" href="http://andytran.me/" title="View my portfolio!"><i class="fa fa-link"></i></a>
<!-- CodePen--><a id="codepen" href="http://codepen.io/andytran/" title="Follow me!"><i class="fa fa-codepen"></i></a>
  <script src="Home_files/jquery.js"></script>

    <script src="Home_files/index.js"></script>



</body></html>