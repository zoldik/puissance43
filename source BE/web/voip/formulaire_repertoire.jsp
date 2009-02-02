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
        <FORM Method="POST" Action="../enregContactInfo">
        <table>

<tr>
<td>Titre </td>
<td><input type="text" name="titre" value="" /> </td>
</tr>
<tr>
<td>Categorie</td>
<td><input type="text" name="categorie" value="" /> </td>
</tr>
<tr>
<td>Nom</td>
<td><input type="text" name="nom" value="" /></td>
</tr>
<tr>
<td>Prénom</td>
<td> <input type="text" name="prenom" value="" /> </td>
</tr>
<tr>
<td>Téléphone</td>
<td><input type="text" name="telephone" value="" /> </td>
</tr>
<tr>
<td> Email</td>
<td><input type="text" name="email" value="" /> </td>
</tr>
<tr>
<td align="center"> <input type="submit" value="Valider" /></td>
</tr>
        </table>       
        </FORM>
    </body>
</html>
