<%-- 
    Document   : deleteVoipLigne
    Created on : 27 janv. 2009, 14:54:15
    Author     : francois
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h2>VoIP admin : Delete Ligne</h2>
        
        
        <p align="center">
            <b>Do you really want to delete :</b>
        </p>
        
        <p align="center">
            <i>line <%=request.getParameter("name") %> with id = <%=request.getParameter("id")%></i><br/>
        </p>
        
            
        <form method="post" action="">
            <input type="submit" value="no">
        </form>
        
        <form method="post" action="../../../doVoipLigne">
            <input type="submit" value="yes">
            <input type='hidden' name='id' value="<%=request.getParameter("id") %>">
            <input type='hidden' name='action' value="delete">
        </form>
        
        
        
        
    </body>
</html>
