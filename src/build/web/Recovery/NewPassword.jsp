<%@page import="Recovery.recolib"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
        
            String p1 = request.getParameter("p1");
            String p2 = request.getParameter("p2");
            
            try{
                if(p1.matches(p2))
                {if(recolib.newPass(p1, request.getParameter("email")))
                {
                    out.print("Password Changed Successfully");
                }else{
                    %>
                    <h3>
                        you lost the chance
                    </h3>
                        <a href="Recovery/recovery.jsp">Please Try Again</a>
                    <%
                }}else{
                        
                    }
            }catch(Exception e)
            {
                e.printStackTrace();
            }
        
        %>
        
        
    </body>
</html>
