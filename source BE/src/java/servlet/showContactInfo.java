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
        
        int id=1;
        LinkedList listeContact = new LinkedList <Contact>();
        ListIterator<Contact> indice;
        Contact contact;

        
       listeContact = SQLContactVoip.getContactbyVoipId(id);
       indice = listeContact.listIterator();
       out.println("<table border=\"1\" bordercolor=\"#FF3300\" style=\"background-color:#FFFFFF\" width=\"600\" cellpadding=\"3\" cellspacing=\"3\">");
       out.println("<tr>");
       out.println("<td><select name=\"liste\"><option value=\"\">Choisissez votre action");
       out.println("<option value=\"supprimer\">Supprimer");
       out.println("<option value=\"modifier\">Modifier");
       out.println("</td>");

       out.println("<td>Vos contacts</td>");
       out.println("<tr>");



       while (indice.hasNext()){
       contact = indice.next();
       out.println("<tr>");
       out.println("<td align=\"center\"><input type=\"radio\" name=\"choix\" value=\"mod");
       out.println(contact.id);
       out.println("\"value=\"ON\" /></td>");
       out.println("<td>&nbsp; prénom : "+contact.prenom+"<br>");
       out.println("&nbsp; nom : "+contact.nom+"<br>");
       out.println("titre : "+contact.titre+"<br>");
       out.println("categorie : "+contact.categorie+"<br>");
       out.println("telephone : "+contact.telephone+"<br>");
       out.println("email : "+contact.mail+"<br><br></td>");
       out.println("<tr>");
                                } 
       out.print("</table>");
       out.print("<input type=\"submit\" value=\"Valider\">"); 
        } 
        catch (Exception e){
        System.err.println("<h3>Vous n'avez pas de contact</h3>");
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
