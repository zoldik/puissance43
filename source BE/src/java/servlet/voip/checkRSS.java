
package servlet.voip;


import java.io.*;
import java.util.*;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import model.account.*;

/**
 *
 * @author isen
 */
public class checkRSS extends HttpServlet {

    
        /** Processes requests for both HTTP <code>GET</code> and <code>POST</code> methods.
     * @param request servlet request
     * @param response servlet response
     * @throws java.io.IOException
     * @throws javax.servlet.ServletException
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        try{
            
            
            
        } catch (Exception e) {
            System.err.println("Erreur à la déconnexion !");
            e.printStackTrace();		
	}
        
        
    }
    
    
    
    
    // <editor-fold defaultstate=\\"collapsed\\" desc=\\"HttpServlet methods. Click on the + sign on the left to edit the code.\\">
    /** Handles the HTTP <code>GET</code> method.
     * @param request servlet request
     * @param response servlet response
     * @throws java.io.IOException
     * @throws javax.servlet.ServletException
     */
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        processRequest(request, response);
    }
    
    /** Handles the HTTP <code>POST</code> method.
     * @param request servlet request
     * @param response servlet response
     * @throws java.io.IOException
     * @throws javax.servlet.ServletException
     */
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        processRequest(request, response);
    }

    
}