
package servlet.customer.account;


import java.io.*;
import java.util.*;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import model.database.*;

/**
 *
 * @author isen
 */
public class LostPassword extends HttpServlet {

    
        /** Processes requests for both HTTP <code>GET</code> and <code>POST</code> methods.
     * @param request servlet request
     * @param response servlet response
     * @throws java.io.IOException
     * @throws javax.servlet.ServletException
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        try{
                        boolean envoi=false;
                        String login = request.getParameter("username");
                        String email = request.getParameter("email");
                        
                        if(login!="" && email.length()<30 && email.toString().indexOf("@",0)!=-1 && email.toString().indexOf(".",0)!=-1) {
                            if(SQLCustomer.isValidEmail(login,email)) {
                                //Envoi mail
                                envoi=true;
                            } else {
                                envoi=false;
                            } 
                        } else {
                            envoi=false;
                        }
                        

			if (envoi){
				//Si on a la permission, on accède à la suite
                                response.sendRedirect("./index.jsp?Envoi=1");
			}
			else {
				//Sinon, on revient à la page d'authentification
				response.sendRedirect("./index.jsp?Envoi=0");
			}
		}catch (Exception e){
			System.err.println("Erreur à l'authentification !");
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