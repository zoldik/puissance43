<%-- 
    Document   : index
    Created on : 12 janv. 2009, 13:33:38
    Author     : orthank
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">
    <script language="JavaScript" src="ajax.js"></script>
    <script language="JavaScript">
		var helloRequest = false;
                var temp=" ";
                function fonctionClean(keep){
                    updateDivContent(temp,temp);
                    temp=keep;
                }

		function fonctionMenu(menu) {
                        temp=menu;
			updateDivContent(menu, "<b>"+menu+"</b>");
		}
		function fonctionContenu(menu) {
			helloRequest = getDataAsynchronous('./menu.xml', alertContenu(menu));
		}
                
		function alertContenu(menu) {
			if (helloRequest.readyState == 4) {
				if (helloRequest.status == 200) {
					var xmlDoc = helloRequest.responseXML;
					var root = xmlDoc.getElementsByTagName('root').item(0);
                                        message = root.getElementsByTagName(menu).item(0).getAttribute('name');
                                         /*           
                                            //On recupere le premier element project issu du noeud projects
                                            ListeNoeuds = ((Element)xmlDoc.getElementsByTagName("projects").item(0)).getElementsByTagName("project");
                                            for (int i = 0; i < ListeNoeuds.getLength(); i++) {
                                                this.addProject(new Project(ListeNoeuds.item(i), this.users));
                                            }
                                         */
                                        //Element ListeMenu=root.getElementsByName('name').item(0).getElementsByName('links');
                                        //for (int i=0;i<ListeMenu.)
                                        //message2 = root.getElementsByTagName(menu).item(0).firstChild.nodeValue;
                                        //message2=root.getElementsByTagName(menu).item(0).nextSibling.getAttribute('name');
					
                                        //message2 = root.getElementsByTagName(menu).item(0).firstChild.nodeValue;
                                        //message2=root.getElementsByTagName(menu).item(0).nextSibling.getAttribute('name');
					var html = "test : "+message;
					updateDivContent("main", html);
				} 
			}
		}
</script>
<link rel="stylesheet" href="style.css">

<html>
<head>
<title>Accueil</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
</head>

<body>
<div class="menu"> <!-- début de la boite contenant les onglets -->
  <a class="onglet" href="test.jsp" onclick="fonctionContenu('Accueil'); fonctionClean('Accueil'); fonctionMenu('Accueil'); return false;"><div id="Accueil">Accueil</div></a>
  <a class="onglet" href="test.jsp" onclick="fonctionContenu('VOD'); fonctionClean('VOD'); fonctionMenu('VOD'); return false;"><div id="VOD">VOD</div></a>
  <a class="onglet" href="test.jsp" onclick="fonctionContenu('VoIP'); fonctionClean('VoIP'); fonctionMenu('VoIP'); return false;"><div id="VoIP">VoIP</div></a>
  <a class="onglet" href="test.jsp" onclick="fonctionContenu('WebMail'); fonctionClean('WebMail'); fonctionMenu('WebMail'); return false;"><div id="WebMail">WebMail</div></a>
  <a class="onglet" href="test.jsp" onclick="fonctionContenu('Assistance');fonctionClean('Assistance'); fonctionMenu('Assistance'); return false;"><div id="Assistance">Assistance</div></a>
  <a class="onglet" href="test.jsp" onclick="fonctionContenu('Réseaux'); fonctionClean('Réseaux'); fonctionMenu('Réseaux'); return false;"><div id="Réseaux">Réseaux</div></a>
  <a class="onglet" href="test.jsp" onclick="fonctionContenu('Services'); fonctionClean('Services'); fonctionMenu('Services'); return false;"><div id="Services">Services</div></a>
  <div class="spacer"></div> <!-- permet le retour à la ligne à la fin des boites float -->
</div>
<div id="main"></div>
<div id=" "></div>
</body>
</html>