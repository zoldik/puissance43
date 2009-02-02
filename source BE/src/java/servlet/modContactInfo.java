/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package servlet;

import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;
import model.database.*;
import model.voip.*;


/**
 *
 * @author thomas
 */
public class modContactInfo extends HttpServlet {
   
    /** 
    * Processes requests for both HTTP <code>GET</code> and <code>POST</code> methods.
    * @param request servlet request
    * @param response servlet response
    */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
    } 

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /** 
    * Handles the HTTP <code>GET</code> method.
    * @param request servlet request
    * @param response servlet response
    */
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
    response.setContentType("text/html;charset=UTF-8") ;
    PrintWriter out = response.getWriter();
    int id = Integer.parseInt(request.getParameter("id")); 
    Contact contact = new Contact();

    try {
        contact=SQLContactVoip.selectbyId(id);
        out.println("<h1>Modifier votre contact</h1>");
        out.println("FORM Method=\"POST\" Action=\"../enregContactInfo\">");
        out.println("<table>");
        out.println("<tr>");
        out.println("<td>Titre </td>");
        out.println("<td><input type=\"text\" name=\"titre\" value=\"");
        out.println(contact.titre);
        out.println("\" /> </td>");
        out.println("</tr>");
        out.println("<tr>");
        out.println("<td>Catégorie </td>");
        out.println("<td><input type=\"text\" name=\"categorie\" value=\"");
        out.println(contact.categorie);
        out.println("\" /> </td>");
        out.println("</tr>");
        out.println("<tr>");
        out.println("<td>Nom </td>");
        out.println("<td><input type=\"text\" name=\"nom\" value=\"");
        out.println(contact.nom);
        out.println("\" /> </td>");
        out.println("</tr>");
        out.println("<tr>");
        out.println("<td>Prénom</td>");
        out.println("<td><input type=\"text\" name=\"prenom\" value=\"");
        out.println(contact.prenom);
        out.println("\" /> </td>");
        out.println("</tr>");
        out.println("<tr>");
        out.println("<td>Téléphone </td>");
        out.println("<td><input type=\"text\" name=\"telephone\" value=\"");
        out.println(contact.telephone);
        out.println("\" /> </td>");
        out.println("</tr>");        
        out.println("<tr>");
        out.println("<td>Email </td>");
        out.println("<td><input type=\"text\" name=\"mail\" value=\"");
        out.println(contact.mail);
        out.println("\" /> </td>");
        out.println("</tr>");     
        out.println("<tr>");
        out.println("<td align=\"center\"> <input type=\"submit\" value=\"Valider\" /></td>");
        out.println("</tr>");        
        out.println("</table>");
        out.println("</FORM>");
        
        
    
        }
    catch (Exception e) {System.out.println("Erreur dans la modification"+e);}

response.sendRedirect(response.encodeRedirectURL("voip/repertoire.jsp"));      
    } 

    /** 
    * Handles the HTTP <code>POST</code> method.
    * @param request servlet request
    * @param response servlet response
    */
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        doGet(request, response);
    }

    /** 
    * Returns a short description of the servlet.
    */
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
