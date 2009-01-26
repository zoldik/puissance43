<%-- 
    Document   : ResultQuery
    Created on : 2 janv. 2009, 17:24:27
    Author     : vincent
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
"http://www.w3.org/TR/html4/loose.dtd">
<%@ page import="java.util.*" %>
<%@ page import="fr.isen.jeen5_0809.group8.cart.model.*" %>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
      <h1>ResultQuery Page</h1>
      <h3>This is the result of your search</h3>
      <table border="1">
          <tr>              
          <th>Name</th>
          <th>Type</th>          
          <th>Description</th>          
          <th>Price</th>
          <th>AddCart</th>
          </tr>          
<%
        ArrayList<Item> results = (ArrayList<Item>)request.getAttribute("results");
        Iterator it = results.iterator();
        while(it.hasNext()){
            Item item = (Item) it.next();
%>
            <tr><td><%=item.getName()%></td>
                <td><%=item.getType()%></td>            
                <td><%=item.getDescription()%></td>
                <td><%=item.getPrice()%></td>
                <td><form method='post' action="Cart.do">
                    <input type='submit' value='Add Cart'>
                    <input type='hidden' name='id' value='<%=item.getId()%>'>
                    <input type="hidden" name='actionCart' value='add'>
                    </form></td></tr>
<%
            }                            
%>                       
            <tr><td>See your current cart : </td>
                <td><form name="ButtonCart" action="./ViewCart/DisplayCart.jsp" >
                    <input type="submit" value="Cart" />  
                    </form></td></tr>       
        </table>   
    </body>
</html>
