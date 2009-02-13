

////****************************************************
//**************BEGIN CORE FUNCTIONS********************

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

//****************************************************

function updateDivContent(divName, text)
{
    document.getElementById(divName).innerHTML = text;
}

//****************************************************
//**************END CORE FUNCTIONS********************


//*************BEGIN LOGIN FUNCTIONS******************
//****************************************************

function verifLogin(login) {    
    xhr = getVerifLoginAsynchronous('./VerifLogin.jsp', handlerVerifLogin, login);    
}

//****************************************************

function getVerifLoginAsynchronous(URL, alertFunction, login)
{
    //Creation de l'objet xhr du côté client
    var xhr = createXMLHttpRequest();
    
    //Mise en place d'une fonction handler pour le résultat de la requête
    xhr.onreadystatechange = alertFunction;
    
    //envoie de la requête par l'objet xhr en mode asynchrone (true)
    xhr.open("POST",URL,true);
    xhr.overrideMimeType('text/html');
    xhr.setRequestHeader("Content-Type", "application/x-www-form-urlencoded");
    //envoie du login pour vérification
    xhr.send("login="+login);
    return xhr;
}

//****************************************************

function handlerVerifLogin() {
    if(xhr.readyState == 4) {
        if(xhr.status == 200) {
            var validationLogin=xhr.responseText.toString();
            updateDivContent("freeLogin", "<FONT SIZE=1 "+validationLogin+"</font>");
        }
    }
}

//****************************************************
//*************END LOGIN FUNCTIONS********************
