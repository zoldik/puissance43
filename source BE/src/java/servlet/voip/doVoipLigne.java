/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package servlet.voip;

import DAO.interfaces.LineDAOInterface;
import DAO.factory.DAOFactory;

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

      String customerid = request.getParameter("customerid");
      String name = request.getParameter("name"); 
      String host = "dynamic";
      String nat = "no";
      String type = "friend";
      String accountcode = null;
      String amaflags = null;
      String calllimit = null;
      String callgroup = request.getParameter("callgroup");
      String callerid = request.getParameter("callerid");
      String cancallforward = null;
      String canreinvite = null;
      String context = "DLPN_VoIP";
      String defaultip = null;
      String dtmfmode = "rfc2833";
      String fromuser = null;
      String fromdomain = null;
      String insecure = null;
      String language = request.getParameter("language");
      String mailbox = request.getParameter("name");
      String md5secret = null;
      String deny = null;
      String permit = null;
      String mask = null;
      String musiconhold = null;
      String pickupgroup = "1";
      String qualify = "yes";
      String regexten = null;
      String restrictcid = null;
      String rtptimeout = null;
      String rtpholdtimeout = null;
      String secret = "0000";
      String setvar = null;
      String disallow = null;
      String allow = null;
      String fullcontact = null;
      String ipaddr = null;
      String port = null;
      String regserver = null;
      String regseconds = null;
      String username = request.getParameter("name");
      String visible = "1";

        
      DAOFactory daoFactory = DAOFactory.getDAOFactory(DAOFactory.MYSQL);
      LineDAOInterface LineDAO = daoFactory.getLineDAO();
      
      return LineDAO.insertLine(name,host,nat,type,accountcode,amaflags,calllimit,callgroup,callerid,cancallforward,canreinvite,context,defaultip,dtmfmode,fromuser,fromdomain,insecure,language,mailbox,md5secret,deny,permit,mask,musiconhold,pickupgroup,qualify,regexten,restrictcid,rtptimeout,rtpholdtimeout,secret,setvar,disallow,allow,fullcontact,ipaddr,port,regserver,regseconds,username,visible,customerid);
    }    

    
    private boolean edit(HttpServletRequest request,HttpServletResponse response) {
       
        
      String id = null;
      if (request.getParameter("id")!=null && request.getParameter("id").compareTo("null") != 0) id = request.getParameter("id");
      String customerid = null;
      if (request.getParameter("customerid")!=null && request.getParameter("customerid").compareTo("null") != 0) customerid = request.getParameter("customerid");
      String name = null;
      if (request.getParameter("name")!=null && request.getParameter("name").compareTo("null") != 0) name = request.getParameter("name"); 
      String host = null;
      if (request.getParameter("host")!=null && request.getParameter("host").compareTo("null") != 0) host = request.getParameter("host");
      String nat = null;
      if (request.getParameter("nat")!=null && request.getParameter("nat").compareTo("null") != 0) nat = request.getParameter("nat");
      String type = null;
      if (request.getParameter("type")!=null && request.getParameter("type").compareTo("null") != 0) type = request.getParameter("type");
      String accountcode = null;
      if (request.getParameter("accountcode")!=null && request.getParameter("accountcode").compareTo("null") != 0) accountcode = request.getParameter("accountcode");
      String amaflags = null;
      if (request.getParameter("amaflags")!=null && request.getParameter("amaflags").compareTo("null") != 0) amaflags = request.getParameter("amaflags");
      String calllimit = null;
      if (request.getParameter("calllimit")!=null && request.getParameter("calllimit").compareTo("null") != 0) calllimit = request.getParameter("calllimit");
      String callgroup = null;
      if (request.getParameter("callgroup")!=null && request.getParameter("callgroup").compareTo("null") != 0) callgroup = request.getParameter("callgroup");
      String callerid = null;
      if (request.getParameter("callerid")!=null && request.getParameter("callerid").compareTo("null") != 0) callerid = request.getParameter("callerid");
      String cancallforward = null;
      if (request.getParameter("cancallforward")!=null && request.getParameter("cancallforward").compareTo("null") != 0) cancallforward = request.getParameter("cancallforward");
      String canreinvite = null;
      if (request.getParameter("canreinvite")!=null && request.getParameter("canreinvite").compareTo("null") != 0) canreinvite = request.getParameter("canreinvite");
      String context = null;
      if (request.getParameter("context")!=null && request.getParameter("context").compareTo("null") != 0) context = request.getParameter("context");
      String defaultip = null;
      if (request.getParameter("defaultip")!=null && request.getParameter("defaultip").compareTo("null") != 0) defaultip = request.getParameter("defaultip");
      String dtmfmode = null;
      if (request.getParameter("dtmfmode")!=null && request.getParameter("dtmfmode").compareTo("null") != 0) dtmfmode = request.getParameter("dtmfmode");
      String fromuser = null;
      if (request.getParameter("fromuser")!=null && request.getParameter("fromuser").compareTo("null") != 0) fromuser = request.getParameter("fromuser");
      String fromdomain = null;
      if (request.getParameter("fromdomain")!=null && request.getParameter("fromdomain").compareTo("null") != 0) fromdomain = request.getParameter("fromdomain");
      String insecure = null;
      if (request.getParameter("insecure")!=null && request.getParameter("insecure").compareTo("null") != 0) insecure = request.getParameter("insecure");
      String language = null;
      if (request.getParameter("language")!=null && request.getParameter("language").compareTo("null") != 0) language = request.getParameter("language");
      String mailbox = null;
      if (request.getParameter("mailbox")!=null && request.getParameter("mailbox").compareTo("null") != 0) mailbox = request.getParameter("mailbox");
      String md5secret = null;
      if (request.getParameter("md5secret")!=null && request.getParameter("md5secret").compareTo("null") != 0) md5secret = request.getParameter("md5secret");
      String deny = null;
      if (request.getParameter("deny")!=null && request.getParameter("deny").compareTo("null") != 0) deny = request.getParameter("deny");
      String permit = null;
      if (request.getParameter("permit")!=null && request.getParameter("permit").compareTo("null") != 0) permit = request.getParameter("permit");
      String mask = null;
      if (request.getParameter("mask")!=null && request.getParameter("mask").compareTo("null") != 0) mask = request.getParameter("mask");
      String musiconhold = null;
      if (request.getParameter("musiconhold")!=null && request.getParameter("musiconhold").compareTo("null") != 0) musiconhold = request.getParameter("musiconhold");
      String pickupgroup = null;
      if (request.getParameter("pickupgroup")!=null && request.getParameter("pickupgroup").compareTo("null") != 0) pickupgroup = request.getParameter("pickupgroup");
      String qualify = null;
      if (request.getParameter("qualify")!=null && request.getParameter("qualify").compareTo("null") != 0) qualify = request.getParameter("qualify");
      String regexten = null;
      if (request.getParameter("regexten")!=null && request.getParameter("regexten").compareTo("null") != 0) regexten = request.getParameter("regexten");
      String restrictcid = null;
      if (request.getParameter("restrictcid")!=null && request.getParameter("restrictcid").compareTo("null") != 0) restrictcid = request.getParameter("restrictcid");
      String rtptimeout = null;
      if (request.getParameter("rtptimeout")!=null && request.getParameter("rtptimeout").compareTo("null") != 0) rtptimeout = request.getParameter("rtptimeout");
      String rtpholdtimeout = null;
      if (request.getParameter("rtpholdtimeout")!=null && request.getParameter("rtpholdtimeout").compareTo("null") != 0) rtpholdtimeout = request.getParameter("rtpholdtimeout");
      String secret = null;
      if (request.getParameter("secret")!=null && request.getParameter("secret").compareTo("null") != 0) secret = request.getParameter("secret");
      String setvar = null;
      if (request.getParameter("setvar")!=null && request.getParameter("setvar").compareTo("null") != 0) setvar = request.getParameter("setvar");
      String disallow = null;
      if (request.getParameter("disallow")!=null && request.getParameter("disallow").compareTo("null") != 0) disallow = request.getParameter("disallow");
      String allow = null;
      if (request.getParameter("allow")!=null && request.getParameter("allow").compareTo("null") != 0) allow = request.getParameter("allow");
      String fullcontact = null;
      if (request.getParameter("fullcontact")!=null && request.getParameter("fullcontact").compareTo("null") != 0) fullcontact = request.getParameter("fullcontact");
      String ipaddr = null;
      if (request.getParameter("ipaddr")!=null && request.getParameter("ipaddr").compareTo("null") != 0) ipaddr = request.getParameter("ipaddr");
      String port = null;
      if (request.getParameter("port")!=null && request.getParameter("port").compareTo("null") != 0) port = request.getParameter("port");
      String regserver = null;
      if (request.getParameter("regserver")!=null && request.getParameter("regserver").compareTo("null") != 0) regserver = request.getParameter("regserver");
      String regseconds = null;
      if (request.getParameter("regseconds")!=null && request.getParameter("regseconds").compareTo("null") != 0) regseconds = request.getParameter("regseconds");
      String username = null;
      if (request.getParameter("username")!=null && request.getParameter("username").compareTo("null") != 0) username = request.getParameter("username");
      String visible = null;
      if (request.getParameter("visible")!=null && request.getParameter("visible").compareTo("null") != 0) visible = request.getParameter("visible");
      
      DAOFactory daoFactory = DAOFactory.getDAOFactory(DAOFactory.MYSQL);
      LineDAOInterface LineDAO = daoFactory.getLineDAO();
      
      return LineDAO.updateLineById(id,name,host,nat,type,accountcode,amaflags,calllimit,callgroup,callerid,cancallforward,canreinvite,context,defaultip,dtmfmode,fromuser,fromdomain,insecure,language,mailbox,md5secret,deny,permit,mask,musiconhold,pickupgroup,qualify,regexten,restrictcid,rtptimeout,rtpholdtimeout,secret,setvar,disallow,allow,fullcontact,ipaddr,port,regserver,regseconds,username,visible,customerid);
    }
    
    private boolean editclient(HttpServletRequest request,HttpServletResponse response) {
       
        
      String secret = null;
      if (request.getParameter("secret")!=null && request.getParameter("secret").compareTo("null") != 0) secret = request.getParameter("secret");
      
      String visible = null;
      if (request.getParameter("visible")!=null && request.getParameter("visible").compareTo("null") != 0) visible = request.getParameter("visible");
      
      String language = null;
      if (request.getParameter("language")!=null && request.getParameter("language").compareTo("null") != 0) language = request.getParameter("language");
      
      String callerid = null;
      if (request.getParameter("callerid")!=null && request.getParameter("callerid").compareTo("null") != 0) visible = request.getParameter("callerid");
              
      String musiconhold = null;
      if (request.getParameter("musiconhold")!=null && request.getParameter("musiconhold").compareTo("null") != 0) visible = request.getParameter("musiconhold");
      
      String id = null;
      String customerid = null;
      String name = null; 
      String host = null;
      String nat = null;
      String type = null;
      String accountcode = null;
      String amaflags = null;
      String calllimit = null;
      String callgroup = null;
      String cancallforward = null;
      String canreinvite = null;
      String context = null;
      String defaultip = null;
      String dtmfmode =null;
      String fromuser = null;
      String fromdomain = null;
      String insecure = null;
      String mailbox = null;
      String md5secret = null;
      String deny = null;
      String permit = null;
      String mask = null;
      String pickupgroup = null;
      String qualify = null;
      String regexten = null;
      String restrictcid = null;
      String rtptimeout = null;
      String rtpholdtimeout = null;
      String setvar = null;
      String disallow = null;
      String allow = null;
      String fullcontact = null;
      String ipaddr = null;
      String port = null;
      String regserver = null;
      String regseconds = null;
      String username = null;

      
      DAOFactory daoFactory = DAOFactory.getDAOFactory(DAOFactory.MYSQL);
      LineDAOInterface LineDAO = daoFactory.getLineDAO();
      
      return LineDAO.updateLineById(id,name,host,nat,type,accountcode,amaflags,calllimit,callgroup,callerid,cancallforward,canreinvite,context,defaultip,dtmfmode,fromuser,fromdomain,insecure,language,mailbox,md5secret,deny,permit,mask,musiconhold,pickupgroup,qualify,regexten,restrictcid,rtptimeout,rtpholdtimeout,secret,setvar,disallow,allow,fullcontact,ipaddr,port,regserver,regseconds,username,visible,customerid);
    }
    
    
    
    
    
    private boolean delete(String id) {
      DAOFactory daoFactory = DAOFactory.getDAOFactory(DAOFactory.MYSQL);
      LineDAOInterface LineDAO = daoFactory.getLineDAO();
        
      return LineDAO.deleteLine(id);
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
           
           //-- Editclient action
           if ( request.getParameter("action").compareTo("editclient") == 0){
               String id = request.getParameter("id");
               
                if ( editclient(request,response) == true) {
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
