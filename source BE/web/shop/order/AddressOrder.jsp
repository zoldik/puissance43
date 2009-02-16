<%-- 
    Document   : AddressOrder
    Created on : 15 févr. 2009, 15:22:33
    Author     : vincent
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page language="Java" import="model.account.*" %>
<%@ page import="java.util.*" %>
<%@ page import="DAO.factory.DAOFactory, DAO.factory.MySqlDAOFactory" %>
<%@ page import="DAO.transfertObject.AddressTO, DAO.interfaces.AddressDAOInterface" %>
<%@ page import="DAO.transfertObject.CustomerTO" %>

<html>
    <head>
        
        <script language="JavaScript" src="javascripts/ajax_register_core.js"></script>
        <script language="JavaScript" src="javascripts/ajax_register_functionsTest.js"></script>
        
        <title>Delivery Address</title>
    </head>
    <body>
        
        <%

            HttpSession customerSession = request.getSession(false);

            CustomerTO customerTO = (CustomerTO) customerSession.getAttribute("Customer");
            
            int idAddress = customerTO.getIdAddress();
            DAOFactory daoFactory = DAOFactory.getDAOFactory(DAOFactory.MYSQL);
            AddressDAOInterface addressDAO = daoFactory.getAddressDAO();

            AddressTO addressTO = addressDAO.findAddressById(idAddress);
            
        %>        
        
        <table>
            <tr align="left"><td><h2 align='left'>Adresse de livraison :</h2></td></tr>
            
            
            <tr align="left">
                <td><a>* Rue : </a></td>
                <td><input type="text" disabled name="street" value="<%if (addressTO.getStreet() != null) {
                out.print(addressTO.getStreet());
            }%>" align="left" />                
            </tr>
            
            
            <tr align="left">
                <td><a>* Code postal : </a></td>
                <td><input type="text" name="postalCode" disabled value="<%if (addressTO.getPostalCode() != null) {
                out.print(addressTO.getPostalCode());
            }%>" align="left" />                
            </tr>
            
            
            <tr align="left">
                <td><a>* Ville : </a></td>
                <td><input type="text" name="city" disabled value="<%if (addressTO.getCity() != null) {
                out.print(addressTO.getCity());
            }%>" align="left" />                
            </tr>
            
            
            <tr align="left">
                <td><a>* Pays : </a></td>
                <td><input type="text" name="country" disabled value="<%if (addressTO.getCountry() != null) {
                out.print(addressTO.getCountry());
            }%>" align="left" />
                <div id="country"></div></td>
            </tr>
            
            
            <!--zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz-->
                    
            
            <tr>
                <td></td>
                <td align="left">
                    <form method="post" action="./DeliveryAddressOrder.jsp">
                    <input type="submit" value="Changer l'adresse de livraison" />
                    </form>
                </td>
            </tr>
            
            
            
            <!--zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz-->
            
            
                    <% 
        //Pour pouvoir passer l'adresse à la servlet
        session.setAttribute("deliveryAddress", addressTO); 
                    
                %>

            
            <tr>
                <td></td>
                <td align="left">
                    <form method="post" action="./ConfirmationOrder.jsp">
                    <input type="submit" value="Valider l'adresse de livraison" />
                    </form>
                </td>
            </tr>
            
        </table>
        
    </body>
</html>
