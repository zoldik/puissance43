<%-- 
    Document   : HandleCart
    Created on : 2 janv. 2009, 15:52:28
    Author     : vincent
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<%@ page contentType="text/html" import="java.util.*" %>
<jsp:usebean id="panier" scope="session"/>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Gestion du panier</title>
    </head>
    <body>
        <h1>Handle the virtual cart</h1>
        <h3>Your cart contains the following items</h3>
        <table>
            <tr>
                <td>Ref Item</td>
                <td>Name</td>
                <td>Trade</td>
                <td>Unit price</td>
                <td>Total price</td>
                <td>modification</td>
                <td>suppression</td>                
            </tr>
<%
    //En pratique, il faudrait gérer la pagination
    Iterator i = panier.iterator();
    while(i.hasNext){
       
    }
   
           
            
            
%>            
            
        </table>
        <h2>Hello World!</h2>
    </body>
</html>
