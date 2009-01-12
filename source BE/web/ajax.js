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
                    updateDivContent("menu", "<input type=\"button\" value=\"Mon Internet\" onclick=updateMain(this.value) align=\"left\" /><br><input type=\"button\" value=\"WebMail\" onclick=updateMain(this.value) align=\"left\" />");
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

function updateMain(string)
{
    if(string != '')
               {
               if(string.toString().indexOf("Mon Internet",0)!=-1)
                    updateDivContent("contenu", "blabla Mon Internet");
                else if(string.toString().indexOf("WebMail",0)!=-1)
                    updateDivContent("contenu", "blabla WebMail");
                else updateDivContent("contenu", "<FONT SIZE=1 color=\"green\">vide</font>");
               }
}
