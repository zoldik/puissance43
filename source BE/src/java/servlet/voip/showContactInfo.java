/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package servlet.voip;

import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;
import java.util.*;
import DAO.interfaces.ContactVoipDAOInterface;
import DAO.interfaces.CustomerDAOInterface;
import DAO.transfertObject.ContactVoipTO;
import DAO.transfertObject.CustomerTO;
import DAO.factory.DAOFactory;
import DAO.factory.MySqlDAOFactory;
import DAO.transfertObject.CustomerTO;


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
        DAOFactory daoFactory = DAOFactory.getDAOFactory(DAOFactory.MYSQL);
        ContactVoipDAOInterface contactVoipDAO = daoFactory.getContactVoipDAO();
    
        
        try{
        
        int id=1;
        LinkedList listeContact = new LinkedList <ContactVoipTO>();
        ListIterator<ContactVoipTO> indice;
        ContactVoipTO contact;

        
       listeContact = contactVoipDAO.getContactbyVoipId(id);
       indice = listeContact.listIterator();
       out.println("<FORM Method=\"POST\" Action=\"../modContactInfo\">");
       out.println("<table border=\"1\" bordercolor=\"#FF3300\" style=\"background-color:#FFFFFF\" width=\"600\" cellpadding=\"3\" cellspacing=\"3\">");
       out.println("<tr>");
       out.println("<td><select name=\"liste\"><option value=\"\">Choisissez votre action");
       out.println("<option value=\"supprimer\"  onclick=\"evenement('supprimer');\">Supprimer");
       out.println("<option value=\"modifier\" onclick=\"evenement('modifier');\">Modifier");
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
       out.println("</table>");
       out.println("<input type=\"submit\" value=\"Valider votre action\">");
       out.println("</FORM>");
       out.println("<FORM Method=\"POST\" Action=\"voip/repertoire.jsp\">");
       out.println("<input type=\"submit\" value=\"Retour à mon répertoire\">");
       out.println("</FORM>");

        } 
        catch (Exception e){
        System.err.println("<h3>Vous n'avez pas de contact</h3>");
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
