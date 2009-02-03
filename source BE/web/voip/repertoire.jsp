<%-- 
    Document   : repertoire
    Created on : 28 janv. 2009, 17:45:27
    Author     : thomas
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
"http://www.w3.org/TR/html4/loose.dtd">



<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Répertoire</title>
    </head>
    <body>
        <FORM Method="POST" Action="formulaire_repertoire.jsp">
            <input type="submit" value="Ajouter un contact " name="contact" /> <br>
        </FORM>
        
        <%@ taglib tagdir="/WEB-INF/tags" prefix="h" %>
        <h:showContactInfo />
        



        
    </body>
</html>
