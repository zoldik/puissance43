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
                        int idCustomer = customerObject.getId();
                        int level = customerObject.getAccountLevel();
                        
                        
                        %>
                        <div class="menu">
                            <table align="center">
                                <tr>
                                    <a class="onglet" href="./Deconnection" ><div id="Déconnexion">Déconnexion</div></a>
                                    <a class="onglet" href="#" onclick="fonctionOpenPage('accueil.jsp');" onmouseover="fonctionContenuCustomer('Compte'); fonctionClean('Compte'); fonctionMenu('Compte'); return false;"><div id="Compte">Compte</div></a>
                                    <a class="onglet" href="#" onmouseover="fonctionContenuCustomer('VOD'); fonctionClean('VOD'); fonctionMenu('VOD'); return false;"><div id="VOD">VOD</div></a>
                                    <a class="onglet" href="#" onclick="fonctionOpenPage('voip/voip.jsp');" onmouseover="fonctionContenuCustomer('VoIP'); fonctionClean('VoIP'); fonctionMenu('VoIP'); return false;"><div id="VoIP">VoIP</div></a>
                                    <a class="onglet" href="#" onmouseover="fonctionContenuCustomer('Assistance'); fonctionClean('Assistance'); fonctionMenu('Assistance'); return false;"><div id="Assistance">Assistance</div></a>
                                    <a class="onglet" href="#" onmouseover="fonctionContenuCustomer('Magasin'); fonctionClean('Magasin'); fonctionMenu('Magasin'); return false;"><div id="Magasin">Magasin</div></a>
                                    <a class="onglet" href="#" onmouseover="fonctionContenuCustomer('NetworkSolutions'); fonctionClean('NetworkSolutions'); fonctionMenu('NetworkSolutions'); return false;"><div id="NetworkSolutions">NetSolutions</div></a>
                                    <div class="spacer" align="center"></div> <!-- permet le retour à la ligne à la fin des boites float -->
                                </tr>
                            </table>
                            </div>
                            <div class="menu2">
                                <table align="center">
                                    <tr>
                                        <div id="submenu">OK</div>
                                    </tr>
                                </table>
                           </div>
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
                            <div class="menu">
                            <table align="center">
                                <tr>
                                    <a class="onglet" href="#" onclick="displayIdentification(1);" ><div id="Connexion">Connexion</div></a>
                                    <a class="onglet" href="#" onclick="fonctionOpenPage('accueil.jsp');" onmouseover="fonctionContenuPublic('Compte'); fonctionClean('Compte'); fonctionMenu('Compte'); return false;"><div id="Compte">Compte</div></a>
                                    <a class="onglet" href="#" onmouseover="fonctionContenuPublic('VOD'); fonctionClean('VOD'); fonctionMenu('VOD'); return false;"><div id="VOD">VOD</div></a>
                                    <a class="onglet" href="#" onclick="fonctionOpenPage('voip/voip.jsp');" onmouseover="fonctionContenuPublic('VoIP'); fonctionClean('VoIP'); fonctionMenu('VoIP'); return false;"><div id="VoIP">VoIP</div></a>
                                    <a class="onglet" href="#" onmouseover="fonctionContenuPublic('Assistance'); fonctionClean('Assistance'); fonctionMenu('Assistance'); return false;"><div id="Assistance">Assistance</div></a>
                                    <a class="onglet" href="#" onmouseover="fonctionContenuPublic('Magasin'); fonctionClean('Magasin'); fonctionMenu('Magasin'); return false;"><div id="Magasin">Magasin</div></a>
                                    <a class="onglet" href="#" onmouseover="fonctionContenuPublic('NetworkSolutions'); fonctionClean('NetworkSolutions'); fonctionMenu('NetworkSolutions'); return false;"><div id="NetworkSolutions">NetSolutions</div></a>
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

