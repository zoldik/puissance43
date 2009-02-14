<%-- 
    Document   : Identification
    Created on : 31 janv. 2009, 20:25:46
    Author     : mxs
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page language="Java" import="java.io.*,java.util.*" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">
<%         String message ="";
           String log ="value=\"\"";
           String pwd ="value=\"\"";
               if (request.getParameter("Connexion")!=null) {
                 int Connexion = Integer.parseInt(request.getParameter("Connexion"));
                   if (Connexion==2) {
                       message="Connexion refusée";
                   } else if (Connexion==3) {
                       message ="Ce compte n\'a pas encore été validé.";
                   } else if (Connexion==4) {
                       message ="login= user$ / password= pwd$ / $ = level_account";
                       log ="value=\"user0\"";
                       pwd ="value=\"pwd0\"";
                   } else if (Connexion==5) {
                       message ="Vous devez créer un compte pour vous abonner";
                   }  else if (Connexion==99) {
                       message ="Connexion requise pour accès à la page";
                   } else if (Connexion==404) {
                       message="Connexion 404 inconnue";
                   } else {
                       message="Connexion mal reçue";
                   }
               }
%>
                        <form class="account" name="Authentification" action="./Authentification" method="POST">
                            <table align="center">
                                <tr>
                                    <td align="right"><label for="username">Nom d'utilisateur :</label></td>
                                    <td align="left"><input type="text" id="username" name="username" class="LoginBox" <%= log%> /></td>
                                    <td align="left" ><input type="button" onclick="displayLostPassword();" value="Mot de passe oublié" name="Mot de passe oublié" /></td>
                                    <td align="right" ><input type="button" onclick="hideAccount();" value="X" name="X" /></td>
                                </tr>
                            </table>
                            <table align="center">     
                               <tr>
                                    <td align="right"><label for="password"> Mot de passe :</label></td>
                                    <td align="left"><input type="password" id="password" name="password" class="LoginBox" <%= pwd%>  /></td>
                                    <td align="left"><input type="submit" value="Connexion" name="Connexion" /> </td>
                                    <td align="right" ><input type="button" onclick="fonctionOpenPage('./CreateCustomerAccount.jsp');hideAccount();" value="S'inscrire" name="S'inscrire" /></td>
                                </tr>
                                
                            </table>
                            <table align="center">
                                <tr class="subAccount">
                                    <td align="center"><%=message%><div id="subAccount" ></div></td>
                                </tr>
                            </table>
                        </form>
