<%-- 
    Document   : addVoipLigne
    Created on : 26 janv. 2009, 01:20:08
    Author     : francois
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>VoIP admin - Add VoIP Ligne</title>
    </head>
    <body>
        <h2 align="center">VoIP admin - Add VoIP Ligne</h2>
        
        
        
        <form method="post" action="../../../doVoipLigne">
        <table align="center">
            
        <tr>
            <td>id customer <%= request.getParameter("customerid")%> <input type="hidden" name="customerid" value="<%= request.getParameter("customerid")%>"/></td>
        </tr>

        <tr>
            <td>Numero de ligne</td><td><input type="text" name="name" ></td>
        </tr>
        <tr>
            <td>Numero de messagerie</td><td><input type="text" name="mailbox"></td>
        </tr>
        <tr>
            <td>Groupe</td><td><input type="text" name="callgroup"></td>
        </tr>
        <tr>
            <td>Pickup group</td><td><input type="text" name="pickupgroup"></td>
        </tr>
        
        <tr>
            <td>Presentation de l'appelant</td><td><input type="text" name="callerid"></td>
        </tr>
        <tr>
            <td>Adresse IP par defaut</td><td><input type="text" name="defaultip"></td>
        </tr>
        <tr>
            <td>Langue</td><td><input type="text" name="language"></td>
        </tr>
        <tr>
            <td>
            <input type="submit" value="submit" name="submit"/>
            <input type='hidden' name='action' value="add">
            <a href="../userManagement.jsp">retour</a>
            </td>
        </tr>
        
        </table>
        
        </form>
        
    
    </body>
</html>
