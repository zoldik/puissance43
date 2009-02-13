<%-- 
    Document   : index
    Created on : 12 janv. 2009, 13:33:38
    Author     : orthank
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page language="Java" import="javax.servlet.*,javax.script.*,java.io.*,java.util.*,servlet.*" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<script language="JavaScript" src="javascripts/ajax.js"></script>
<script language="JavaScript" src="javascripts/ajax_header_menu.js"></script>
<script language="JavaScript" src="javascripts/ajax_account.js"></script>
<link rel="stylesheet" href="style.css">
<LINK REL="SHORTCUT ICON" HREF="./favicon.ico">

<%         String fonctionJS ="";
               if (request.getParameter("Connexion")!=null) {
                 int Connexion = Integer.parseInt(request.getParameter("Connexion"));
                   if (Connexion==2) {
                       fonctionJS="displayIdentification(2);";
                   } else if (Connexion==1) {
                       fonctionJS="displayAccount();";
                   } else if (Connexion==3) {
                       fonctionJS="displayIdentification(3);";
                   } else {
                       fonctionJS="displayIdentification(404);";
                   }
               }
%>

<html>   
    <head>
        <title>Red Neck Industries</title>
        <meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
    </head>
    <body onload="displayHeader();<%= fonctionJS %>">
        
        <div id="header"></div>
        <div id="account"></div>
        
        <!--<div id="test">
            <input type="button" onclick="displayAccount();" name="displayAccount" value="displayAccount" /><input type="button" onclick="displayIdentification(1);" name="displayIdentification" value="displayIdentification" /><input type="button" onclick="displayLostPassword();" name="displayLostPassword" value="displayLostPassword" /><input type="button" onclick="hideAccount();" name="hideAccount" value="hideAccount" /><input type="button" onclick="displayHeader();" name="displayHeader" value="displayHeader" />
        </div>-->
        <div class="main" id="main" > </div>
        
    </body>
</html>