<%-- 
    Document   : Order
    Created on : 30 janv. 2009, 10:26:47
    Author     : vincent
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
"http://www.w3.org/TR/html4/loose.dtd">
<%@ page import="java.util.*" %>
<%@ page import="model.networkdevices.*" %>


<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h2>Order Page</h2>        
<%
Cart cart = (Cart) session.getAttribute("cart");

//Do the Customer have a empty cart 
if ((cart == null) || (cart.getCartRows().isEmpty())) {
                //Yes, return your cart is empty        
%>
        <h3>Sorry, your cart is empty, return to the precedent page</h3>
<% } else {
    //if 
    
    
    
    
    %>




<% 
    }//Fin du else
%>     

        
                
                
    </body>
</html>
