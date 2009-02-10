/* 
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */


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
    
    function fonctionContenuPublic(menu)
    {
        bouton_menu = menu;
        myRequest = getDataAsynchronous('./menu2.xml', alertContenu);
    }
    
    function fonctionContenuCustomer(menu)
    {
        bouton_menu = menu;
        myRequest = getDataAsynchronous('./menu.xml', alertContenu);
    }
                
    function fonctionOpenPage(url)
    {
        if (url="0") {
            displayIdentification(99);
        } else {
            updateDivContent("main", "<object class='page' data='"+url+"' type='text/html'/>");
        }
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