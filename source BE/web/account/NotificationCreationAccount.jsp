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
        
        <h2>NotificationCreationAccount</h2>
        
         <%
            if (session.getAttribute("CreateCustomerAccount") == "registered") {
                    out.print("<center><a style='color:#FF0000'>Demande de compte transmise, consultez votre boîte mail pour valider votre compte</a></center><hr>");
                }
        %>
                
       <br><br> 
        
        <a href="./CreateCustomerAccount.jsp">Revenir à la création</a><br/>
        
        
    </body>
</html>
