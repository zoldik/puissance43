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
                        int level=customerObject.getAccountLevel();
                        String colorFAI="";
                        String colorVoIP="";
                        String colorVOD="";
                        switch (level) {
                            case 0: {colorFAI="white";colorVoIP="white";colorVOD="white";} break;
                            case 1: {colorFAI="white";colorVoIP="green";colorVOD="white";} break;
                            case 2: {colorFAI="white";colorVoIP="white";colorVOD="green";} break;
                            case 3: {colorFAI="white";colorVoIP="green";colorVOD="green";} break;
                            case 4: {colorFAI="green";colorVoIP="white";colorVOD="white";} break;
                            case 5: {colorFAI="green";colorVoIP="green";colorVOD="white";} break;
                            case 6: {colorFAI="green";colorVoIP="white";colorVOD="green";} break;
                            case 7: {colorFAI="green";colorVoIP="green";colorVOD="green";} break;
                            case 8: {colorFAI="orange";colorVoIP="orange";colorVOD="orange";} break;
                            default: {colorFAI="white";colorVoIP="white";colorVOD="white";} break;
                        }
                        colorFAI=" style=\"background-color:"+colorFAI+";border:1px solid black\" ";
                        colorVoIP=" style=\"background-color:"+colorVoIP+";border:1px solid black\" ";
                        colorVOD=" style=\"background-color:"+colorVOD+";border:1px solid black\" ";
                        
                        %>
                        <form class="account" name="Account" action="./Deconnection" method="POST">
                            <table align="center">
                                <tr>
                                    <td align="center" <%=colorFAI%> >FAI</td>
                                    <td align="right">Bonjour <%=customerObject.getFirstName()%> </td>
                                    <td align="left"><%=customerObject.getLastName()%> </td>
                                    <td align="right">[<%=idCustomer%>/<%=customerObject.getLogin()%>]</td>
                                    <td align="right"><input type="button" value="X" name="X" onclick="hideAccount();"></td>
                                </tr>
                               <tr>
                                    <td align="center" <%=colorVoIP%> >VoIP</td>
                                    <td align="right">Nous sommes le </td>
                                    <td align="left"><%= new java.util.Date() %>,</td>
                                    <td align="left">vous avez X message(s)</td>
                                    <td>&nbsp;</td>
                                </tr>
                                <tr>
                                    <td align="center" <%=colorVOD%> >VOD</td>
                                    <td align="right" ></td>
                                    <td align="center"></td>
                                    <td align="center">&nbsp;</td>
                                    <td align="center"><input type="submit" value="Déconnexion" name="Déconnexion" /></td>
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