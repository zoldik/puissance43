<%-- 
    Document   : DisplayCart
    Created on : 7 janv. 2009, 14:13:30
    Author     : vincent
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
"http://www.w3.org/TR/html4/loose.dtd">
<%@ page import="java.util.*" %>
<%@ page import="model.shop.*" %>
<%@ page import="DAO.transfertObject.ItemTO" %>
<%@ page import="DAO.transfertObject.CustomerTO" %>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>        
        <h1>Votre panier :</h1>
        <%
            Cart cart = (Cart) session.getAttribute("cart");

            //Do the Customer have a empty cart 
            if ((cart == null) || (cart.getCartRows().isEmpty())) {
                //Yes, return your cart is empty        
%>
        <h3>Désolé, votre panier est vide ! retourner à la page précédente</h3>
        <% } else {%>
        <table border="1">
            <tr>          
                <th>Equipement</th>
                <th>Type</th>          
                <th>Description</th>          
                <th>Prix(Euro)</th>
                <th>Supprimer</th>
                <th>Quantité</th>
                <th>+</th>
                <th>-</th>
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
                <td><form method='post' action="CtrCart">
                        <input type='submit' value='Supprimer'>
                        <input type='hidden' name='id' value='<%=item.getId()%>'>
                        <input type="hidden" name='actionCart' value='delete'>
                </form></td>
                <td><%=cartRow.getQuantity()%></td>
                <td><form method='post' action="CtrCart">
                        <input type='submit' value='+'>
                        <input type='hidden' name='id' value='<%=item.getId()%>'>
                        <input type="hidden" name='actionCart' value='increment'>
                </form></td>                
                <td><form method='post' action="CtrCart">                 
                        <%
                if (cartRow.getQuantity() == 0) {
                        %>
                        <input type='submit' value='-' disabled>
                        <%                    } else {
                        %>
                        <input type='submit' value='-' >
                        <%            }
                        %>
                        <input type='hidden' name='id'  value='<%=item.getId()%>'>
                        <input type="hidden" name='actionCart' value='decrement'>
                </form></td>
                <td><%= cartRow.computeTotalPrice()%> Euros</td>
            </tr>
            <%
            }//Fin du while    
%>                       
            
        </table>   
        
        <br><br>
        
        <table><tr><td>Nombre total d'équipements :</td><td><%=cart.computeNumberOfItems()%></td></tr></table>
        
        <br><br>
        
        <table><tr><td>Prix total du panier : </td><td><%=cart.computeTotalPrice()%> Euros</td></tr></table>
        
        <br><br>
        
        <!--Passer à la commande si le client est connecté sinon page de redirection-->
          <%

            if (session != null) {
                if (session.getAttribute("Customer") != null) {
                    CustomerTO customerObject = (CustomerTO) session.getAttribute("Customer");
                %>
    
        <form method='post' action="AddressOrder.jsp">
            <input type='submit' value='Commander'>                    
        </form>
        
        <%
                } else {
        %>
        
        <form method='post' action="DisconnectOrder.jsp">
            <input type='submit' value='Commander'>                    
        </form>        
        
        <%                }
            } //Fin du if session
%>
        
        
        <%
            }//Fin du else
%>     
        
    </body>
</html>
