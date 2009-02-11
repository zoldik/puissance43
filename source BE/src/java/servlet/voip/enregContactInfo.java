/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package servlet.voip;

import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;
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
       DAOFactory daoFactory = DAOFactory.getDAOFactory(DAOFactory.MYSQL);
       ContactVoipDAOInterface contactVoipDAO = daoFactory.getContactVoipDAO();


       try{
       
 
       int id_voip=1;
       String Titre = request.getParameter("titre");
       out.println(Titre);
       String Categorie = request.getParameter("categorie");
       String Nom = request.getParameter("nom");
       String Prenom = request.getParameter("prenom");
       String Telephone = request.getParameter("telephone");
       String Email = request.getParameter("email");
       int id=contactVoipDAO.getlastId();
       ContactVoipTO contact = new ContactVoipTO(id,Titre,Categorie,Nom,Prenom,Telephone,Email,id_voip);
       contactVoipDAO.insertContact(contact);
       
       out.println("enregistrement réussi");
       response.sendRedirect(response.encodeRedirectURL("voip/repertoire.jsp"));
      
       

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
