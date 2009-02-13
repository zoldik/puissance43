/* 
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
var thisRequest;
var thisRequest2;

function displayAccount()
{
    thisRequest = getDataAsynchronous('./Account.jsp', showAccount);
}

function hideAccount()
{
    updateDivContent('account', ' ');
}

function displayIdentification(connexion)
{
    var parameters ='';
    if (connexion!=1) {
      parameters = '?Connexion=';
      
      if (connexion==2) {
          // msg: Connexion refusée
          parameters = parameters+'2';
          
      } else if(connexion==3) {
          // msg: Ce compte n'a pas encore été validé.
          parameters = parameters+'3';
          
      } else if(connexion==4) {
          // User1 lop/pwq + msg: login= user$ / password= pwd$   $=level_account
          parameters = parameters+'4';
          
      } else if(connexion==5) {
          // msg: Vous devez créer préalablement un compte pour pouvoir vous abonner.
          parameters = parameters+'5';
          
      } else if(connexion==99) {
          // msg: Connexion requise pour accès à la page
          parameters = parameters+'99';
          
      } else if(connexion==404) {
          // msg: Connexion 404 inconnue
          parameters = parameters+'404';
          
      } else {
          parameters ='';
      }
    }
    thisRequest = getDataAsynchronous('./Identification.jsp'+parameters, showAccount);
}

function displayLostPassword()
{
    thisRequest = getDataAsynchronous('./LostPassword.jsp', showAccount);
}

function showAccount()
{
  if (thisRequest.readyState == 4) {
    if (thisRequest.status == 200) {
      var text = thisRequest.responseText;
      updateDivContent('account', text);
    } else {
      var text2 = thisRequest.status;
      updateDivContent('account', '<h2>status('+'account'+') : '+text2+'</h2>');
    }
  } else {
    var text3 = thisRequest.readyState;
    updateDivContent('account', '<h2>readyState('+'account'+') : '+text3+'</h2>');
  }
}

function displayHeader()
{
    thisRequest2 = getDataAsynchronous('./Header.jsp', showHeader);
}

function showHeader()
{
  if (thisRequest2.readyState == 4) {
    if (thisRequest2.status == 200) {
      var text = thisRequest2.responseText;
      updateDivContent('header', text);
    } 
  }
}


function templateShow()
{
  if (thisRequest.readyState == 4) {
    if (thisRequest.status == 200) {
      var text = thisRequest.responseText;
      updateDivContent(divName, text);
    } else {
      var text2 = thisRequest.status;
      updateDivContent(divName, '<h2>status('+divName+') : '+text2+'</h2>');
    }
  } else {
    var text3 = thisRequest.readyState;
    updateDivContent(divName, '<h2>readyState('+divName+') : '+text3+'</h2>');
  }
}