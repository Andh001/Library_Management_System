package org.apache.jsp.Admin;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import lib.Executor;
import java.sql.ResultSet;
import lib.User;

public final class issue_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

    try {
      response.setContentType("text/html;charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("    \n");
      out.write("<html>\n");
      out.write("<head>\n");
      out.write("    <title>Homepage | Library Management System</title>\n");
      out.write("    <style>\n");
      out.write("        @import url('https://fonts.googleapis.com/css?family=Dosis');\n");
      out.write("        h1{\n");
      out.write("            display: block;\n");
      out.write("            font-size: 70;\n");
      out.write("            font-family: 'Dosis', sans-serif;\n");
      out.write("            color: rgba( 247, 247, 247, 0.672 );\n");
      out.write("        }\n");
      out.write("        \n");
      out.write("        .main{\n");
      out.write("            justify-content: center;\n");
      out.write("            display: flex;\n");
      out.write("            background-color: rgba( 0, 0, 0, 0.617 );\n");
      out.write("            width: 80%;\n");
      out.write("            height: 100%;\n");
      out.write("            border-radius: 20px;\n");
      out.write("            padding: 10px;\n");
      out.write("            box-shadow: 0 0 50px #000000;\n");
      out.write("            position: inherit;\n");
      out.write("        }\n");
      out.write("        \n");
      out.write("        .b{\n");
      out.write("            display: flex;\n");
      out.write("            justify-content: center;\n");
      out.write("        }\n");
      out.write("        \n");
      out.write("        .b1{\n");
      out.write("            display: flex;\n");
      out.write("            justify-content: center;\n");
      out.write("        }\n");
      out.write("        \n");
      out.write("        body{\n");
      out.write("            background-image: url(img/back1.jpg);\n");
      out.write("        }\n");
      out.write("        \n");
      out.write(".text {\n");
      out.write("    display: flex;\n");
      out.write("    border: 1px solid #848484;\n");
      out.write("    border-radius: 30px;\n");
      out.write("    height:25px; \n");
      out.write("    width: 275px;\n");
      out.write("    width: auto;\n");
      out.write("    margin: 20px;\n");
      out.write("    height: 60px;\n");
      out.write("    justify-content: center;\n");
      out.write("    padding-left:10px; \n");
      out.write("    padding-right:10px; \n");
      out.write("    font-family: 'Dosis', sans-serif;\n");
      out.write("    font-size: 30px;\n");
      out.write("    box-shadow: 0 0 15px #000000;\n");
      out.write("  } \n");
      out.write("        .quote1{\n");
      out.write("            width: 100%;\n");
      out.write("            justify-content: center;\n");
      out.write("            transform: translateY(90px);\n");
      out.write("            font-size: 50px;\n");
      out.write("            display: flex;\n");
      out.write("            padding: 10px;\n");
      out.write("            background-color: rgba( 41, 41, 50, 0.523 );\n");
      out.write("            \n");
      out.write("        }\n");
      out.write("        h2{\n");
      out.write("            color: rgba( 247, 247, 247, 0.523 );\n");
      out.write("            text-shadow: 0 0 2px rgba( 255, 255, 255, 0.672 );\n");
      out.write("        }\n");
      out.write("        \n");
      out.write("        .row1{\n");
      out.write("            justify-content: center;\n");
      out.write("            display: flex;\n");
      out.write("            font-size: 80px;\n");
      out.write("            margin: 10px;\n");
      out.write("            background-color: rgba( 31, 55, 106, 0.672 );\n");
      out.write("            transform: translateY(200px);\n");
      out.write("            box-shadow: 0 0 20px #4147bd;\n");
      out.write("        }\n");
      out.write("        \n");
      out.write("        .btn1{\n");
      out.write("            justify-content: center;\n");
      out.write("            display: inline-block;\n");
      out.write("            margin: 40px;\n");
      out.write("            width: 30%;\n");
      out.write("        }\n");
      out.write("        \n");
      out.write("        .f1{\n");
      out.write("            display: flex;\n");
      out.write("            justify-content: center;\n");
      out.write("            color: #000000;\n");
      out.write("            padding: 20px;\n");
      out.write("            text-shadow: 0 0 2px #0c0c0c;\n");
      out.write("            transition: box-shadow 0.3s, border-radius 0.3s;\n");
      out.write("        }\n");
      out.write("        \n");
      out.write("        .f1:hover{\n");
      out.write("            box-shadow: 0 0 20px #f7f7f7;\n");
      out.write("            border-radius: 50px;\n");
      out.write("        }\n");
      out.write("        \n");
      out.write("        .row2{\n");
      out.write("            justify-content: center;\n");
      out.write("            display: flex;\n");
      out.write("            font-size: 80px;\n");
      out.write("            margin: 10px;\n");
      out.write("            background-color: rgba( 31, 55, 106, 0.672 );\n");
      out.write("            transform: translateY(200px);\n");
      out.write("            box-shadow: 0 0 20px #4147bd;\n");
      out.write("        }\n");
      out.write("        \n");
      out.write("        .plt2{\n");
      out.write("            \n");
      out.write("            display: block;\n");
      out.write("        }\n");
      out.write("        \n");
      out.write("        \n");
      out.write("        .hh{\n");
      out.write("        display: flex;\n");
      out.write("            padding: 10px;\n");
      out.write("        justify-content: center;   \n");
      out.write("        box-shadow: 0 0 5px #000000;\n");
      out.write("            border-radius: 20px;\n");
      out.write("            text-shadow: 0 0 10px white;\n");
      out.write("            transition : background-color 0.5s;\n");
      out.write("        }\n");
      out.write("        \n");
      out.write("        .hh:hover{\n");
      out.write("            background-color: #2626d8;\n");
      out.write("        }\n");
      out.write("        \n");
      out.write("        \n");
      out.write("        td{\n");
      out.write("            display: inline-grid;\n");
      out.write("            background-color: rgba( 186, 186, 124, 0.734 );\n");
      out.write("            justify-content: center;\n");
      out.write("            padding: 10px;\n");
      out.write("            border-radius: 10px;\n");
      out.write("            font-size: 50px;\n");
      out.write("            box-shadow: 0 0 5px black;\n");
      out.write("        }\n");
      out.write("        \n");
      out.write("        th{\n");
      out.write("            display: inline-grid;\n");
      out.write("            background-color: rgba( 186, 186, 124, 0.734 );\n");
      out.write("            justify-content: center;\n");
      out.write("            padding: 10px;\n");
      out.write("            border-radius: 10px;\n");
      out.write("            font-size: 50px;\n");
      out.write("            box-shadow: 0 0 5px black;\n");
      out.write("        }\n");
      out.write("    </style>\n");
      out.write("</head>\n");
      out.write("    \n");
      out.write("    \n");
      out.write("<body>\n");
      out.write("    \n");
      out.write("    <div class=\"b\">\n");
      out.write("    <div class=\"main\">\n");
      out.write("        <h1>Library Management System</h1>\n");
      out.write("    </div>\n");
      out.write("    </div>\n");
      out.write("    <div class=\"b1\">\n");
      out.write("    <div class=\"quote1\">\n");
      out.write("    <h2>\"Books are a uniquely portable magic,..!</h2>\n");
      out.write("    </div>\n");
      out.write("    </div>\n");
      out.write("    <div class=\"row2\">\n");
      out.write("        \n");
      out.write("        <div class=\"two_main\">\n");
      out.write("        <table border=\"1\">\n");
      out.write("    <tbody>\n");
      out.write("        \n");
      out.write("        ");

                User user = new User();
                user.setId(request.getParameter("user_id"));
                user.loadDetails();

        
      out.write("\n");
      out.write("        \n");
      out.write("        <tr>\n");
      out.write("            <td><div class=\"hh\">Name of user</div></td>\n");
      out.write("            <td><div class=\"hh\">");
out.print(user.getName());
      out.write("</div></td>\n");
      out.write("        </tr>\n");
      out.write("        <tr>\n");
      out.write("            <td><div class=\"hh\">Phone No</div></td>\n");
      out.write("            <td><div class=\"hh\">");
out.print(user.getPhone_no());
      out.write("</div></td>\n");
      out.write("        </tr>\n");
      out.write("        <tr>\n");
      out.write("            <td><div class=\"hh\">Email address</div></td>\n");
      out.write("            <td><div class=\"hh\">");
out.print(user.getAddress());
      out.write("</div></td>\n");
      out.write("        </tr>\n");
      out.write("        <tr>\n");
      out.write("            <form action=\"/SetUser\" method=\"post\">\n");
      out.write("            <td><div class=\"hh\">Enter Book id to issue</div></td>\n");
      out.write("            <td><div class=\"hh\"><input class=\"text\" type=\"text\" value=\"ID\" name=\"book_id\" required></div></td>\n");
      out.write("            <input type=\"hidden\" name=\"id\" value=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${user_id}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write("\">\n");
      out.write("            <td><div class=\"hh\"><input class=\"text\" type=\"Submit\" value=\"Issue\" name=\"name\"></div></td>\n");
      out.write("            </form>\n");
      out.write("        </tr>\n");
      out.write("    </tbody>\n");
      out.write("        </table>\n");
      out.write("    </div>\n");
      out.write("        \n");
      out.write("    </div>\n");
      out.write("    </div>\n");
      out.write("    <div class=\"row2\">\n");
      out.write("    <div class=\"two_main1\">\n");
      out.write("        <table border=\"1\">\n");
      out.write("            <thead>\n");
      out.write("        <tr>\n");
      out.write("            <th>Book ID</th>\n");
      out.write("            <th>Book Name</th>\n");
      out.write("        </tr>\n");
      out.write("    </thead>\n");
      out.write("    <tbody>\n");
      out.write("        <!---->\n");
      out.write("        ");

            ResultSet rs = Executor.exer("SELECT ID,NAME FROM LIBRARY2 WHERE USER_ID='"+user.getUsername()+"'");
            
            while(rs.next())
            {
        
      out.write("\n");
      out.write("        <tr>\n");
      out.write("            <td><div class=\"hh\">");
out.print(rs.getString("ID"));
      out.write("</div></td>\n");
      out.write("            <td><div class=\"hh\">");
out.print(rs.getString("NAME"));
      out.write("</div></td>\n");
      out.write("        \n");
      out.write("        </tr>\n");
      out.write("        ");

            }
        
      out.write("\n");
      out.write("        <!---->\n");
      out.write("    </tbody>\n");
      out.write("        </table>\n");
      out.write("    </div>\n");
      out.write("    \n");
      out.write("    </div>\n");
      out.write("    <div class=\"row1\">\n");
      out.write("        <div class=\"btn1\"><a href=\"/index.html\">\n");
      out.write("            <div class=\"f1\">Logout</div>\n");
      out.write("            </a></div>\n");
      out.write("        <div class=\"btn1\"><a href=\"BookControl.html\">\n");
      out.write("            <div class=\"f1\">Book Control</div>\n");
      out.write("            </a></div>\n");
      out.write("        <div class=\"btn1\"><a href=\"UserControl.html\">\n");
      out.write("            <div class=\"f1\">Student Control</div>\n");
      out.write("            </a></div>\n");
      out.write("    </div>\n");
      out.write("    \n");
      out.write("</body>\n");
      out.write("</html>\n");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
