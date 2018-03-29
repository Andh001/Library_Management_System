<%@page import="lib.Executor"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%! String[] id; %>
<!DOCTYPE html>
<html><head>
<meta http-equiv="content-type" content="text/html; charset=UTF-8">
  <meta charset="UTF-8">
  <title>Search</title>
  
  <link rel="stylesheet" href="Search_files/reset.css">

  <link rel="stylesheet prefetch" href="Search_files/css.css">
<link rel="stylesheet prefetch" href="Search_files/font-awesome.css">

      <link rel="stylesheet" href="Search_files/style.css">

  
</head>

<body>
  
<!-- Mixins-->
<!-- Pen Title-->
<div class="pen-title">
  <h1>Library Management</h1>
  <h2>Logged as ${user.username}</h2>
</div>
<div class="rerun"><a href="Homepage.jsp">Back to Homepage</a></div>

<div class="container">
  <div class="card"></div>
  <div class="card">
    <h1 class="title">Search</h1>
    <form action="Submit.jsp">
      <div class="input-container">
        <input id="bname" name="bname" required="required" type="#{type}">
        <label for="#{label}">Enter Book Name</label>
        <div class="bar"></div>
      </div>
      <div>
        <div class="bar"></div>
      </div>
      <div class="button-container">
        <button><span>Go</span></button>
      </div>
      <div class="footer"></div>
    </form>
  </div>
</div>

<!-- Portfolio--><a id="portfolio" href="http://andytran.me/" title="View my portfolio!"><i class="fa fa-link"></i></a>
<!-- CodePen--><a id="codepen" href="http://codepen.io/andytran/" title="Follow me!"><i class="fa fa-codepen"></i></a>
  <script src="Search_files/jquery.js"></script>

    <script src="Search_files/index.js"></script>



</body></html>