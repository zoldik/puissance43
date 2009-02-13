<%-- 
    Document   : Header
    Created on : 2 févr. 2009, 15:45:48
    Author     : mxs
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page language="Java" import="javax.servlet.*,javax.servlet.http.*,java.io.*,java.util.*,DAO.transfertObject.*;" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">   
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
                        int level = customerObject.getAccountLevel();
                        if (level>=0 && level<9) {
                                
                                %>
                        <div class="menu">
                            <table align="center">
                                <tr>
                                    <a class="onglet" href="./Deconnection" ><div id="Déconnexion">Déconnexion</div></a>
                                    <a class="onglet" href="#" onclick="fonctionOpenPage('accueil.jsp');displayAccount();" onmouseover="fonctionContenu(<%= level%>,'Compte'); fonctionClean('Compte'); fonctionMenu('Compte'); return false;"><div id="Compte">Compte</div></a>
                                    <a class="onglet" href="#" onmouseover="fonctionContenu(<%= level%>,'VOD'); fonctionClean('VOD'); fonctionMenu('VOD'); return false;"><div id="VOD">VOD</div></a>
                                    <a class="onglet" href="#" onclick="fonctionOpenPage('voip/voip.jsp');" onmouseover="fonctionContenu(<%= level%>,'VoIP'); fonctionClean('VoIP'); fonctionMenu('VoIP'); return false;"><div id="VoIP">VoIP</div></a>
                                    <a class="onglet" href="#" onmouseover="fonctionContenu(<%= level%>,'Assistance'); fonctionClean('Assistance'); fonctionMenu('Assistance'); return false;"><div id="Assistance">Assistance</div></a>
                                    <a class="onglet" href="#" onmouseover="fonctionContenu(<%= level%>,'Magasin'); fonctionClean('Magasin'); fonctionMenu('Magasin'); return false;"><div id="Magasin">Magasin</div></a>
                                    <a class="onglet" href="#" onmouseover="fonctionContenu(<%= level%>,'NetworkSolutions'); fonctionClean('NetworkSolutions'); fonctionMenu('NetworkSolutions'); return false;"><div id="NetworkSolutions">NetSolutions</div></a>
                                    <% 
                                    if (level==8) {
                                    %>
                                        <a class="onglet" href="#" onmouseover="fonctionContenu(<%= level%>,'Admin'); fonctionClean('Admin'); fonctionMenu('Admin'); return false;"><div id="Admin">Admin</div></a>
                                    <%
                                    }
                                    %>
                                    <div class="spacer" align="center"></div> <!-- permet le retour à la ligne à la fin des boites float -->
                                </tr>
                            </table>
                            </div>
                            <div class="menu2">
                                <table align="center">
                                    <tr>
                                        <div id="submenu"></div>
                                    </tr>
                                </table>
                           </div>
                    <%
                        } else {
                            sessionOK=false;
                        } 
                    } else {
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
                            <div class="menu">
                            <table align="center">
                                <tr>
                                    <a class="onglet" href="#" onclick="displayIdentification(4);" ><div id="Connexion">Connexion</div></a>
                                    <a class="onglet" href="./checkRSS" ><div id="RSS">Test VoIP RSS</div></a>
                                    <a class="onglet" href="#" onclick="fonctionOpenPage('accueil.jsp');" onmouseover="fonctionHeader('Compte'); fonctionClean('Compte'); fonctionMenu('Compte'); return false;"><div id="Compte">Compte</div></a>
                                    <a class="onglet" href="#" onmouseover="fonctionHeader('VOD'); fonctionClean('VOD'); fonctionMenu('VOD'); return false;"><div id="VOD">VOD</div></a>
                                    <a class="onglet" href="#" onclick="fonctionOpenPage('voip/voip.jsp');" onmouseover="fonctionHeader('VoIP'); fonctionClean('VoIP'); fonctionMenu('VoIP'); return false;"><div id="VoIP">VoIP</div></a>
                                    <a class="onglet" href="#" onmouseover="fonctionHeader('Assistance'); fonctionClean('Assistance'); fonctionMenu('Assistance'); return false;"><div id="Assistance">Assistance</div></a>
                                    <a class="onglet" href="#" onmouseover="fonctionHeader('Magasin'); fonctionClean('Magasin'); fonctionMenu('Magasin'); return false;"><div id="Magasin">Magasin</div></a>
                                    <a class="onglet" href="#" onmouseover="fonctionHeader('NetworkSolutions'); fonctionClean('NetworkSolutions'); fonctionMenu('NetworkSolutions'); return false;"><div id="NetworkSolutions">NetSolutions</div></a>
                                    <div class="spacer" align="center"></div> <!-- permet le retour à la ligne à la fin des boites float -->
                                </tr>
                            </table>
                            </div>
                            <div class="menu2">
                                <table align="center">
                                    <tr>
                                        <div id="submenu"></div>
                                    </tr>
                                </table>
                           </div>
        <%  }

        %>

