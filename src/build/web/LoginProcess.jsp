<%@page contentType="text/html" pageEncoding="UTF-8"%>
<jsp:useBean id="obj" class="lib.User" />
<jsp:setProperty name="obj" property="*" />
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        
        <%
            boolean status = lib.User.verify(obj);
            
            if(status)
            {
                //out.println("Welcome "+obj.getUsername());
                //String username=obj.getUsername();
                //request.setAttribute(username, obj.getUsername());
                request.setAttribute("obj", obj);
                response.sendRedirect("Homepage.jsp"/*?username="+String.valueOfobj.getUsername())*/);
            }else
            {
                out.println("Error in something");
                //Code for registration..
                out.println("<a href=\"RegisterProcess.jsp\">Register here..</a>");
        %>
                <jsp:include page="index.jsp"/>
                
        <%
            }
        %>
    </body>
</html>
