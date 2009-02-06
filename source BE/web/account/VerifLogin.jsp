<%-- 
    Document   : verifPseudo
    Created on : 6 janv. 2009, 17:49:19
    Author     : Baudet Aurélien
--%>

<%@page contentType="text/html"%>
<%@page pageEncoding="UTF-8"%>
<%@page language="java" import="java.util.*,java.io.*,fr.isen.jeen5_0809.group8.SQL.*" %>
<%
        String login = (String)request.getParameter("login");
        
        boolean result=SQLUser.isUsed(login);
        String result2="";
        if (result==true){result2="color=\"red\">Compte déjà utilisé";}
        else result2="color=\"green\">Compte disponible";
	
%>	

<%= result2 %>