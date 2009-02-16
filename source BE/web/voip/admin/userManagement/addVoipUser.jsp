<%-- 
    Document   : addVoipUser
    Created on : 1 févr. 2009, 22:05:57
    Author     : francois
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>VoIP Admin - Ajouter un utilisateur</title>
    </head>
    <body>
        <h2>VoIP Admin - Nouvel utilisateur </h2>
        
        <table align="center" >
        <form>
            <tr>
                <td  align="right">Login abonné FAI : </td><td><input type="text"/></td>
            </tr>
            <tr>
                <td align="right">Administrateur </td><td><input type="checkbox" name="admin"/></td>
            </tr>
            <td></td><td><input type="submit" name="submit" value="annuler">
            <input type="submit" name="submit" value="valider"></td>

        </form>
        </table>
        
        
    </body>
</html>
