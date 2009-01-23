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
        <title>JSP Page</title>
    </head>
    <body>
        <FORM Method="POST" Action="/enregContactInfo">
        <input type="text" name="Titre" value="" /> <br>
        <input type="text" name="Catégorie" value="" /> <br>
        <input type="text" name="Nom" value="" /> <br>
        <input type="text" name="Prénom" value="" /> <br>
        <input type="text" name="Téléphone" value="" /> <br>
        <input type="text" name="Email" value="" /> <br>
        <input type="submit" value="Valider" />
        </FORM>
    </body>
</html>
