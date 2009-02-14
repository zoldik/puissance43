<%-- 
    Document   : rss
    Created on : 13 janv. 2009, 19:05:34
    Author     : mxs
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page language="Java" import="java.io.*,java.util.*,java.util.LinkedList,DAO.factory.DAOFactory,DAO.interfaces.VoipRssDAOInterface,DAO.transfertObject.*;" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Flux RSS</title>
    </head>
    <body>
        <h2>Flux RSS</h2>
        <%
        boolean sessionOK=false;
            HttpSession CustomerSession = request.getSession(false);
              if (CustomerSession!=null) {
                  sessionOK=true;
                if (CustomerSession.getAttribute("Customer")!=null) {
                    sessionOK=true;
                    CustomerTO customerObject =(CustomerTO)CustomerSession.getAttribute("Customer");
                    if (customerObject.getValid()) {
                        sessionOK=true;
                        int level = customerObject.getAccountLevel();
                        if (level==1 || level==3 || level==5 || level==7) {
            DAOFactory daoFactory = DAOFactory.getDAOFactory(DAOFactory.MYSQL);
            VoipRssDAOInterface VoipRssDAO = daoFactory.getVoipRssDAO();
        
            LinkedList<String> listNames = new LinkedList<String>();
            //listNames = VoipRssDAO.getName(customerObject.getId());
            
                
        %>
        

        <%
                        } else {
                            sessionOK=false;
                        } 
                    } else {
                        sessionOK=false;
                    } 
                } else {
                    sessionOK=false;
                }
            } else {
                sessionOK=false;
            }
            %>
    </body>
</html>
