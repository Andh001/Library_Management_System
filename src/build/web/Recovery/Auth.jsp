<%@page import="Recovery.recolib"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Recovery</title>
    </head>
    <body>
        <%
        String Email = request.getParameter("email");
        String User  = recolib.loadUser(Email);
        String user_key = request.getParameter("user_key");
        %>
        <h1>hii <%out.print(User);%></h1>
            <%
                if(recolib.checkKey(user_key, Email))
                {
                    %>
                    <form action="Recovery/NewPassword.jsp" method="POST">
                        <input type="text" name="p1" value="Enter Password" />
                        <input type="text" name="p2" value="Enter Once Again" />
                        <input type="submit" value="Change Password" />
                    </form>
                    <%
                }else
                {
                    %>
                    <a href="Recovery/recovery.jsp">Please Try Again</a>
                    <%
                }
            %>
    </body>
</html>
