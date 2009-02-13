function verifLength(string, div, length)
{
    if(string != '')
    {
        if(string.length>length)
            updateDivContent(div, "<FONT SIZE=1 color=\"yellow\">"+div+" too long</font>");
        else updateDivContent(div, "<FONT SIZE=1 color=\"green\">correct</font>");
    }
}

function verifCP(string)
{
    if(string != '')
    {
        if(string.length<=5 && Math.abs(string)>=0)
            updateDivContent("CP", "<FONT SIZE=1 color=\"green\">Correct PC</font>");
        else updateDivContent("CP", "<FONT SIZE=1 color=\"red\">Incorrect PC</font>");
    }
    else updateDivContent("CP", "<FONT SIZE=1 color=\"orange\">Enter PC</font>");
}

function verifMail(mail)
{
    if(mail != '')
    {
        if(mail.length<30 && mail.toString().indexOf("@",0)!=-1 && mail.toString().indexOf(".",0)!=-1)
            updateDivContent("mail", "<FONT SIZE=1 color=\"green\">Mail correct</font>");
        else updateDivContent("mail", "<FONT SIZE=1 color=\"yellow\">Mail incorrect</font>");
    }
}

function verifSexe(sexe)
{
    if(sexe != '')
    {
        if(sexe.length<2 && (sexe.toString().indexOf("F",0)!=-1 || sexe.toString().indexOf("M",0)!=-1 || sexe.toString().indexOf("X",0)!=-1))
            updateDivContent("sexe", "<FONT SIZE=1 color=\"green\">Sexe correct</font>");
        else updateDivContent("sexe", "<FONT SIZE=1 color=\"yellow\">Sexe incorrect</font>");
    }
}

function levelPassword(password,div)
{
    if(password != '')
    {           
        if(password.length<8)
        //#FFFF00>>Yellow
            updateDivContent(div, '<span style="color:#FFFF00"><FONT SIZE=1>Password too short</font></span>');
        else if(password.length>15)
        //#FFFF00>>Yellow
            updateDivContent(div, '<span style="color:#FFFF00"><FONT SIZE=1>Password too long</font></span>');
        else if(password.length>7 && password.length<10)
        //#FF8C00>>Orange
            updateDivContent(div, '<span style="color:#FF8C00"><FONT SIZE=1>Low security password</font></span>');
        else if(password.length>10 && password.length<13)
        //#0000cc>>Blue
            updateDivContent(div, '<span style="color:#0000cc"><FONT SIZE=1>Medium security password</font></span>');
        else if(password.length>12 && password.length<15)
        //#90EE90>>Light green
            updateDivContent(div, '<span style="color:#90EE90"><FONT SIZE=1>High security password</font></span>');
        else if(password.length==15)
        //#008000>>Green
            updateDivContent(div, '<span style="color:#008000"><FONT SIZE=1>Highest security password</font></span>');
    }
    else updateDivContent(div, '<span style="color:#000000"><FONT SIZE=1>Enter password</font></span>');         
}