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

            RegisterCustomerErrors errorC = new RegisterCustomerErrors();
            RegisterAddressErrors errorA = new RegisterAddressErrors();


            HttpSession customerSession = request.getSession(false);

            //if (customerSession != null) {
            //if (customerSession.getAttribute("Customer") != null) {
            CustomerTO customerTO = (CustomerTO) customerSession.getAttribute("Customer");
            int idAddress = customerTO.getIdAddress();
            DAOFactory daoFactory = DAOFactory.getDAOFactory(DAOFactory.MYSQL);
            AddressDAOInterface addressDAO = daoFactory.getAddressDAO();

            AddressTO addressTO = addressDAO.findAddressById(idAddress);
            //}
            //}




        %>        
        <h2><%=addressTO.getStreet()%></h2>

        <table>
            <tr align="left"><td><h2 align='left'>Adresse :</h2></td></tr>
            
            
            <tr align="left">
                <td><a style="color:<%if (errorA.getErrorStreet() == 1) {
                out.print("#FF0000");
            }%>">* Rue : </a></td>
                <td><input type="text" name="street" value="<%if (addressTO.getStreet() != null) {
                out.print(addressTO.getStreet());
            }%>" onKeyUp=verifLength(this.value,"street","20") align="left" />
                <div id="street"></div></td>
            </tr>
            
            
            <tr align="left">
                <td><a style="color:<%if (errorA.getErrorPostalCode() == 1) {
                out.print("#FF0000");
            }%>">* Code postal : </a></td>
                <td><input type="text" name="postalCode" value="<%if (addressTO.getPostalCode() != null) {
                out.print(addressTO.getPostalCode());
            }%>" onKeyUp=verifCP(this.value) align="left" />
                <div id="CP"></div></td>
            </tr>
            
            
            <tr align="left">
                <td><a style="color:<%if (errorA.getErrorCity() == 1) {
                out.print("#FF0000");
            }%>">* Ville : </a></td>
                <td><input type="text" name="city" value="<%if (addressTO.getCity() != null) {
                out.print(addressTO.getCity());
            }%>" onKeyUp=verifLength(this.value,"city","20") align="left" />
                <div id="city"></div></td>
            </tr>
            
            
            <tr align="left">
                <td><a style="color:<%if (errorA.getErrorCountry() == 1) {
                out.print("#FF0000");
            }%>">* Pays : </a></td>
                <td><input type="text" name="country" value="<%if (addressTO.getCountry() != null) {
                out.print(addressTO.getCountry());
            }%>" onKeyUp=verifLength(this.value,"country","20") align="left" />
                <div id="country"></div></td>
            </tr>
            
            
            <!--zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz-->
                    
                    
            <tr>
                <td></td>
                <td align="left">                            
                    <input type="submit" value="Valider l'addresse de livraison" />
                </td>
            </tr>
            
        </table>
        
    </body>
</html>
