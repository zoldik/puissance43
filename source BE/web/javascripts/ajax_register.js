function verifLength(string, div, length)
{
    if(string != '')
    {
        if(string.length>length)
            updateDivContent(div, "<FONT SIZE=1 color=\"yellow\">"+div+" too long</font>");
        else updateDivContent(div, "<FONT SIZE=1 color=\"green\">correct</font>");
    }
}

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


function verifLength(string, div, length)
{
    if(string != '')
    {
        if(string.length>length)
            updateDivContent(div, "<FONT SIZE=1 color=\"yellow\">"+div+" too long</font>");
        else updateDivContent(div, "<FONT SIZE=1 color=\"green\">correct</font>");
    }
}

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

//*************BEGIN PASSWORD FUNCTIONS***************
//****************************************************

function levelPassword(password)
{
    if(password != '')
    {           
        if(password.length<8)
        //#FFFF00>>Yellow
            writeDivPassword('<span style="color:#FFFF00"><FONT SIZE=1>Password too short</font></span>');
        else if(password.length>15)
        //#FFFF00>>Yellow
            writeDivPassword('<span style="color:#FFFF00"><FONT SIZE=1>Password too long</font></span>');
        else if(password.length>7 && password.length<10)
        //#FF8C00>>Orange
            writeDivPassword('<span style="color:#FF8C00"><FONT SIZE=1>Low security password</font></span>');
        else if(password.length>10 && password.length<13)
        //#0000cc>>Blue
            writeDivPassword('<span style="color:#0000cc"><FONT SIZE=1>Medium security password</font></span>');
        else if(password.length>12 && password.length<15)
        //#90EE90>>Light green
            writeDivPassword('<span style="color:#90EE90"><FONT SIZE=1>High security password</font></span>');
        else if(password.length==15)
        //#008000>>Green
            writeDivPassword('<span style="color:#008000"><FONT SIZE=1>Highest security password</font></span>');
    }
    else writeDivPassword('<span style="color:#000000"><FONT SIZE=1>Enter password</font></span>');         
}

//****************************************************

function writeDivPassword(innerHTML)
{
    document.getElementById('levelPassword').innerHTML = innerHTML;
}

//*************END PASSWORD FUNCTIONS***************
//**************************************************

function verifMail(mail)
{
    if(mail != '')
    {
        if(mail.length<30 && mail.toString().indexOf("@",0)!=-1 && mail.toString().indexOf(".",0)!=-1)
            updateDivContent("mail", "<FONT SIZE=1 color=\"green\">Mail correct</font>");
        else updateDivContent("mail", "<FONT SIZE=1 color=\"yellow\">Mail incorrect</font>");
    }
}

//**************************************************

function verifSexe(sexe)
{
    if(sexe != '')
    {
        if(sexe.length<2 && (sexe.toString().indexOf("F",0)!=-1 || sexe.toString().indexOf("M",0)!=-1 || sexe.toString().indexOf("X",0)!=-1))
            updateDivContent("sexe", "<FONT SIZE=1 color=\"green\">Sexe correct</font>");
        else updateDivContent("sexe", "<FONT SIZE=1 color=\"yellow\">Sexe incorrect</font>");
    }
}
