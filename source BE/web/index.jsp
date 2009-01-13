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
	<script language="JavaScript">
		var helloRequest = false;
		function fonctionMenu(menu) {
			helloRequest = getDataAsynchronous('./menu.xml', alertMenu(menu));
		}

		function alertMenu(menu) {
			if (helloRequest.readyState == 4) {
				if (helloRequest.status == 200) {
					var xmlDoc = helloRequest.responseXML;
					var root = xmlDoc.getElementsByTagName('root').item(0);
                                        message = root.getElementsByTagName(menu).item(0).getAttribute('name');
                                        //message2 = root.getElementsByTagName(menu).item(0).firstChild.nodeValue;
					var html = message;
					updateDivContent("menu", html);
				} 
			}
		}
	</script>

<html>
<head>
<title>Accueil</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
</head>
<include src="header.htm"/>
<div id="bandeau">
<table width="50%" border="0" align="center">    
  <tr> 
   <td width="16%"><div align="center"><input type="button" value="Accueil" onclick=fonctionMenu(this.value) align="left" /><br></div></td>
   <td width="16%"><div align="center"><input type="button" value="Compte" onclick=fonctionMenu(this.value) align="left" /><br></div></td>
   <td width="16%"><div align="center"><input type="button" value="VOD" onclick=fonctionMenu(this.value) align="left" /><br></div></td>
   <td width="16%"><div align="center"><input type="button" value="VoIP" onclick=fonctionMenu(this.value) align="left" /><br></div></td>
   <td width="16%"><div align="center"><input type="button" value="WebMail" onclick=fonctionMenu(this.value) align="left" /><br></div></td>
   <td width="16%"><div align="center"><input type="button" value="Assistance" onclick=fonctionMenu(this.value) align="left" /><br></div></td>
   <td width="16%"><div align="center"><input type="button" value="Réseaux" onclick=fonctionMenu(this.value) align="left" /><br></div></td>
   <td width="16%"><div align="center"><input type="button" value="Services" onclick=fonctionMenu(this.value) align="left" /><br></div></td>
  </tr>
</table>
</div>
<div id="menu">Ceci est le pied de page</div>
<div id="contenu">Ceci est le contenu</div>
<body>
    
<form action="">
        <input type="button" value="Accueil" onClick="fonctionMenu(this.value); return false;">
</form>

<div id="hello_ajax"></div>
    
</body>
</html>