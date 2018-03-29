<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Enter Email Address : </h1>
        <form action="SentMail.jsp" method="POST">
            <input type="text" name="email" value="" />
            <input type="submit" value="Send Code" />
        </form>
        <h1>
            You must gate 6 digit pin on your Email-address
            Enter it next time to change the password.
            And You Have Only One Chance to change Password
        </h1>
        
    </body>
</html>
