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
          parameters = parameters+'2';
      } else if(connexion==404) {
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