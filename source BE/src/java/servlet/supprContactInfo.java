/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package servlet;

import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;
import model.database.*;
import java.lang.Integer.*;

/**
 *
 * @author thomas
 */
public class supprContactInfo extends HttpServlet {
   


    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /** 
    * Handles the HTTP <code>GET</code> method.
    * @param request servlet request
    * @param response servlet response
    */
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
    response.setContentType("text/html;charset=UTF-8") ;
    PrintWriter out = response.getWriter();
    String id_string = request.getParameter("id");
    System.out.println(id_string);
    int id = Integer.parseInt(id_string);


    
    try {
        SQLContactVoip.deletebyId(id);
        }
    catch (Exception e) {System.out.println("Erreur dans la suppression"+e);}
        
    response.sendRedirect(response.encodeRedirectURL("voip/repertoire.jsp"));    
    } 

    /** 
    * Handles the HTTP <code>POST</code> method.
    * @param request servlet request
    * @param response servlet response
    */
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
    doGet(request,response);
    
    }

    /** 
    * Returns a short description of the servlet.
    */
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
