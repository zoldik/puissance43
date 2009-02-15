<%-- 
    Document   : ConfirmationOrder
    Created on : 15 févr. 2009, 22:53:33
    Author     : vincent
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<%@ page import="DAO.factory.DAOFactory" %>
<%@ page import="DAO.transfertObject.CustomerTO, DAO.interfaces.CustomerDAOInterface" %>
<%@ page import="DAO.transfertObject.AddressTO, DAO.interfaces.AddressDAOInterface" %>
<%@ page import="DAO.transfertObject.ItemTO" %>
<%@ page import="model.shop.*" %>


<html>
    <head>
        <title>Confirmation Order</title>
    </head>
    <body>            
        
        <%
            HttpSession customerSession = request.getSession(false);

            CustomerTO customerTO = (CustomerTO) customerSession.getAttribute("Customer");

            DAOFactory daoFactory = DAOFactory.getDAOFactory(DAOFactory.MYSQL);
            AddressDAOInterface addressDAO = daoFactory.getAddressDAO();

            int idAddress = customerTO.getIdAddress();
            AddressTO addressTO = addressDAO.findAddressById(idAddress);

            Cart cart = (Cart) customerSession.getAttribute("cart");

            //Nombre d'articles
            int numberOfItems = cart.computeNumberOfItems();

            //Prix total du panier
            double totalPrice = cart.computeTotalPrice();

        %>        
        
        
        <h2>Bonjour <%=customerTO.getFirstName()%> <%=customerTO.getLastName()%>
        <br>
        <h2>Voici un récapitulatif de votre commande : </h2>
        
        
        <!--zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz-->        
        <!--Adresse de livraison-->
        <table>
            <tr><td><h2 align='left'>Adresse de livraison : </h2></td></tr>
            
            
            <tr align="left"><td>Rue :</td>
                <td><input type="text" disabled value="<%if (addressTO.getStreet() != null) {
                out.print(addressTO.getStreet());
            }%>" align="left"/>
                
            </tr>
            
            
            <tr align="left"><td>Code postal :</td>
                <td><input type="text" disabled value="<%if (addressTO.getPostalCode() != null) {
                out.print(addressTO.getPostalCode());
            }%>" align="left"/>
                
            </tr>
            
            
            <tr align="left"><td>Ville :</td>
                <td><input type="text" disabled value="<%if (addressTO.getCity() != null) {
                out.print(addressTO.getCity());
            }%>" align="left"/>
                
            </tr>
            
            
            <tr align="left"><td>Pays :</td>
                <td><input type="text" disabled value="<%if (addressTO.getCountry() != null) {
                out.print(addressTO.getCountry());
            }%>" align="left"/>
                
            </tr>         
        </table>
        
        <!--zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz-->
        <!--Facturation-->
        <table>
            <tr><td><h2 align='left'>Facturation : </h2></td></tr>
            
            <tr align="left"><td>Prénom</td>
                <td><input type="text" disabled value="<%if (customerTO.getFirstName() != null) {
                out.print(customerTO.getFirstName());
            }%>" align="left"/>
                
            </tr>
            
            
            <tr align="left"><td>Nom :</td>
                <td><input type="text" disabled value="<%if (customerTO.getLastName() != null) {
                out.print(customerTO.getLastName());
            }%>" align="left"/>
                
            </tr>
            
            
            <tr align="left"><td>Montant de la commande :</td>
                <td><input type="text" disabled value="<% out.print(totalPrice);%> Euros" align="left"/>
                
            </tr>
            
            
            <tr align="left"><td>Nombre d'articles :</td>
                <td><input type="text" disabled value="<% out.print(numberOfItems);%>" align="left"/></td>
                
            </tr>         
        </table>
        
        <!--zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz-->
        <!--Commande-->
        <h2 align='left'>Votre commande : </h2>            
        <table border="1">
            <tr>          
                <th>Equipement</th>
                <th>Type</th>          
                <th>Description</th>          
                <th>Prix(Euro)</th>
                <th>Quantité</th>
                <th>Prix total(Euro)</th>
            </tr>          
            
            <%
            ArrayList<CartRow> cartRows = (ArrayList<CartRow>) cart.getCartRows();
            Iterator it = cartRows.iterator();
            while (it.hasNext()) {
                CartRow cartRow = (CartRow) it.next();
                ItemTO item = cartRow.getItem();
            %>
            <tr><td><%=item.getName()%></td>
                <td><%=item.getType()%></td>            
                <td><%=item.getDescription()%></td>
                <td><%=item.getUnitPrice()%> Euros</td>
                <td><%=cartRow.getQuantity()%></td>
                <td><%= cartRow.computeTotalPrice()%> Euros</td>
            </tr>
            <%
            }//Fin du while    
%>                       
            
        </table>   
        
        <br>
        
        <form method='post' action="CtrOrder">
            <input type='submit' value='Passer la commande'>                    
        </form>        
        
        
        
        
        
        
        
        
        
        
    </body>
</html>
