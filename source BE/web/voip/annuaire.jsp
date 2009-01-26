<%-- 
    Document   : annuaire
    Created on : 13 janv. 2009, 19:05:20
    Author     : francois, thomas
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Annuaire Téléphonique</title>
    </head>
    <body>
        <h2>Répertoire téléphonique</h2>
        <FORM Method="POST" Action="formulaire_annuaire.jsp">
        <input type="submit" value="Ajouter un contact " name="contact" /> <br>
        </FORM>
        <h1>Afficher vos contacts</h1>
        <FORM Method="POST" Action="../showContactInfo">
        <input type="submit" value="Valider " name="affichage contact" /> <br>
        </FORM>



    </body>
</html>
