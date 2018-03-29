<%@page import="lib.*"%>
<%@page import="Recovery.*" %>
<%@page import="lib.Executor"%>
<%@page import="java.util.concurrent.ThreadLocalRandom"%>
<%@page import="java.sql.ResultSet"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Recovery</h1>
        <%
        long random = recolib.generateRandomNumber(6);
        String Email = request.getParameter("email");
        String User = recolib.loadUser(Email);
        Executor.exnr("UPDATE USER_DETAILS SET KEY='"+random+"' WHERE USERNAME='"+User+"' AND EMAIL_ID='"+Email+"'");
        String key_S = "Hii "+User+"\nYour Recovery Key is : "+random;
        Mailer.send("librarianmit0@gmail.com", "mitlib@123114", Email, "MIT Library Recovery Key", key_S);
        Executor.exnr("commit");
        %>
        <form action="Recovery/Auth.jsp" method="POST">
            <input type="hidden" value="${email}" name="email">
            <input type="text" name="user_key" value="" />
            <a href="/Recovery/Auth.jsp" type="Submit">Enter Key Here</a>
        </form>
    </body>
</html>
