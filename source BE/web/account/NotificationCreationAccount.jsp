<%-- 
    Document   : NotificationCreationAccount
    Created on : 8 févr. 2009, 19:32:42
    Author     : vincent
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page language="Java" import="java.util.*,servlet.account.*,model.account.*" %>

<html>
    <head>
        
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        
        <title>JSP Page</title>
        
    </head>
    
    
    <body>
        
         <%
            //Need to set the attribut now otherwise there is an internal error server 500 during the get. 
            //session.setAttribute("CreationAccount", "default");

            //String param  = request.getParameter("Creation");
            String account = session.getAttribute("CreationAccount").toString();

            //RegisterErrors error = new RegisterErrors();

            if (account.compareTo("default") == 0) {
                out.print("<center>Création d'un compte client</center><hr>");
            } else if (account.compareTo("used") == 0) {
                out.print("<center>Compte déja enregistré, sélectionnez un autre login</center><hr>");
            } else if (account.compareTo("failed") == 0) {
                //error = (RegisterErrors) session.getAttribute("error");
                out.print("<center>Un ou plusieurs champs ont été mal rempli, vérifiez les informations rentrées</center><hr>");
            } else if (account.toString().compareTo("registered") == 0) {
                out.print("<center>Demande de compte transmise, consultez votre boîte mail pour valider votre compte</center><hr>");
            }
        %>
                
        <h2>NotificationCreationAccount</h2>
        
        
    </body>
</html>
