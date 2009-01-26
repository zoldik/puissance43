/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package servlet;

import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;
import model.voip.*;
import model.database.*;
import java.sql.*;
import java.util.*;


/**
 *
 * @author thomas
 */
public class showContactInfo extends javax.servlet.http.HttpServlet {
   
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
	response.setContentType("text/html;charset=UTF-8") ;
        PrintWriter out = response.getWriter(); 
        
        try{

      
        ResultSet rs = null;
        Statement st = null;
        
        int id=1;
        int i=0;
        LinkedList listeContact = new LinkedList <Contact>();
        ListIterator<Contact> indice;
	indice = listeContact.listIterator();

        
       listeContact = SQLContactVoip.getContactbyVoipId(id);
       out.println(" i ="+i+"");
       while (indice.hasNext()){
       Contact contact= new Contact();    
       contact=indice.next();
       out.println(" i ="+i+"");
       out.println("titre ="+contact.titre+"");
       out.println("categorie ="+contact.categorie+"");
       out.println("nom ="+contact.nom+"");
       out.println("prénom ="+contact.prenom+"");
       out.println("prénom ="+contact.telephone+"");
       out.println("prénom ="+contact.mail+"");
       i++;                         } 
       out.println("affichage réussi");
       }  
        catch (Exception e){
        System.err.println("Problème d'affichage des contacts");
	e.printStackTrace();		
                            }
     
        //On vérifie la session
	/*HttpSession session = request.getSession(true);*/
        
        /*On vérifie que le répertoire existe et on récupère toutes les données dans la bdd et on met dans rs
         Puis on affiche tous les contacts du répertoire 
         */
        

                     
       /* 
        String Titre = rs.getParameter("Titre");
        String Categorie = rs.getParameter("Catégorie");
        String Nom = rs.getParameter("Nom");
        String Prenom = rs.getParameter("Prénom");
        String Telephone = rs.getParameter("Téléphone");
        String Email = rs.getParameter("Email");
        
        * outprintln(Titre = );
        * ... 
        
        */
        
        
   
        
       
        
       
        
        
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
