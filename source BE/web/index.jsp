<%-- 
    Document   : index
    Created on : 12 janv. 2009, 13:33:38
    Author     : orthank
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page language="Java" import="javax.servlet.*,javax.script.*,java.io.*,java.util.*,servlet.*" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
"http://www.w3.org/TR/html4/loose.dtd">



<script language="JavaScript" src="./javascripts/ajax.js"></script>

<script language="JavaScript">
    var myRequest = false;
    var temp=" ";
    var temp2=" ";
    var keepcontenu=" ";
    var bouton_menu;
    
    /** function fonctionCleanMain()
    {
      updateDivContent("main",""); 
    }

    function fonctionCleanSubMenu()
    {
      updateDivContent("submenu",""); 
    }
     **/
    function fonctionClean(keep)
    {
        updateDivContent(temp,temp);
        temp=keep;
    }

    function fonctionMenu(menu)
    {
        temp=menu;
        updateDivContent(menu, "<b>"+menu+"</b>");
    }
    
    function fonctionContenu(menu)
    {
        bouton_menu = menu;
        myRequest = getDataAsynchronous('./menu.xml', alertContenu);
    }
                
    function fonctionOpenPage(url)
    {
        updateDivContent("main", "<object class='page' data='"+url+"' type='text/html'/>");
    }
    
    function fonctionSubClean(keep2,contenu)
    {
        updateDivContent(temp2,keepcontenu);
        temp2=keep2;
        keepcontenu=contenu;
    }
    
    function fonctionSubMenu(menu2,contenu2)
    {
        temp2=contenu2;
        updateDivContent(menu2, "<b>"+contenu2+"</b>");
    }
                
    function alertContenu()
    {
        if (myRequest.readyState == 4) {
            if (myRequest.status == 200) {
                var menu=bouton_menu;
                var xmlDoc = myRequest.responseXML;
                var root = xmlDoc.getElementsByTagName('root').item(0);
                message = root.getElementsByTagName(menu).item(0).getAttribute('name');
                var subMenu=xmlDoc.getElementsByTagName(menu).item(0).getElementsByTagName('link');
                message2="";
                for (i=0; i<subMenu.length;++i)
                {
                    var name=subMenu.item(i).getAttribute('name');
                    var url=subMenu.item(i).getAttribute('url');
                    message2+="<a class=\"onglet2\" href=\"#\" onclick=\""+
                        "fonctionOpenPage('"+url+"');"+
                        "return false;\"><div id=\"subMenu"+i+"\">"+name+"</div></a>";
                    //fonctionSubClean('subMenu"+i+"','"+name+"');\n\
                    //fonctionSubMenu('subMenu"+i+"','"+name+"');\n\
                }
                updateDivContent("submenu", message2);
            }
        }
    }
    
</script>
<link rel="stylesheet" href="style.css">
<LINK REL="SHORTCUT ICON" HREF="./favicon.ico">

<html style="overflow: auto">
    
    <head>
       
        <title>Red Neck Industries</title>
        <meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
    </head>
    
    <body onload="displayHeader();displayAccount();">
        
        <div id="header"></div>
        <div id="account"></div>
        <div id="test">
            <input type="button" onclick="displayAccount();" name="displayAccount" value="displayAccount" /><input type="button" onclick="displayIdentification();" name="displayIdentification" value="displayIdentification" /><input type="button" onclick="displayLostPassword();" name="displayLostPassword" value="displayLostPassword" /><input type="button" onclick="hideAccount();" name="hideAccount" value="hideAccount" /><input type="button" onclick="displayHeader();" name="displayHeader" value="displayHeader" />
        </div>
        <div class="main" id="main" > </div>
        
    </body>
    
</html>