
    
function updateDivContent(divName, text)
{
	document.getElementById(divName).innerHTML = text;
}

function getDataSynchronous(URL)
{
	xmlHttpRequest = createXMLHttpRequest();
	xmlHttpRequest.open("GET", URL, false);
	xmlHttpRequest.send(null);
	if(xmlHttpRequest.readyState == 4)
		return xmlHttpRequest.responseXML;
	else
		return false;
}

function getDataAsynchronous(URL, alertFunction)
{
	var request = createXMLHttpRequest();
	request.onreadystatechange = alertFunction;
	request.open('GET', URL, true);
	request.send(null);
	return request;
}

function createXMLHttpRequest()
{
	var request = false;
	if (window.XMLHttpRequest)
	{ // Mozilla, Safari,...
		request = new XMLHttpRequest();
		if (request.overrideMimeType)
		{
			request.overrideMimeType('text/xml');
		}
	}
	else if (window.ActiveXObject)
	{ // IE
		try
		{
			request = new ActiveXObject("Msxml2.XMLHTTP");
		}
		catch (e)
		{
			try
			{
				request = new ActiveXObject("Microsoft.XMLHTTP");
			}
			catch (e) {}
		}
	}
	if (!request)
	{
		alert('Cannot create XMLHTTP instance');
		return false;
	}
	return request;
}



/**function updateMenu(string)
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
                
                else if(string.toString().indexOf("Assistance",0)!=-1)
                    updateDivContent("menu", "Menu \"Assistance\"");
                
                else if(string.toString().indexOf("Equipements Réseaux") != -1)
                    updateDivContent("menu", "Menu \"Equipements Réseaux\"");
                
                else if(string.toString().indexOf("Installation Services") != -1)
                    updateDivContent("menu", "Menu \"Installation Services\"");
                
                else updateDivContent("menu", "<FONT SIZE=1 color=\"green\">vide</font>");
               }
}

function updateMain(string)
{
    if(string != '')
               {
               if(string.toString().indexOf("Accueil",0)!=-1)
                    //updateDivContent("contenu", "<jsp:include page=\"./accueil.jsp\" />");
                    window.location="accueil.jsp";
                else if(string.toString().indexOf("WebMail",0)!=-1)
                    updateDivContent("contenu", "blabla WebMail");
                else updateDivContent("contenu", "<object data="test.jsp" type="text/html"/>");
               }
}**/

    
