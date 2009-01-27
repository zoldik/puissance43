/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package servlet.voip;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author francois
 */
public class VoipLigne extends HttpServlet {
   
    
    
    private void view(String id) {
        
    }
    
    private void edit(String id) {
        
    }
    
    private void delete(String id) {
        
    }
    

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

           if ( request.getParameter("action").compareTo("view") == 0){
               String id = request.getParameter("id");
               edit(id);
           }
           
           if ( request.getParameter("action").compareTo("edit") == 0){
               String id = request.getParameter("id");
               view(id);
           }
           
           if ( request.getParameter("action").compareTo("delete") == 0){
               String id = request.getParameter("id");
               delete(id);
           }

            
        } finally { 
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
        processRequest(request, response);
    } 

    /** 
    * Handles the HTTP <code>POST</code> method.
    * @param request servlet request
    * @param response servlet response
    */
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        processRequest(request, response);
    }

    /** 
    * Returns a short description of the servlet.
    */
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
