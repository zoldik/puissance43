/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package servlet.voip;

import DAO.interfaces.CustomerDAOInterface;
import DAO.factory.DAOFactory;
import DAO.transfertObject.CustomerTO;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author francois
 */
public class doVoipUser extends HttpServlet {
   
    
    
    private boolean add(String id) {
        DAOFactory daoFactory = DAOFactory.getDAOFactory(DAOFactory.MYSQL);
        CustomerDAOInterface CustomerDAO = daoFactory.getCustomerDAO();
        
      CustomerTO cu = CustomerDAO.findCustomerById( Integer.parseInt(id));
      int newAccountLevel = cu.getAccountLevel()+1 ;
      if ( CustomerDAO.updateCustomerAccountLevel(Integer.parseInt(id),newAccountLevel).compareTo("pas d'erreur" ) == 0 ) {
          return true;
      }else{
          return false;
      }
    }
    
    
    private boolean edit(HttpServletRequest request,HttpServletResponse response) {
        DAOFactory daoFactory = DAOFactory.getDAOFactory(DAOFactory.MYSQL);
        CustomerDAOInterface CustomerDAO = daoFactory.getCustomerDAO();
        
        return false;
    }
    
    
    private boolean delete(String id) {
      DAOFactory daoFactory = DAOFactory.getDAOFactory(DAOFactory.MYSQL);
      CustomerDAOInterface CustomerDAO = daoFactory.getCustomerDAO();
      
      CustomerTO cu = CustomerDAO.findCustomerById( Integer.parseInt(id));
      int newAccountLevel = cu.getAccountLevel()-1 ;
      if ( CustomerDAO.updateCustomerAccountLevel(Integer.parseInt(id),newAccountLevel).compareTo("pas d'erreur" ) == 0 ) {
          return true;
      }else{
          return false;
      }
    }
    /** 
    * Processes requests for both HTTP <code>GET</code> and <code>POST</code> methods.
    * @param request servlet request
    * @param response servlet response
    */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        try {

                       //-- Add action
           if ( request.getParameter("action").compareTo("add") == 0){
               String id = request.getParameter("id");
               
                if ( add(id) == true) {
                    out.println("<p align=\"center\">Add successfull !<br/>");
                }else{
                    out.println("<p align=\"center\">Add failed !<br/>");  
                }
                out.println( "<a href=\"./voip/admin/userManagement.jsp\">back</a></p>" );
               
           }
           
           //-- Edit action
           if ( request.getParameter("action").compareTo("edit") == 0){
               String id = request.getParameter("id");
               
                if ( edit(request,response) == true) {
                    out.println("<p align=\"center\">Edit successfull !<br/>");
                }else{
                    out.println("<p align=\"center\">Edit failed !<br/>");  
                }
                out.println( "<a href=\"./voip/admin/userManagement.jsp\">back</a></p>" );
           }
           
           //-- Delete action
           if ( request.getParameter("action").compareTo("delete") == 0){
               String id = request.getParameter("id");
               
                if ( delete(id) == true) {
                    out.println("<p align=\"center\">Delete successfull !<br/>");
                }else{
                    out.println("<p align=\"center\">Delete failed !<br/>");  
                }
                out.println( "<a href=\"./voip/admin/userManagement.jsp\">back</a></p>" );
               
           }

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
