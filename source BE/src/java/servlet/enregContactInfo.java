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
       response.setContentType("text/html;charset=UTF-8") ;
       PrintWriter out = response.getWriter(); 
       try{

        int id_voip=1;

                    
       String Titre = request.getParameter("titre");
       out.println("titre ="+Titre+"");
       String Categorie = request.getParameter("categorie");
       out.println("categorie ="+Categorie+"");
       String Nom = request.getParameter("nom");
       out.println("nom ="+Nom+"");
       String Prenom = request.getParameter("prenom");
       out.println("prénom ="+Prenom+"");
       String Telephone = request.getParameter("telephone");
       out.println();
       String Email = request.getParameter("email");
       out.println();
       int id=SQLContactVoip.getlastId();
       out.println("enregistrement réussi id =  "+id+""); 
       Contact contact = new Contact(id,Titre,Categorie,Nom,Prenom,Telephone,Email,id_voip);
        
       SQLContactVoip.insertContact(contact);
       out.println("enregistrement réussi");
       out.println("<jsp:forward page=\"voip/annuaire.jsp\"/>");
       

     //   insert().Contact
        

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
        doGet(request,response);
    }

    /** 
    * Returns a short description of the servlet.
    */
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
