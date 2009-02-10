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
               if (request.getParameter("Connexion")!=null) {
                 int Connexion = Integer.parseInt(request.getParameter("Connexion"));
                   if (Connexion==2) {
                       message="Connexion refusée";
                   } else if (Connexion==99) {
                       message="Connexion requise pour accès à la page";
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
                                    <td align="right"><label for="username"> Nom d'utilisateur :</label></td>
                                    <td align="left"><input type="text" id="username" name="username" class="LoginBox" value="" /></td>
                                    <td align="right" ><input type="button" onclick="displayLostPassword();" value="Mot de passe oublié" name="Mot de passe oublié" /></td>
                                </tr>
                               <tr>
                                    <td align="right"><label for="password"> Mot de passe :</label></td>
                                    <td align="left"><input type="password" id="password" name="password" class="LoginBox" value=""  /></td>
                                    <td align="left"><input type="submit" value="Connexion" name="Connexion" /></td>
                                </tr>
                                <tr>
                                    <td>&nbsp;</td>
                                    <td align="center"><div id="subAccount"><%=message%></div></td>
                                    <td>&nbsp;</td>
                                </tr>
                            </table>
                        </form>
