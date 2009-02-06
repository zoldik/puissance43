function levelMdp(mdp)
{
    if(mdp != '')
    {
        if(mdp.length<8)
            writedivMdp('<span style="color:#cc0000"><FONT SIZE=1>Password too short</font></span>');
        else if(mdp.length>15)
            writedivMdp('<span style="color:#cc0000"><FONT SIZE=1>Password too long</font></span>');
        else if(mdp.length>7 && mdp.length<10)
            writedivMdp('<span style="color:#FF8C00"><FONT SIZE=1>Low security password</font></span>');
        else if(mdp.length>10 && mdp.length<13)
            writedivMdp('<span style="color:#0000cc"><FONT SIZE=1>Medium security password</font></span>');
        else if(mdp.length>12 && mdp.length<15)
            writedivMdp('<span style="color:#90EE90"><FONT SIZE=1>High security password</font></span>');
        else if(mdp.length==15)
            writedivMdp('<span style="color:#008000"><FONT SIZE=1>Highest security password</font></span>');
    }
    else writedivMdp('<span style="color:#000000"><FONT SIZE=1>Enter password</font></span>');
}
     
function writedivMdp(texte)
{
    document.getElementById('levelmdp').innerHTML = texte;
}

//****************************************************

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

function verifLength(string, div, length)
{
    if(string != '')
    {
        if(string.length>length)
            updateDivContent(div, "<FONT SIZE=1 color=\"red\">"+div+" too long</font>");
        else updateDivContent(div, "<FONT SIZE=1 color=\"green\">correct</font>");
    }
}

//****************************************************

function verifLogin(login) {
    
    xhr = getDataAsynchronous3('./verifPseudo.jsp', handlerLogin, login);
    //updateDivContent("pseudobox2", "readyState");
    //writediv('<span style="color:#cc0000"><b>'+pseudo2+' :</b> ce pseudo est trop court</span>');
}

//****************************************************

function getDataAsynchronous3(URL, alertFunction, login)
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

function handlerLogin() {
    if(xhr.readyState == 4) {
        if(xhr.status == 200) {
            var validationLogin=xhr.responseText.toString();
            updateDivContent("freelogin", "<FONT SIZE=1 "+validationLogin+"</font>");
        }
    }
}

//****************************************************

function verifMail(mail)
{
    if(mail != '')
    {
        if(mail.length<30 && mail.toString().indexOf("@",0)!=-1 && mail.toString().indexOf(".",0)!=-1)
            updateDivContent("mail", "<FONT SIZE=1 color=\"green\">Mail correct</font>");
        else updateDivContent("mail", "<FONT SIZE=1 color=\"red\">Mail incorrect</font>");
    }
}



function verifSex(sex)
{
    if(sex != '')
    {
        if(sex.length<2 && (sex.toString().indexOf("F",0)!=-1 || sex.toString().indexOf("M",0)!=-1 || sex.toString().indexOf("X",0)!=-1))
            updateDivContent("sex", "<FONT SIZE=1 color=\"green\">Sex correct</font>");
        else updateDivContent("sex", "<FONT SIZE=1 color=\"red\">Sex incorrect</font>");
    }
}
