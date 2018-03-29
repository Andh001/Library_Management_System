/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package lib;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.ResultSet;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
/**
 *
 * @author MAHARAJ
 */
@WebServlet(name = "Login", urlPatterns = {"/Login"})
public class Login extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
        
        User user = new User();
        user.setUsername(request.getParameter("username"));
        user.setPassword(request.getParameter("password"));
        String type = request.getParameter("logintype");
        try {
            if(user.isExist())
            {
                HttpSession session = request.getSession(true);
                session.setAttribute("user", user);
                if(type.equals("user"))
                {
                    //user
                RequestDispatcher rs = request.getRequestDispatcher("User/UserHomepage.html");
                String Usern = request.getParameter("username");
                String Passw  = request.getParameter("password");
                rs.forward(request, response);
                }
                else
                {
                    //admin
                    RequestDispatcher rds = request.getRequestDispatcher("Admin/AdminHomepage.html");
                    rds.forward(request, response);
                }
            }else
            {
                RequestDispatcher rs = request.getRequestDispatcher("index.html");
                rs.forward(request, response);
            }
        } catch (Exception ex) {
            ex.printStackTrace();
        }
        }
    }
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
       
    }
    
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
