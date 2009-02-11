/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package servlet.voip;
import model.database.*;
import java.lang.Integer.*;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author thomas
 */
public class supprContactInfo extends HttpServlet {
   
    /** 
    * Processes requests for both HTTP <code>GET</code> and <code>POST</code> methods.
    * @param request servlet request
    * @param response servlet response
    */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        try {
            out.println("hello");
            out.println("ID : "+request.getParameter("id"));
            String id = request.getParameter("id");
            //SQLContactVoip.deletebyId(id);
        }
        catch (Exception e) {
            System.out.println("Erreur dans la suppression"+e);
        }
         
        finally { 
            response.sendRedirect(response.encodeRedirectURL("voip/repertoire.jsp"));    
            out.close();
        }
    } 


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
