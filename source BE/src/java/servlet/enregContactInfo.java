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



/**
 *
 * @author thomas
 */
public class enregContactInfo extends javax.servlet.http.HttpServlet {
   
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
        try{
        
        //Pour effectuer les tests on crée ici un objet UserVoip ainsi qu'un objet Repertoire
         
        //UserVoip user_voip = new UserVoip();
        Repertoire repertoire=new Repertoire();
       // user_voip.hasRepertoire=true;
        int id_voip=1;

                    
        String Titre = request.getParameter("Titre");
        String Categorie = request.getParameter("Catégorie");
        String Nom = request.getParameter("Nom");
        String Prenom = request.getParameter("Prénom");
        String Telephone = request.getParameter("Téléphone");
        String Email = request.getParameter("Email");
        int id=SQLContactVoip.getlastId();
        
        Contact contact = new Contact(id,Titre,Categorie,Nom,Prenom,Telephone,Email);
        
        SQLContactVoip.insert(id, Titre, Categorie, Nom, Prenom, Telephone, Email, id_voip);
        
     //   insert().Contact
        
        // récupération du dernier id libre dans BDD (créer une fonction dans DAO)
        /*
        mysql_query("INSERT INTO table (nom_table) values ('ex')");
   $dernier_id =  mysql_insert_id()          
          */
        
        // création d'un contact
        
        //insertion du contact dans la bdd
        }  
        catch (Exception e){
			System.err.println("Problème de répertoire");
			e.printStackTrace();		
		}
   }
    

    /** 
    * Handles the HTTP <code>POST</code> method.
    * @param request servlet request
    * @param response servlet response
    */
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
    }

    /** 
    * Returns a short description of the servlet.
    */
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
