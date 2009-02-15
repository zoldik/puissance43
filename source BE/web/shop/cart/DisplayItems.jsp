<%-- 
    Document   : ResultQuery
    Created on : 2 janv. 2009, 17:24:27
    Author     : vincent
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<%@ page import="model.networkdevices.*" %>
<%@ page import="DAO.transfertObject.ItemTO" %>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>        
        <h1>Résultat de la recherche</h1>
        <table border="1">
            <tr>              
                <th>Name</th>
                <th>Type</th>          
                <th>Description</th>          
                <th>Prix</th>
                <th>Ajout</th>
            </tr>          
            <%
            if (request.getAttribute("results") != null) {
                ArrayList<ItemTO> results = (ArrayList<ItemTO>) request.getAttribute("results");

                Iterator it = results.iterator();
                while (it.hasNext()) {
                    ItemTO item = (ItemTO) it.next();
            %>
            <tr><td><%=item.getName()%></td>
                <td><%=item.getType()%></td>            
                <td><%=item.getDescription()%></td>
                <td><%=item.getUnitPrice()%></td>
                <td><form method='post' action="CtrCart">
                        <input type='submit' value='Ajouter au panier'>
                        <input type='hidden' name='id' value='<%=item.getId()%>'>
                        <input type="hidden" name='actionCart' value='add'>
            </form></td></tr>
            <%
                } //End while  

            } //End of if
            %>                       
            <tr><td>Voir votre panier : </td>
                <td><form name="ButtonCart" action="./DisplayCart.jsp" >
                        <input type="submit" value="Panier" />  
            </form></td></tr>       
        </table>   
    </body>
</html>
