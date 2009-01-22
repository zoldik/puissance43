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
    var temp2=" ";
    var keepcontenu=" ";
    /*function fonctionCleanMain()
                {
                   updateDivContent("main",""); 
                }
                function fonctionCleanSubMenu()
                {
                   updateDivContent("submenu",""); 
                }*/
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
                
    function fonctionOpenPage(url){
        updateDivContent("main", "<object class='page' data='"+url+"' type='text/html'/>");
    }
    function fonctionSubClean(keep2,contenu){
        updateDivContent(temp2,keepcontenu);
        temp2=keep2;
        keepcontenu=contenu;
    }
    function fonctionSubMenu(menu2,contenu2) {
        temp2=contenu2;
        updateDivContent(menu2, "<b>"+contenu2+"</b>");
    }
                
    function alertContenu(menu) {
        if (helloRequest.readyState == 4) {
            if (helloRequest.status == 200) {
                var xmlDoc = helloRequest.responseXML;
                var root = xmlDoc.getElementsByTagName('root').item(0);
                message = root.getElementsByTagName(menu).item(0).getAttribute('name');
                var subMenu=xmlDoc.getElementsByTagName(menu).item(0).getElementsByTagName('link');
                message2="";
                for (i=0; i<subMenu.length;++i)
                {
                    var name=subMenu.item(i).getAttribute('name');
                    var url=subMenu.item(i).getAttribute('url');
                    message2+="<a class=\"onglet2\" href=\"test.jsp\" onclick=\"\n\
                                                           fonctionOpenPage('"+url+"');\n\
                                                           return false;\"><div id=\"subMenu"+i+"\">"+name+"</div></a>";
                    //fonctionSubClean('subMenu"+i+"','"+name+"');\n\
                    //fonctionSubMenu('subMenu"+i+"','"+name+"');\n\
                }
                updateDivContent("submenu", message2);
            } 
        }
    }
</script>
<link rel="stylesheet" href="style.css">

<html>
    <head>
        <title>Red Neck Industries</title>
        <meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
    </head>
    
    <body>
        <div class="menu"> <!-- début de la boite contenant les onglets -->
            <a class="onglet" href="test.jsp" onclick="fonctionContenu('Accueil'); fonctionClean('Accueil'); fonctionMenu('Accueil'); return false;"><div id="Accueil">Accueil</div></a>
            <a class="onglet" href="test.jsp" onclick="fonctionContenu('Compte'); fonctionClean('Compte'); fonctionMenu('Compte'); return false;"><div id="Compte">Compte</div></a>
            <a class="onglet" href="test.jsp" onclick="fonctionContenu('VOD'); fonctionClean('VOD'); fonctionMenu('VOD'); return false;"><div id="VOD">VOD</div></a>
            <a class="onglet" href="#" onclick="fonctionOpenPage('voip/voip.jsp'); fonctionContenu('VoIP'); fonctionClean('VoIP'); fonctionMenu('VoIP'); return false;"><div id="VoIP">VoIP</div></a>
            <a class="onglet" href="test.jsp" onclick="fonctionContenu('WebMail'); fonctionClean('WebMail'); fonctionMenu('WebMail'); return false;"><div id="WebMail">WebMail</div></a>
            <a class="onglet" href="test.jsp" onclick="fonctionContenu('Assistance'); fonctionClean('Assistance'); fonctionMenu('Assistance'); return false;"><div id="Assistance">Assistance</div></a>
            <a class="onglet" href="test.jsp" onclick="fonctionContenu('Réseaux'); fonctionClean('Réseaux'); fonctionMenu('Réseaux'); return false;"><div id="Réseaux">Réseaux</div></a>
            <a class="onglet" href="test.jsp" onclick="fonctionContenu('NetworkDevices'); fonctionClean('NetworkDevices'); fonctionMenu('NetworkDevices'); return false;"><div id="NetworkDevices">NetworkDevices</div></a>
            <a class="onglet" href="test.jsp" onclick="fonctionContenu('NetworkSolutions'); fonctionClean('NetworkSolutions'); fonctionMenu('NetworkSolutions'); return false;"><div id="NetworkSolutions">NetworkSolutions</div></a>
            <div class="spacer"></div> <!-- permet le retour à la ligne à la fin des boites float -->
        </div>
        <div class="menu2" id="submenu"></div>        
        <div class="main" id="main"></div>
        <div id=" "></div>        
    </body>
    
</html>
