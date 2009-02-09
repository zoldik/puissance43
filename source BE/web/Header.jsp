<%-- 
    Document   : Header
    Created on : 2 févr. 2009, 15:45:48
    Author     : mxs
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page language="Java" import="javax.servlet.*,java.io.*,java.util.*,model.account.*" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">
   <script language="JavaScript" src="./javascripts/ajax.js"></script>
        <%
            boolean sessionOK=false;
            HttpSession CustomerSession = request.getSession(false);
              if (CustomerSession!=null) {
                  sessionOK=true;
                if (CustomerSession.getAttribute("Customer")!=null) {
                    sessionOK=true;
                    Customer CustomerObject =(Customer)CustomerSession.getAttribute("Customer");
                    if (CustomerObject.isAllowed()) {
                        sessionOK=true;
                        int idCustomer=CustomerObject.getId();
                        %>
                        <div class="menu">
                            <table align="center">
                                <tr>
                                    <a class="onglet" href="#" onclick="fonctionOpenPage('accueil.jsp');" onmouseover="fonctionContenu('Accueil'); fonctionClean('Accueil'); fonctionMenu('Accueil'); return false;" ><div id="Accueil">Accueil</div></a>
                                    <a class="onglet" href="#" onmouseover="fonctionContenu('Compte'); fonctionClean('Compte'); fonctionMenu('Compte'); return false;"><div id="Compte">Compte</div></a>
                                    <a class="onglet" href="#" onmouseover="fonctionContenu('VOD'); fonctionClean('VOD'); fonctionMenu('VOD'); return false;"><div id="VOD">VOD</div></a>
                                    <a class="onglet" href="#" onclick="fonctionOpenPage('voip/voip.jsp');" onmouseover="fonctionContenu('VoIP'); fonctionClean('VoIP'); fonctionMenu('VoIP'); return false;"><div id="VoIP">VoIP</div></a>
                                    <a class="onglet" href="#" onmouseover="fonctionContenu('WebMail'); fonctionClean('WebMail'); fonctionMenu('WebMail'); return false;"><div id="WebMail">WebMail</div></a>
                                    <a class="onglet" href="#" onmouseover="fonctionContenu('Assistance'); fonctionClean('Assistance'); fonctionMenu('Assistance'); return false;"><div id="Assistance">Assistance</div></a>
                                    <a class="onglet" href="#" onmouseover="fonctionContenu('Réseaux'); fonctionClean('Réseaux'); fonctionMenu('Réseaux'); return false;"><div id="Réseaux">Réseaux</div></a>
                                    <a class="onglet" href="#" onmouseover="fonctionContenu('NetworkDevices'); fonctionClean('NetworkDevices'); fonctionMenu('NetworkDevices'); return false;"><div id="NetworkDevices">NetDevices</div></a>
                                    <a class="onglet" href="#" onmouseover="fonctionContenu('NetworkSolutions'); fonctionClean('NetworkSolutions'); fonctionMenu('NetworkSolutions'); return false;"><div id="NetworkSolutions">NetSolutions</div></a>
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
                                    <a class="onglet" href="#" onclick="fonctionOpenPage('accueil.jsp');" onmouseover="fonctionContenu('Accueil'); fonctionClean('Accueil'); fonctionMenu('Accueil'); return false;" ><div id="Accueil">Accueil</div></a>
                                    <a class="onglet" href="#" onmouseover="fonctionContenu('Compte'); fonctionClean('Compte'); fonctionMenu('Compte'); return false;"><div id="Compte">Compte</div></a>
                                    <a class="onglet" href="#" onmouseover="fonctionContenu('VOD'); fonctionClean('VOD'); fonctionMenu('VOD'); return false;"><div id="VOD">VOD</div></a>
                                    <a class="onglet" href="#" onclick="fonctionOpenPage('voip/voip.jsp');" onmouseover="fonctionContenu('VoIP'); fonctionClean('VoIP'); fonctionMenu('VoIP'); return false;"><div id="VoIP">VoIP</div></a>
                                    <a class="onglet" href="#" onmouseover="fonctionContenu('WebMail'); fonctionClean('WebMail'); fonctionMenu('WebMail'); return false;"><div id="WebMail">WebMail</div></a>
                                    <a class="onglet" href="#" onmouseover="fonctionContenu('Assistance'); fonctionClean('Assistance'); fonctionMenu('Assistance'); return false;"><div id="Assistance">Assistance</div></a>
                                    <a class="onglet" href="#" onmouseover="fonctionContenu('Réseaux'); fonctionClean('Réseaux'); fonctionMenu('Réseaux'); return false;"><div id="Réseaux">Réseaux</div></a>
                                    <a class="onglet" href="#" onmouseover="fonctionContenu('NetworkDevices'); fonctionClean('NetworkDevices'); fonctionMenu('NetworkDevices'); return false;"><div id="NetworkDevices">NetDevices</div></a>
                                    <a class="onglet" href="#" onmouseover="fonctionContenu('NetworkSolutions'); fonctionClean('NetworkSolutions'); fonctionMenu('NetworkSolutions'); return false;"><div id="NetworkSolutions">NetSolutions</div></a>
                                    <div class="spacer" align="center"></div> <!-- permet le retour à la ligne à la fin des boites float -->
                                </tr>
                            </table>
                            </div>
                            <div class="menu2">
                                <table align="center">
                                    <tr>
                                        <div id="submenu">KO</div>
                                    </tr>
                                </table>
                           </div>
        <%  }

        %>

