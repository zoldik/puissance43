/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package servlet.voip;


import model.voip.Annuaire;
import model.voip.RowAnnuaire;
import DAO.interfaces.LineDAOInterface;
import DAO.interfaces.CustomerDAOInterface;
import DAO.transfertObject.LineTO;
import DAO.factory.DAOFactory;
import DAO.transfertObject.CustomerTO;

import java.util.*;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author francois
 */
public class createAnnuaire extends HttpServlet {
   
    /** 
    * Processes requests for both HTTP <code>GET</code> and <code>POST</code> methods.
    * @param request servlet request
    * @param response servlet response
    */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        HttpSession session = request.getSession(true);
        
        
        try {

            //Creation de l'Annuaire
            Annuaire annuaire = new Annuaire();
            
            DAOFactory daoFactory = DAOFactory.getDAOFactory(DAOFactory.MYSQL);
            LineDAOInterface LineDAO = daoFactory.getLineDAO();
            
            //selectionne les numeros
            LinkedList<LineTO> lines1 = new LinkedList <LineTO>();
            ListIterator<LineTO> indice;
            LineTO vl = new LineTO();
            lines1 = LineDAO.selectAllLineTO();
            indice = lines1.listIterator();
 
            while (indice.hasNext()){
                vl = indice.next();
                if( vl.getvisible() == true){
                    
                    //recupere les informations dans customer
                    CustomerDAOInterface customerDAO = daoFactory.getCustomerDAO();
                    CustomerTO vc = new CustomerTO() ;
                    vc = customerDAO.findCustomerById(vl.getcustomerid());
                    
                    RowAnnuaire ra = new RowAnnuaire();
                    ra.setFirstName(vc.getFirstName());
                    ra.setLastName(vc.getLastName());
                    ra.setCompany(vc.getCompany());
                    ra.setNumber(vl.getname());
                    ra.setMail(vl.getmailbox());
                    ra.setGroupe(vl.getcontext());
                    annuaire.addRow(ra);
                }
            }
            //Register annuaire in a Session
            session.setAttribute("annuaire", annuaire);
        } catch(Exception e){
            e.printStackTrace();
        } finally {
            out.close();
        }            
        

    } 

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /** 
    * Handles the HTTP <code>GET</code> method.
    * @param request servlet request
    * @param response servlet response
    */
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        processRequest(request, response);
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
