<%-- 
    Document   : DisplayCart
    Created on : 7 janv. 2009, 14:13:30
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
      <h1>Cart Page</h1>
      <h3>Your cart :</h3>
<%      
        Cart cart = (Cart)session.getAttribute("cart");    
        
        //Do the Customer have a empty cart 
        if ((cart==null)||(cart.getCartRows().isEmpty())){
            //Yes, return your cart is empty        
%>
        <h3>Sorry, your cart is empty, return to the precedent page</h3>
<% }else{%>
      <table border="1">
          <tr>          
          <th>Name</th>
          <th>Type</th>          
          <th>Description</th>          
          <th>Price(Euro)</th>
          <th>DeleteItem</th>
          <th>Quantity</th>
          <th>+</th>
          <th>-</th>
          <th>TotatRow(Euro)</th>
          </tr>          

<%      
        ArrayList<CartRow> cartRows = (ArrayList<CartRow>)cart.getCartRows();
        Iterator it = cartRows.iterator();
        while(it.hasNext()){
        CartRow cartRow = (CartRow) it.next();
        Item item = cartRow.getItem();
%>
            <tr><td><%=item.getName()%></td>
                <td><%=item.getType()%></td>            
                <td><%=item.getDescription()%></td>
                <td><%=item.getPrice()%> Euros</td>
                <td><form method='post' action="../Cart.do">
                    <input type='submit' value='Delete Item'>
                    <input type='hidden' name='id' value='<%=item.getId()%>'>
                    <input type="hidden" name='actionCart' value='delete'>
                    </form></td>
                <td><%=cartRow.getQuantity()%></td>
                <td><form method='post' action="../Cart.do">
                    <input type='submit' value='+'>
                    <input type='hidden' name='id' value='<%=item.getId()%>'>
                    <input type="hidden" name='actionCart' value='increment'>
                    </form></td>                
                <td><form method='post' action="../Cart.do">                 
<%
if(cartRow.getQuantity()==0){
%>
                    <input type='submit' value='-' disabled>
<%    
} else {
%>
                    <input type='submit' value='-' >
<%
}
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
        
        <table><tr><td>Number of items contain in the cart : </td><td><%=cart.computeNumberOfItems()%></td></tr></table>
        
        <br><br>
                
        <table><tr><td>Total price of the cart : </td><td><%=cart.computeTotalPrice()%></td></tr></table>
          
<% 
    }//Fin du else
%>     
        
    </body>
</html>
