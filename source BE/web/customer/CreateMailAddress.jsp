<%-- 
    Document   : newMailAddress
    Created on : 7 févr. 2009, 17:48:20
    Author     : orthank
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page language="Java" import="java.util.*,servlet.customer.account.CreateMailAddress"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Création compte mail</title>
    </head>
    <body>
    <form name="AddMail" action="./CreateMailAddress" method="POST">
      <div id="register">  
        <table>
           <tr align="center">
               <td>Adresse Mail :</td>
                <td><input type="text" name="mailAddress" align="center" /><div id="name"></div></td>
                <td> @RedNeck.fr</td>
            </tr>
            <tr align="left">
                <td>Mot de passe :</td>
                <td><input type="password" name="password" align="center" /><div id="surname"></div></td>
            </tr>
            <tr>
                <td align="center">
                    <input type="submit" value="Créer" name="Connexion" />
                </td>
            </tr>
        </table>
     </div>
    </form>
        </body>
</html>
