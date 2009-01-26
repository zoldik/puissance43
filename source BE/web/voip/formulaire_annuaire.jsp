<%-- 
    Document   : formulaire_annuaire
    Created on : Jan 18, 2009, 9:50:55 PM
    Author     : thomas
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"
    import = "servlet.*" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Rentrer votre contact</title>
    </head>
    <body>
        <h1> Rentrer les informations de votre contact</h1>
        <FORM Method="POST" Action="/enregContactInfo">
        Titre <input type="text" name="Titre" value="" /> <br>
        Categorie <input type="text" name="Catégorie" value="" /> <br>
        Nom <input type="text" name="Nom" value="" /> <br>
        Prénom <input type="text" name="Prénom" value="" /> <br>
        Téléphone<input type="text" name="Téléphone" value="" /> <br>
        Email<input type="text" name="Email" value="" /> <br>
        <input type="submit" value="Valider" />
        </FORM>
    </body>
</html>
