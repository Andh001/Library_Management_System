<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <title>Homepage</title>
    <link rel="stylesheet" href="style/style.css">
    
</head>
   <body>
        <%
                
           session.invalidate();
            

        %>
        <div class="card">
            <h1>Library Management jsp System</h1>
        </div>
        <br>
        
        <div class="card1">
            <div class="link"><a href="LoginHTML.html"><h1>Login</h1></a></div>
            <div class="link"><a href="RegisterProcess.jsp"><h1>Register</h1></a></div>
        </div>
        
        <div class="plate1">
        
            <div class="link"><a href="Search/SearchBook.jsp"><h1>Search Book</h1></a></div>
        
            <div class="link"><a href="#"><h1>Syllabus Books</h1></a></div>
            
            <div class="link"><a href="#"><h1>Reference Books</h1></a></div>
        </div>
       <div class="link"><a href="Admin/Homepage.html"><h1>Admin</h1></a></div>
    </body>
</html>
