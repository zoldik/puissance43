<%-- 
    Document   : AddSubscribes
    Created on : 13 févr. 2009, 16:51:05
    Author     : vincent
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page language="Java" import="java.util.*" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
                        
        <center>Ajout d'un abonnement internet</center><hr> 
                
        <form name="AddInternetSubscribe" action="./CtrSubscribe" method="POST">
            <table>
                
                <tr align="left">
                    <td><a>nom</a></td>
                    <td><input type="text" name="name" value="nom de l'abonnement" align="left"></td>                 
                </tr>
                
                <tr align="left">
                    <td><a>description</a></td>
                    <td><input type="text" name="description" value="" align="left"></td>                 
                </tr>
                
                <tr align="left">
                    <td><a>prix (Euros)</a></td>
                    <td><input type="text" name="prix" value="" align="left"></td>                 
                </tr>
                
                <tr align="left">
                    <td><a>débit</a></td>
                    <td><input type="text" name="rate" value="" align="left"></td>                 
                </tr>
                
                  <tr align="left">
                    <td></td>
                    <td>
                        <input type="submit" name="AddInternetSubscribe" value="Créer"/>
                        <input type="hidden" name="addSubscribe" value="internet" />
                    </td>                 
                </tr>
                
            </table>
            
            
            
            
        </form>
    </body>
</html>
