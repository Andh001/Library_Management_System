<%@page import="lib.User"%>
<%@page import="lib.Executor"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%! String[] id;  %>
<%! User user = new User();%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        
    </head>
    <body>
        <h2>Logged as ${user.username}</h2>
        <%
            id = request.getParameterValues("id");
            for(int i=0;i<id.length;i++)
            {
                Executor.exer("UPDATE LIBRARY2 SET LIBRARY2.USER_ID=null WHERE LIBRARY2.ID='"+id[i]+"'");
                out.print("<h1>Submitted"+id[i]+"</h1>");
            }
        %>
    </body>
</html>


