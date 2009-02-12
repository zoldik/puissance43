<%-- 
    Document   : Identification
    Created on : 31 janv. 2009, 20:25:46
    Author     : mxs
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page language="Java" import="java.io.*,java.util.*" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">
<%         String message1 ="";
           String message2 ="";
           String message3 ="";
           String log ="value=\"\"";
           String pwd ="value=\"\"";
               if (request.getParameter("Connexion")!=null) {
                 int Connexion = Integer.parseInt(request.getParameter("Connexion"));
                   if (Connexion==2) {
                       message2="Connexion refusée";
                   } else if (Connexion==3) {
                       message1 ="Ce compte";
                       message2="n\'a pas encore été validé.";
                   } else if (Connexion==4) {
                       message1 ="login= user$ /";
                       message2="password= pwd$";
                       message3="$ = level_account ";
                       log ="value=\"user1\"";
                       pwd ="value=\"pwd1\"";
                   } else if (Connexion==99) {
                       message1 ="Connexion";
                       message2="requise pour accès à la page";
                   } else if (Connexion==404) {
                       message2="Connexion 404 inconnue";
                   } else {
                       message2="Connexion mal reçue";
                   }
               }
%>
                        <form class="account" name="Authentification" action="./Authentification" method="POST">
                            <table align="center">
                                <tr>
                                    <td align="right"><label for="username"> Nom d'utilisateur :</label></td>
                                    <td align="left"><input type="text" id="username" name="username" class="LoginBox" <%= log%> /></td>
                                    <td align="right" ><input type="button" onclick="displayLostPassword();" value="Mot de passe oublié" name="Mot de passe oublié" /></td>
                                </tr>
                               <tr>
                                    <td align="right"><label for="password"> Mot de passe :</label></td>
                                    <td align="left"><input type="password" id="password" name="password" class="LoginBox" <%= pwd%>  /></td>
                                    <td align="left"><input type="submit" value="Connexion" name="Connexion" /></td>
                                </tr>
                                <tr class="subAccount">
                                    <td align="right"><%=message1%></td>
                                    <td align="left"><%=message2%><div id="subAccount" ></div></td>
                                    <td align="left"><%=message3%></td>
                                </tr>
                            </table>
                        </form>
