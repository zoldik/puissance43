<%-- 
    Document   : Account
    Created on : 31 janv. 2009, 20:26:05
    Author     : mxs
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page language="Java" import="javax.servlet.*,java.io.*,java.util.*,DAO.transfertObject.*" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<div id="accountmenu" >
        <%
            boolean sessionOK=false;
            HttpSession CustomerSession = request.getSession(false);
              if (CustomerSession!=null) {
                  sessionOK=true;
                if (CustomerSession.getAttribute("Customer")!=null) {
                    sessionOK=true;
                    CustomerTO customerObject =(CustomerTO)CustomerSession.getAttribute("Customer");
                    if (customerObject.getValid()) {
                        sessionOK=true;
                        int idCustomer=customerObject.getId();
                        %>
                        <form class="account" name="Account" action="./Deconnection" method="POST">
                            <table align="center">
                                <tr style="font-size:12px;" >
                                    <td align="left">Bonjour <%=customerObject.getFirstName()%> <%=customerObject.getLastName()%></td>
                                    <td align="left">[<%=idCustomer%>/<%=customerObject.getLogin()%>]</td>
                                    <td>&nbsp;</td>
                                </tr>
                               <tr style="font-size:12px;" >
                                    <td align="right">Nous sommes le <%= new java.util.Date() %>,</td>
                                    <td align="left">vous avez X message(s)</td>
                                    <td>&nbsp;</td>
                                </tr>
                                <tr>
                                    <td align="right" ></td>
                                    <td align="right"><input type="submit" value="Déconnexion" name="Déconnexion" /></td>
                                    <td>&nbsp;</td>
                                </tr>
                            </table>
                        </form>
                    <%} else {
                        sessionOK=false;
                      } 
                 } else {
                    sessionOK=false;
                 }
              } else {
                sessionOK=false;
              }
            
            if (!sessionOK) {
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
                                    <td align="center"><div id="subAccount"></div></td>
                                    <td>&nbsp;</td>
                                </tr>
                            </table>
                        </form>
        <%  }

        %>
</div>