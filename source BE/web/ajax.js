/* 
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
function updateDivContent(divName, text)
{
	document.getElementById(divName).innerHTML = text;
}

function updateMenu(string)
{
    if(string != '')
               {
               if(string.toString().indexOf("Accueil",0)!=-1)
                    updateDivContent("menu", "Menu \"Accueil\"");
                else if(string.toString().indexOf("Mon compte",0)!=-1)
                    updateDivContent("menu", "Menu \"Mon Compte\"");
                else if(string.toString().indexOf("VOD",0)!=-1)
                    updateDivContent("menu", "Menu \"VOD\"");
                else if(string.toString().indexOf("VoIP",0)!=-1)
                    updateDivContent("menu", "Menu \"VoIP\"");
                else if(string.toString().indexOf("WebMail",0)!=-1)
                    updateDivContent("menu", "Menu \"Webmail\"");
                else if(string.toString().indexOf("Assistance",0)!=-1)
                    updateDivContent("menu", "Menu \"Assistance\"");
                else updateDivContent("menu", "<FONT SIZE=1 color=\"green\">vide</font>");
               }
}

 function include(file) {
   if (document.createElement && document.getElementsByTagName) {
     var head = document.getElementsByTagName('head')[0];

     var script = document.createElement('script');
     script.setAttribute('type', 'text/javascript');
     script.setAttribute('src', file);

     head.appendChild(script);
   } else {
     alert('Your browser can\'t deal with the DOM standard. That means it\'s old. Go fix it!');
   }
 }
