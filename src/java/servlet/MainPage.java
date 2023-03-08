/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package servlet;

import dao.*;
import model.*;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.util.ArrayList;

/**
 *
 * @author Inspiron
 */
@WebServlet(name = "MainPage", urlPatterns = {"/MainPage"})
public class MainPage extends HttpServlet {

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
        try ( PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet MainPage</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet MainPage at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
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
        NewsDAO news = new NewsDAO();
        userDAO userdao = new userDAO();
        catDAO catdao = new catDAO();
        ArrayList<News> newsList = new ArrayList<>();
        ArrayList<String> cat_namelist = new ArrayList<>();
        ArrayList<String> user_namelist = new ArrayList<>();
        ArrayList<Category> cat_list = new ArrayList<>();
        cat_list = catdao.getAllCategorys();
        newsList = news.getAllNews();//co display all in jsp
        for (int i = 0; i < newsList.size(); i++) {
            cat_namelist.add(catdao.getCategory(newsList.get(i).getCat_id()).getName()); // cat related to news
            user_namelist.add(userdao.getUser(newsList.get(i).getUser_id()).getName()); // user tuong ung tung news
        }
        request.setAttribute("cat_list", cat_list);
        request.setAttribute("cat_namelist", cat_namelist);
        request.setAttribute("user_namelist", user_namelist);
        request.setAttribute("news_list", newsList);
        request.getRequestDispatcher("index.jsp").forward(request, response);
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
