/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package servlet;

import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;
import model.voip.*;
import model.account.*;

/**
 *
 * @author thomas
 */
public class ContactInfo extends javax.servlet.http.HttpServlet {
   
    /** 
    * Processes requests for both HTTP <code>GET</code> and <code>POST</code> methods.
    * @param request servlet request
    * @param response servlet response
    */


    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /** 
    * Handles the HTTP <code>GET</code> method.
    * @param request servlet request
    * @param response servlet response
    */
   public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
        
        //On vérifie la session
	HttpSession session = request.getSession(true);
        

                     
        String Titre = request.getParameter("Titre");
        String Categorie = request.getParameter("Catégorie");
        String Nom = request.getParameter("Nom");
        String Prenom = request.getParameter("Prénom");
        String Telephone = request.getParameter("Téléphone");
        String Email = request.getParameter("Email");
        
        // test du dernier id libre dans BDD
        int id=0;
        
        // création d'un contact
        Contact contact = new Contact(id,Titre,Categorie,Nom,Prenom,Telephone,Email);
        
        //insertion du contact dans la bdd
        
        
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
