<%@page contentType="text/html" pageEncoding="UTF-8"%>
<jsp:useBean id="obj" class="lib.User" />
<jsp:setProperty name="obj" property="*" />
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Register</title>
    </head>
    <body>
        
        <form action="RegisterProcessFinal.jsp" method="POST">
        <table border="1">
            <h1>Register</h1>
            <tbody>
                <tr>
                    <td>Name</td>
                    <td><input type="text" name="name" value="" /></td>
                </tr>
                <tr>
                    <td>Username</td>
                    <td><input type="text" name="username" value="" /></td>
                </tr>
                <tr>
                    <td>Password</td>
                    <td><input type="text" name="password" value="" /></td>
                </tr>
                <tr>
                    <td>Email</td>
                    <td><input type="text" name="email_id" value="" /></td>
                </tr>
                <tr>
                    <td>Address</td>
                    <td><input type="text" name="address" value="" /></td>
                </tr>
                <tr>
                    <td>Phone No.</td>
                    <td><input type="text" name="phone_no" value="" /></td>
                </tr>
            </tbody>
        </table>
            <input type="submit" value="Submit" />
            <input type="reset" value="Clear" />
        </form>
    </body>
</html>
