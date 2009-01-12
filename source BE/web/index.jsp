<%-- 
    Document   : index
    Created on : 12 janv. 2009, 13:33:38
    Author     : orthank
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">
<link rel="stylesheet" href="style.css">
<script language="JavaScript" src="ajax.js"></script>

<html>
<head>
<title>Accueil</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
</head>
<include src="header.htm"/>
<div id="bandeau">
<table width="50%" border="0" align="center">    
  <tr> 
   <td width="16%"><div align="center"><input type="button" value="Accueil" onclick=updateMenu(this.value) align="left" /><br></div></td>
   <td width="16%"><div align="center"><input type="button" value="Mon compte" onclick=updateMenu(this.value) align="left" /><br></div></td>
   <td width="16%"><div align="center"><input type="button" value="VOD" onclick=updateMenu(this.value) align="left" /><br></div></td>
   <td width="16%"><div align="center"><input type="button" value="VoIP" onclick=updateMenu(this.value) align="left" /><br></div></td>
   <td width="16%"><div align="center"><input type="button" value="WebMail" onclick=updateMenu(this.value) align="left" /><br></div></td>
   <td width="16%"><div align="center"><input type="button" value="Assistance" onclick=updateMenu(this.value) align="left" /><br></div></td>
  </tr>
</table>
</div>
<div id="menu">Ceci est le pied de page</div>
<div id="contenu">Ceci est le contenu</div>
<body>
</body>
</html>