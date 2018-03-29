/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package lib;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.ResultSet;
import java.util.UUID;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author Student
 */
@WebServlet(name = "LoadIssuedBooks", urlPatterns = {"/LoadIssuedBooks"})
public class LoadIssuedBooks extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet LoadIssuedBooks</title>");            
            out.println("</head>");
            out.println("<body>");
            
            
            //esultSet rs = Executor.exer("SELECT ID,NAME FROM LIBRARY WHERE LOWER(NAME) LIKE LOWER('%"+request.getParameter("bname")+"%')");
            HttpSession session = request.getSession();
            User user = new User();
            user = (User)session.getAttribute("user");
            out.print("<h1>Logged as:"+user.getUsername()+"</h1>");
            ResultSet rs = Executor.exer("SELECT NAME,ID FROM LIBRARY2 WHERE LIBRARY2.USER_ID = '"+user.getUsername()+"'");
           
            
            out.print("<form action=\"returnBook.jsp\" method=\"POST\">");
            out.print("<table border=\"1\"><tbody>");
            while(rs.next())
            {
                out.print("<tr><td>"+rs.getString("NAME")+"</td><td><input type=\"checkbox\" name=\"id\" value="+rs.getString("ID")+"></td></tr>");
            }
            
            out.print("</tbody></table><input type=\"submit\" value=\"Submit\" /></form>");
            out.println("</body>");
            out.println("</html>");
            
            
            out.println("</body>");
            out.println("</html>");
        } catch (Exception ex) {
            Logger.getLogger(LoadIssuedBooks.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
