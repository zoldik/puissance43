<%-- 
    Document   : Identification
    Created on : 31 janv. 2009, 20:25:46
    Author     : mxs
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<script language="JavaScript" src="../javascripts/ajax.js"></script>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<form class="account" name="Authentification" action="./Authentification" method="POST">
                            <table align="center">
                                <tr style="font-size:12px;" >
                                    <td align="right"><label for="username"> Nom d'utilisateur :</label></td>
                                    <td align="left"><input type="text" id="username" name="username" class="LoginBox" value="" /></td>
                                    <td>&nbsp;</td>
                                </tr>
                               <tr style="font-size:12px;" >
                                    <td align="right"><label for="password"> Mot de passe :</label></td>
                                    <td align="left"><input type="password" id="password" name="password" class="LoginBox" value=""  /></td>
                                    <td>&nbsp;</td>
                                </tr>
                                <tr>
                                    <td align="right" ><input type="button" onclick="displayLostPassword();" value="Mot de passe oublié" name="Mot de passe oublié" /></td>
                                    <td align="left"><input type="submit" value="Connexion" name="Connexion" /></td>
                                    <td>&nbsp;</td>
                                </tr>
                            </table>
                        </form>
