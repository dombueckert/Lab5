/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package ca.sait.servlets;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author dom
 */

@WebServlet(name = "ShoppingServlet", urlPatterns = {"/shoppinglist"})
public class ShoppingServlet extends HttpServlet {
    
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        String name = (String) request.getSession().getAttribute("name");
        
        if(name != null){
            this.getServletContext().getRequestDispatcher("/WEB-INF/shoppingList.jsp").forward(request, response);
        }     
        else{
            this.getServletContext().getRequestDispatcher("/WEB-INF/register.jsp").forward(request, response);
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String action = request.getParameter("action");
        
        
        if(action.equals("register")){
            
            String name = request.getParameter("name");
            
            if(name != null){
                request.getSession().setAttribute("name", name);
                ArrayList<String> items =  new ArrayList<>();
                request.getSession().setAttribute("items", items);
            }
            
        }
        else if(action.equals("add")){
            String item = request.getParameter("item");
            
            ArrayList<String> items = (ArrayList <String>) request.getSession().getAttribute("items");
            items.add(item);
            
            request.getSession().setAttribute("items", items);
        }
        else if(action.equals("delete")){
            String itemVal = request.getParameter("item");
            
            ArrayList<String> items = (ArrayList <String>) request.getSession().getAttribute("items");
            
            items.remove(itemVal);
        
            request.getSession().setAttribute("items", items);
        }
        else if(action!=null && action.equals("logout")){
            request.getSession().invalidate();
            response.sendRedirect("shoppinglist");
            return;
        }
        this.getServletContext().getRequestDispatcher("/WEB-INF/shoppingList.jsp").forward(request, response);
    }
}
