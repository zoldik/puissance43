<%-- 
    Document   : annuaire
    Created on : 28 janv. 2009, 17:45:27
    Author     : francois
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
"http://www.w3.org/TR/html4/loose.dtd">
<script language="JavaScript" src="ajax.js"></script>
<script language="JavaScript">
   
    function ChangeUrl(formulaire)
    {
        if (formulaire.ListeUrl.selectedIndex != 0) 
        {
            location.href = formulaire.ListeUrl.options[formulaire.ListeUrl.selectedIndex].value;
            id.submit() =formulaire.choix.value ; 
            alert("id :"+formulaire.choix.value+"");
            
        }
        else 
        {
            alert("choississez un contact");
        }        
    }

    function RecupId(formulaire,id)
    {
        if (formulaire.choix.checked)
        {
            id = formulaire.choix.value;}
        else 
        {
            alert("id :"+formulaire.choix.value+"");
        }
    } 
    
</script>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Annuaire</title>
    </head>
    <body>
        <FORM Method="POST" Action="formulaire_repertoire.jsp">
            <input type="submit" value="Ajouter un contact " name="contact" /> <br>
        </FORM>
        
        <%@ taglib tagdir="/WEB-INF/tags" prefix="h" %>
        <h:showContactInfo />
        
        <!-- 
        <h1>Afficher vos contacts</h1>
        <FORM Method="POST" Action="../showContactInfo">
        <input type="submit" value="Valider " name="affichage contact" /> <br>
        </FORM> 
        -->


        
    </body>
</html>
