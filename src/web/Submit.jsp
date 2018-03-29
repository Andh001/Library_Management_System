<%@page import="lib.User"%>
<%@page import="lib.Executor"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%! String[] id;  %>
<%! User user = new User();%>


<!DOCTYPE html>
<html><head>
<meta http-equiv="content-type" content="text/html; charset=UTF-8">
  <meta charset="UTF-8">
  <title>Library Management System</title>
  <h2>Logged as ${user.username}</h2>
  <%
  User user = (User)session.getAttribute("user");
  out.print("<h2>Logged as "+user.getUsername()+"</h2>");
  %>
  <link rel="stylesheet" href="submit_files/reset.css">

  <link rel="stylesheet prefetch" href="submit_files/css.css">
<link rel="stylesheet prefetch" href="submit_files/font-awesome.css">

      <link rel="stylesheet" href="submit_files/style.css">

  
</head>

<body>
<!-- Mixins-->
<!-- Pen Title-->
<div class="pen-title">
  <h1>Library Management System</h1>
</div>
<div class="container">
  <div class="card"></div>
  <div class="card">
      <%
            id = request.getParameterValues("id");
            String username;
            //out.print(user.getUsername());
            username=user.getUsername();
            out.print("<h1>Loggged as : "+user.getUsername()+"</h1>");
            //Executor.exnr("UPDATE USER_DETAILS SET BOOK_ID='"+id[0]+"' WHERE USERNAME='"+username+"'");
            
            for(int i=0;i<id.length;i++){
            Executor.exnr("UPDATE LIBRARY2 SET USER_ID='"+user.getUsername()+"' WHERE id='"+id[1]+"'");
            }
            //Executor.exnr("commit");
      %>
    <h1 class="title">Inserted : <%out.print(id[0]);%></h1>
  </div>
</div>
<!-- Portfolio--><a id="portfolio" href="http://andytran.me/" title="View my portfolio!"><i class="fa fa-link"></i></a>
<!-- CodePen--><a id="codepen" href="http://codepen.io/andytran/" title="Follow me!"><i class="fa fa-codepen"></i></a>
  <script src="submit_files/jquery.js"></script>
    <script src="submit_files/index.js"></script>
</body></html>
