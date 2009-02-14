<%-- 
    Author     : Baudet Aurélien
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page language="Java" import="java.util.*,servlet.account.*" %>

   
<html>
<head>
<title>Création d'un nouveau compte</title>
<%--<link rel="stylesheet" type="text/css" href="style.css" />--%>
</head>
<body class="presentation">

<% 
String param  = request.getParameter("Creation");
String id  = request.getParameter("compte");
if(request.getParameter("Creation").compareTo("inProgress")==0) 
    {out.print("<center>Validation du compte d'id : "+id+"</center><hr>");}
    else {out.print("DIE !");}
%>


<form name="Validation" method="POST" action="./Validate">
    <table align="center" >
        <td><input type="hidden" value="<%= id %>" name="account"/></td>
	<td><input type="submit" value="Valider le compte" name="validation" /></td>  
    </table>
</form>

    </body>
</html>
