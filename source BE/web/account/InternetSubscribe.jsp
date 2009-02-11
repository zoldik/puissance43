<%-- 
    Document   : InternetSubscribe
    Created on : 11 févr. 2009, 07:35:35
    Author     : vincent
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%@ page import="java.util.*" %>
<%@ page import="model.networkdevices.*" %>
<%@ page import="DAO.factory.*, DAO.transfertObject.InternetSubscribeTO, DAO.interfaces.InternetSubscribeDAOInterface" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h2>Souscrire à une offre internet</h2>
        
        <table bgcolor="black" width="100%" border="1">
        
        <!-- titles -->
        <tr style="color:white">
            <tr>          
                <th>Nom</th>
                <th>Description</th>          
                <th>Prix (parMois)</th>
                <th>Debit</th>                
                <th>S'abonné</th>
            </tr>          
        </tr>
        
        <%
            DAOFactory daoFactory = DAOFactory.getDAOFactory(DAOFactory.MYSQL);

            InternetSubscribeDAOInterface internetSubscribeDAO = daoFactory.getInternetSubscribeDAO();

            ArrayList<InternetSubscribeTO> internetSubscribeTOs = internetSubscribeDAO.selectAllInternetSubscribeTO();

            Iterator it = internetSubscribeTOs.iterator();

            InternetSubscribeTO internetSubscribeTO = (InternetSubscribeTO) it.next();
        %>
        
        <tr><td><%=internetSubscribeTO.getNameSubscribe()%></td>
            <td><%=internetSubscribeTO.getDescriptionSubscribe()%></td>            
            <td><%=internetSubscribeTO.getPrice()%></td>
            <td><%=internetSubscribeTO.getRate()%></td>
            <td><form method='post' action="CtrCart">
                    <input type='submit' value='Sabonné'>
                    <!--<input type='hidden' name='id' value='item.getId()'>
                    <input type="hidden" name='actionCart' value='delete'>-->
            </form></td>
        </tr>   
        
    </body>
</html>
