<%-- 
    Document   : InternetSubscribe
    Created on : 11 févr. 2009, 07:35:35
    Author     : vincent
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%@ page import="java.util.*" %>
<%@ page import="DAO.factory.*, DAO.transfertObject.InternetSubscribeTO, DAO.interfaces.InternetSubscribeDAOInterface" %>
<%@ page import="DAO.transfertObject.VoipSubscribeTO, DAO.interfaces.VoipSubscribeDAOInterface" %>
<%@ page import="DAO.transfertObject.VodSubscribeTO, DAO.interfaces.VodSubscribeDAOInterface" %>
<%@ page import="DAO.transfertObject.CustomerTO" %>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        
        <!--Le bouton s'abonner-->       
            <%

            HttpSession customerSession = request.getSession(false);

            if (customerSession != null) {
                if (customerSession.getAttribute("Customer") != null) {
                    CustomerTO customerObject = (CustomerTO) customerSession.getAttribute("Customer");
                    if (customerObject.getValid()) {
                        int level = customerObject.getAccountLevel();
                        if (level >= 0 && level < 9) {                            
                        }
                    }
                }
            }
            %>
            



           <!--zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz-->     
            <%

            if (customerSession != null) {
                if (customerSession.getAttribute("Customer") != null) {
                    CustomerTO customer = (CustomerTO) customerSession.getAttribute("Customer");
                    if (customer.getValid()) {
                        int accountLevel = customer.getAccountLevel();
                        // 4 : client internet
                        // 5 : client internet + Voip
                        // 6 : client internet + VoD
                        // 7 : client Triple play            
                        if (!(accountLevel >= 4 && accountLevel < 7)) {

                            %>
        <h2>Souscrire à une offre internet</h2>
        
        <table width="100%" border="1">
            
            <!-- titles -->
            <tr style="color:white">
                <tr>
                    <th>N°</th>
                    <th>Nom</th>
                    <th>Description</th>          
                    <th>Prix (parMois)</th>
                    <th>Debit</th>                
                    <th>S'abonner</th>
                </tr>          
            </tr>                            
            
            <%
                            DAOFactory daoFactory = DAOFactory.getDAOFactory(DAOFactory.MYSQL);
                            InternetSubscribeDAOInterface internetSubscribeDAO = daoFactory.getInternetSubscribeDAO();

                            ArrayList<InternetSubscribeTO> internetSubscribeTOs = internetSubscribeDAO.selectAllInternetSubscribeTOs();

                            Iterator it = internetSubscribeTOs.iterator();

                            while (it.hasNext()) {
                                InternetSubscribeTO internetSubscribeTO = (InternetSubscribeTO) it.next();
            %>
            
            <tr><td><%=internetSubscribeTO.getId()%></td>
                <td><%=internetSubscribeTO.getNameSubscribe()%></td>
                <td><%=internetSubscribeTO.getDescriptionSubscribe()%></td>            
                <td><%=internetSubscribeTO.getPrice()%></td>
                <td><%=internetSubscribeTO.getRate()%></td>
                <td><form method='post' action="CtrSubscribe">
                        <input type='submit' value="S'abonner">
                        <input type="hidden" name="subSubscribe" value="internet" />
                        <input type='hidden' name='idInternet' value='<%=internetSubscribeTO.getId()%>'>                        
                </form></td>
            </tr>
            <%
                            }//Fin du while  
                        } //Fin du if accountLevel
                    } //Fin du if getValid

                } //Fin du if Attribut customer

            } //Fin du if session
%>        
        </table>
        
        
        
        
        <!--zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz-->  
        <%

            if (customerSession != null) {
                if (customerSession.getAttribute("Customer") != null) {
                    CustomerTO customer = (CustomerTO) customerSession.getAttribute("Customer");
                    if (customer.getValid()) {
                        int accountLevel = customer.getAccountLevel();
                        // 1 : client Voip
                        // 3 : client VoD + Voip
                        // 5 : client internet + Voip                        
                        // 7 : client Triple play            
                        if (!(accountLevel == 1 || accountLevel == 3 || accountLevel == 5 || accountLevel == 7)) {
        %>
        
        <h2>Souscrire à une offre Voip</h2>
        
        <table width="100%" border="1">
            
            <!-- titles -->
            <tr style="color:white">
                <tr>
                    <th>N°</th>
                    <th>Nom</th>
                    <th>Description</th>    
                    <th>Type</th>
                    <th>Prix (parMois)</th>                                   
                    <th>S'abonner</th>
                </tr>          
            </tr>
            
            
            <%

                            DAOFactory daoFactory = DAOFactory.getDAOFactory(DAOFactory.MYSQL);

                            VoipSubscribeDAOInterface voipSubscribeDAO = daoFactory.getVoipSubscribeDAO();

                            LinkedList<VoipSubscribeTO> voipSubscribeTOs = voipSubscribeDAO.selectAllVoipSubscribeTOs();

                            ListIterator<VoipSubscribeTO> itVoip = voipSubscribeTOs.listIterator();

                            while (itVoip.hasNext()) {

                                VoipSubscribeTO voipSubscribeTO = (VoipSubscribeTO) itVoip.next();
            %>
            
            <tr><td><%=voipSubscribeTO.getId()%></td>
                <td><%=voipSubscribeTO.getName()%></td>
                <td><%=voipSubscribeTO.getDescription()%></td>            
                <td><%=voipSubscribeTO.getType()%></td>
                <td><%=voipSubscribeTO.getPrice()%></td>                
                <td><form method='post' action="CtrSubscribe">
                        <input type='submit' value="S'abonner">
                        <input type="hidden" name="subSubscribe" value="voip" />
                        <input type='hidden' name='idVoip' value='<%=voipSubscribeTO.getId()%>'>                       
                </form></td>
            </tr>
            <%
                            }//Fin du while  
                        } //Fin du if accountLevel
                    } //Fin du if getValid

                } //Fin du if Attribut customer

            } //Fin du if session
%>        
        </table>
        
        
        
        
        <!--zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz-->  
        <%

            if (customerSession != null) {
                if (customerSession.getAttribute("Customer") != null) {
                    CustomerTO customer = (CustomerTO) customerSession.getAttribute("Customer");
                    if (customer.getValid()) {
                        int accountLevel = customer.getAccountLevel();
                        // 2 : client VoD
                        // 3 : client VoD + Voip
                        // 6 : client internet + Voip                        
                        // 7 : client Triple play            
                        if (!(accountLevel == 2 || accountLevel == 3 || accountLevel == 6 || accountLevel == 7)) {
        %>
        <h2>Souscrire à une offre Vod</h2>
        
        <table width="100%" border="1">
            
            <!-- titles -->
            <tr style="color:white">
                <tr> 
                    <th>N°</th>
                    <th>Nom</th>
                    <th>Description</th>    
                    <th>Type</th>
                    <th>Prix (parMois)</th>                                   
                    <th>S'abonner</th>
                </tr>          
            </tr>
            
            <%

                            DAOFactory daoFactory = DAOFactory.getDAOFactory(DAOFactory.MYSQL);

                            VodSubscribeDAOInterface vodSubscribeDAO = daoFactory.getVodSubscribeDAO();

                            LinkedList<VodSubscribeTO> vodSubscribeTOs = vodSubscribeDAO.selectAllVodSubscribeTOs();

                            ListIterator<VodSubscribeTO> itVod = vodSubscribeTOs.listIterator();

                            while (itVod.hasNext()) {

                                VodSubscribeTO vodSubscribeTO = (VodSubscribeTO) itVod.next();
            %>
            
            <tr><td><%=vodSubscribeTO.getId()%></td>
                <td><%=vodSubscribeTO.getName()%></td>
                <td><%=vodSubscribeTO.getDescription()%></td>            
                <td><%=vodSubscribeTO.getType()%></td>
                <td><%=vodSubscribeTO.getPrice()%></td>                
                <td><form method='post' action="CtrSubscribe">
                        <input type='submit' value="S'abonner">
                        <input type="hidden" name="subSubscribe" value="vod" />
                        <input type='hidden' name='idVod' value='<%=vodSubscribeTO.getId()%>'>                       
                </form></td>
            </tr>
            <%
                            }//Fin du while  
                        } //Fin du if accountLevel
                    } //Fin du if getValid

                } //Fin du if Attribut customer

            } //Fin du if session
%>        
        </table>
    </body>
</html>
