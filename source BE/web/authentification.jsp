<%-- 
    Document   : Identification
    Created on : 21 janv. 2009, 16:27:55
    Author     : isen
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Authentification</title>
    </head>
    <body>
        <h2>Authentification</h2>
        <br><br><br><br>
<form name="Authentification" action="./Authentification" method="POST">
    <table align="center" >
        <tr align="right">
            <td>Nom d'utilisateur :  </td>
            <td><input type="text" name="login" value="Orthank" align="left"/></td>
        </tr>
        <tr align="right">
            <td>Mot de passe : </td>
            <td><input type="password" name="password" value="blabla" align="left" /></td>
        </tr>
	<tr>
            <td></td>
            <td align="left">
		<input type="submit" value="Se connecter" name="Connexion" />
            </td>
	</tr>        
    </table>
</form>

<%
String param  = request.getParameter("Connexion");
if (param!=null) {
    if(request.getParameter("Connexion").compareTo("refused")==0) {
        out.print("<center><font color=\"red\">Login et/ou mot de passe incorrect(s)</font><br><a href=\"motdepasseperdu.jsp\">Récupérer vos identifiants?</a></center>");
    }
}
%>
<br>
    </body>
</html>
