/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package servlet.voip;

import model.voip.*;

import model.voip.Annuaire;
import model.voip.RowAnnuaire;
import DAO.interfaces.LineDAOInterface;
import DAO.interfaces.CustomerDAOInterface;
import DAO.transfertObject.LineTO;
import DAO.transfertObject.CustomerTO;
import DAO.factory.DAOFactory;
import DAO.factory.MySqlDAOFactory;
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
public class doVoipLigne extends HttpServlet {
   
    
    
    private boolean add(HttpServletRequest request,HttpServletResponse response) {

        VoipLigne vl = new VoipLigne();
        
        

        //return VoipLigneDAO.insertfull(vl);
        return false;
    }
    
    private boolean edit(HttpServletRequest request,HttpServletResponse response) {
       
        
      String id = request.getParameter("id");
      String customerid = request.getParameter("customerid");
      String name = request.getParameter("name"); 
      String host = request.getParameter("host");
      String nat = request.getParameter("nat");
      String type = request.getParameter("type");
      String accountcode = request.getParameter("accountcode");
      String amaflags = request.getParameter("amaflags");
      String calllimit = request.getParameter("calllimit");
      String callgroup = request.getParameter("callgroup");
      String callerid = request.getParameter("callerid");
      String cancallforward = request.getParameter("cancallforward");
      String canreinvite = request.getParameter("canreinvite");
      String context = request.getParameter("context");
      String defaultip = request.getParameter("defaultip");
      String dtmfmode = request.getParameter("dtmfmode");
      String fromuser = request.getParameter("fromuser");
      String fromdomain = request.getParameter("fromdomain");
      String insecure = request.getParameter("insecure");
      String language = request.getParameter("language");
      String mailbox = request.getParameter("mailbox");
      String md5secret = request.getParameter("md5secret");
      String deny = request.getParameter("deny");
      String permit = request.getParameter("permit");
      String mask = request.getParameter("mask");
      String musiconhold = request.getParameter("musiconhold");
      String pickupgroup = request.getParameter("pickupgroup");
      String qualify = request.getParameter("qualify");
      String regexten = request.getParameter("regexten");
      String restrictcid = request.getParameter("restrictcid");
      String rtptimeout = request.getParameter("rtptimeout");
      String rtpholdtimeout = request.getParameter("rtpholdtimeout");
      String secret = request.getParameter("secret");
      String setvar = request.getParameter("setvar");
      String disallow = request.getParameter("disallow");
      String allow = request.getParameter("allow");
      String fullcontact = request.getParameter("fullcontact");
      String ipaddr = request.getParameter("ipaddr");
      String port = request.getParameter("port");
      String regserver = request.getParameter("regserver");
      String regseconds = request.getParameter("regseconds");
      String username = request.getParameter("username");
      String visible = request.getParameter("visible");
      String id_customer = request.getParameter("customerid");
      
      DAOFactory daoFactory = DAOFactory.getDAOFactory(DAOFactory.MYSQL);
      LineDAOInterface LineDAO = daoFactory.getLineDAO();
      
      return LineDAO.updateLineById(id,name,host,nat,type,accountcode,amaflags,calllimit,callgroup,callerid,cancallforward,canreinvite,context,defaultip,dtmfmode,fromuser,fromdomain,insecure,language,mailbox,md5secret,deny,permit,mask,musiconhold,pickupgroup,qualify,regexten,restrictcid,rtptimeout,rtpholdtimeout,secret,setvar,disallow,allow,fullcontact,ipaddr,port,regserver,regseconds,username,visible,customerid,id_customer);
    }
    
    private boolean delete(String id) {
            return true;//VoipLigneDAO.deleteLigneById(id);
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
               
                if ( add(request,response) == true) {
                    out.println("<p align=\"center\">Add successfull !<br/>");
                }else{
                    out.println("<p align=\"center\">Add failed !<br/>");  
                }
                out.println( "<a href=\"./voip/admin/ligneManagement.jsp\">back</a></p>" );
               
           }
           
           //-- Edit action
           if ( request.getParameter("action").compareTo("edit") == 0){
               String id = request.getParameter("id");
               
                if ( edit(request,response) == true) {
                    out.println("<p align=\"center\">Edit successfull !<br/>");
                }else{
                    out.println("<p align=\"center\">Edit failed !<br/>");  
                }
                out.println( "<a href=\"./voip/admin/ligneManagement.jsp\">back</a></p>" );
           }
           
           //-- Delete action
           if ( request.getParameter("action").compareTo("delete") == 0){
               String id = request.getParameter("id");
               
                if ( delete(id) == true) {
                    out.println("<p align=\"center\">Delete successfull !<br/>");
                }else{
                    out.println("<p align=\"center\">Delete failed !<br/>");  
                }
                out.println( "<a href=\"./voip/admin/ligneManagement.jsp\">back</a></p>" );
               
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
