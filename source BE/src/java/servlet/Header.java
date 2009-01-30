package servlet;


import java.io.*;
import java.util.*;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


/**
 *
 * @author isen
 */
public class Header extends HttpServlet {

    
        /** Processes requests for both HTTP <code>GET</code> and <code>POST</code> methods.
     * @param request servlet request
     * @param response servlet response
     * @throws java.io.IOException
     * @throws javax.servlet.ServletException
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        
        
        out.println("<div class=\"menu\"><!-- début de la boite contenant les onglets -->"+
                "<a class=\"onglet\" href=\"#\" onclick=\"fonctionOpenPage('accueil.jsp'); fonctionContenu('Accueil'); fonctionClean('Accueil'); fonctionMenu('Accueil'); return false;\"><div id=\"Accueil\">Accueil</div></a>"+
                "<a class=\"onglet\" href=\"#\" onclick=\"fonctionContenu('Compte'); fonctionClean('Compte'); fonctionMenu('Compte'); return false;\"><div id=\"Compte\">Compte</div></a>"+
                "<a class=\"onglet\" href=\"#\" onclick=\"fonctionContenu('VOD'); fonctionClean('VOD'); fonctionMenu('VOD'); return false;\"><div id=\"VOD\">VOD</div></a>"+
                "<a class=\"onglet\" href=\"#\" onclick=\"fonctionOpenPage('voip/voip.jsp'); fonctionContenu('VoIP'); fonctionClean('VoIP'); fonctionMenu('VoIP'); return false;\"><div id=\"VoIP\">VoIP</div></a>"+
                "<a class=\"onglet\" href=\"#\" onclick=\"fonctionContenu('WebMail'); fonctionClean('WebMail'); fonctionMenu('WebMail'); return false;\"><div id=\"WebMail\">WebMail</div></a>"+
                "<a class=\"onglet\" href=\"#\" onclick=\"fonctionContenu('Assistance'); fonctionClean('Assistance'); fonctionMenu('Assistance'); return false;\"><div id=\"Assistance\">Assistance</div></a>"+
                "<a class=\"onglet\" href=\"#\" onclick=\"fonctionContenu('Réseaux'); fonctionClean('Réseaux'); fonctionMenu('Réseaux'); return false;\"><div id=\"Réseaux\">Réseaux</div></a>"+
                "<a class=\"onglet\" href=\"#\" onclick=\"fonctionContenu('NetworkDevices'); fonctionClean('NetworkDevices'); fonctionMenu('NetworkDevices'); return false;\"><div id=\"NetworkDevices\">NetworkDevices</div></a>"+
                "<a class=\"onglet\" href=\"#\" onclick=\"fonctionContenu('NetworkSolutions'); fonctionClean('NetworkSolutions'); fonctionMenu('NetworkSolutions'); return false;\"><div id=\"NetworkSolutions\">NetworkSolutions</div></a>"+
                "<div class=\"spacer\"></div> <!-- permet le retour à la ligne à la fin des boites float --> </div>"+
                "<div class=\"menu2\" id=\"submenu\"></div> ");
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