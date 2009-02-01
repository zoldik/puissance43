<%-- 
    Document   : Account
    Created on : 31 janv. 2009, 20:26:05
    Author     : mxs
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page language="Java" import="javax.servlet.*,java.io.*,java.util.*,model.account.*" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<div id="accountmenu" >
        <%
            HttpSession CustomerSession = request.getSession(false);
              if (CustomerSession!=null) {
                if (CustomerSession.getAttribute("Customer")!=null) {
                    Customer CustomerObject =(Customer)CustomerSession.getAttribute("Customer");
                    int idCustomer=CustomerObject.getId();
                    %>
<br>                         
<h4>Bonjour <%=CustomerObject.getSurname()%> <%=CustomerObject.getName()%> [<%=idCustomer%>/<%=CustomerObject.getLog()%>], nous sommes le <%= new java.util.Date() %> , vous avez X message(s) </h4>
                            <!-- <table align="left">
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
                            </table> -->
                <%}
                else
                {%>
<form name="Authentification" action="./Authentification" method="POST">
                            <table align="center">
                                <tr style="font-size:12px;" >
                                    <td align="right"><label for="username"> Nom d'utilisateur :</label></td>
                                    <td align="left"><input type="text" id="username" name="username" class="LoginBox" value="UtilisateurTest" /></td>
                                    <td>&nbsp;</td>
                                </tr>
                               <tr style="font-size:12px;" >
                                    <td align="right"><label for="password"> Mot de passe :</label></td>
                                    <td align="left"><input type="password" id="password" name="password" class="LoginBox" value="blablatest"  /></td>
                                    <td>&nbsp;</td>
                                </tr>
                                <tr>
                                    <td align="right" ><input type="button" onclick="displayLostPassword();" value="Mot de passe oublié" name="Mot de passe oublié" /></td>
                                    <td align="left"><input type="submit" value="Connexion" name="Connexion" /></td>
                                    <td>&nbsp;</td>
                                </tr>
                            </table>
                        </form>
        <%        }
              }

        %>
</div>