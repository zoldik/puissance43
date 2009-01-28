<%-- 
    Document   : support
    Created on : 13 janv. 2009, 19:06:39
    Author     : francois
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Support : envoyez un message à notre assistance technique</title>
    </head>
    <body>
        <h2>Support</h2>
        <form name="formulaire_support" action="RedNeckContact" method="post">
        <table align="left" border="0" cellpadding="0" cellspacing="0">
        <tbody><tr> 
        </tr>
        <tr> 
        <td colspan="3"><b>Renseignements nécessaires </b></td>
                      </tr>
                      <tr> 
                        <td width="12">&nbsp;</td>
                        <td align="right">Nom* : &nbsp;</td>
                        <td><input name="nom" type="text"></td>
                      </tr>
                      <tr> 
                        <td width="12">&nbsp;</td>
                        <td align="right">Prénom* : &nbsp;</td>

                        <td><input name="prenom" type="text"></td>
                      </tr>
                      <tr> 
                        <td width="12">&nbsp;</td>
                        <td align="right">Email* : &nbsp;</td>
                        <td><input name="email" type="text"></td>
                      </tr>
                      <tr> 
                        <td width="12">&nbsp;</td>
                        <td align="right">Téléphone* : &nbsp;</td>
                        <td><input name="telephone" type="text"></td>

                      </tr>
                      <tr> 
                        <td width="12">&nbsp;</td>
                        <td align="right"> N° Client* : &nbsp;</td>
                        <td><input name="num_client" type="text"></td>
                      </tr>
                       <tr> 
                        <td width="12">&nbsp;</td>
                        <td align="right">Adresse : &nbsp;</td>
                        <td>
                          <input name="adresse" size="5" maxlength="5" type="text">
                        </td>
                      </tr>
                      <tr> 
                        <td width="12">&nbsp;</td>
                        <td align="right">Code Postal : &nbsp;</td>
                        <td>
                          <input name="departement" size="5" maxlength="5" type="text">
                        </td>
                      </tr>
                      <tr> 
                        <td width="12">&nbsp;</td>
                        <td align="right">Num de ligne concerné* : &nbsp;</td>
                        <td><input name="num_ligne" type="text"></td>
                      </tr>
                      <tr> 
                        <td width="12">&nbsp;</td>
                        <td colspan="2">*&nbsp;Informations indispensables</td>
                      </tr>
                      <tr> 
                        <td width="12">&nbsp;</td>
                        <td colspan="2">&nbsp;</td>

                      </tr>
                      <tr> 
                        <td colspan="3"><b>Votre Message*</b></td>
                      </tr>
                      <tr> 
                        <td width="12">&nbsp;</td>
                        <td colspan="2" align="center"><textarea name="message_client" cols="40" rows="10"></textarea></td>
                     </tr>
                 </table>
             </form>
    </body>
</html>
