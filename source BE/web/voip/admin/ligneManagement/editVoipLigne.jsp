<%-- 
    Document   : editVoipLigne
    Created on : 27 janv. 2009, 14:46:37
    Author     : francois
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"
import="java.util.*"
import="DAO.interfaces.LineDAOInterface"
import="DAO.interfaces.CustomerDAOInterface"
import="DAO.transfertObject.LineTO"
import="DAO.transfertObject.CustomerTO"
import="DAO.factory.DAOFactory"
import="DAO.factory.MySqlDAOFactory"
import="DAO.transfertObject.CustomerTO"
import="model.voip.*"
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>VoIP admin - Edit the VoIP ligne</title>
    </head>
    
    <body>
        
        <%  String id = request.getParameter("id");

            DAOFactory daoFactory = DAOFactory.getDAOFactory(DAOFactory.MYSQL);
            LineDAOInterface LineDAO = daoFactory.getLineDAO();
            
            //selectionne les numeros
            LineTO vl = new LineTO();
            vl = LineDAO.findLineById(id);             
        %>


        <h2>VoIP admin - Edit the VoIP ligne</h2>

        <h4>Detail</h4>
        
        
        
        <form methode="get" action="../../../doVoipLigne">
        
        <table>
            <tr><td>id <%= vl.getid()%> <input type="hidden" name="id" value="<%= vl.getid()%>"/></td></tr>
            <tr><td>id customer <%= vl.getcustomerid()%> <input type="hidden" name="customerid" value="<%= vl.getcustomerid()%>"/></td></tr>
            
            <tr><td><h5> --- Paramètres sur le reseau telephonique : ---</h5></td></tr>
            
            <tr><td>Reseau téléphonique de la ligne</td><td><input type="text" name="context" value="<%= vl.getcontext()%>" ></td></tr>
            <tr>
                <td>Type de ligne:</td>
                <td><select name="type" >
                        <option value="<%= vl.gettype()%>">--<%= vl.gettype()%>--</option>
                        <option value="user">user</option>
                        <option value="peer">peer</option>
                        <option value="friend">friend</option>
                    </select>
                </td>
            </tr>
            <tr><td>callgroup</td><td><input type="text" name="callgroup"  value="<%= vl.getcallgroup()%>" ></td></tr>
            <tr><td>pickupgroup</td><td><input type="text" name="pickupgroup" value="<%= vl.getpickupgroup()%>" ></td></tr>
           
            
            <tr><td><h5> --- Paramètres sur la ligne : ---</h5></td></tr>
            
            <tr><td>Numero de la ligne</td><td><input type="text" name="name" value="<%= vl.getname() %>" ></td></tr>
            <tr><td>Utilisateur</td><td><input type="text" name="username" value="<%= vl.getusername() %>" ></td></tr>
            <tr><td>Mail</td><td><input type="text" name="mailbox" value="<%= vl.getmailbox()%>" ></td></tr>
            <tr>
                <td>Langue :</td>
                <td>
                    <select name="language" >
                        <option value="<%= vl.getlanguage()%>">
                           <% if (vl.getlanguage().compareTo("en")==0) {out.print("--Anglais--");
                           }else if(vl.getlanguage().compareTo("fr")==0){out.print("--Francais--");
                          }else {out.print(vl.getlanguage());}
                          %>
                        </option>
                        <option value="en">Anglais</option>
                        <option value="fr">Francais</option>
                     </select>
                </td>
            </tr>
             <tr><td>fullcontact</td><td><input type="text" name="fullcontact" value="<%= vl.getfullcontact()%>" ></td></tr>
            
            
            
            <tr><td><h5> --- Paramètres sur les services : --- </h5></td></tr>
        
            <tr><td>Presentation de l'appelant</td><td><input type="text" name='callerid' value='<%= vl.getcallerid() %>' /></td></tr>
            <tr><td>Musique d'attente</td><td><input type="text" name="musiconhold" value="<%= vl.getmusiconhold() %>" ></td></tr>
            <tr>
                <td>Visibilité dans l'annuaire :</td>
                <td><select name="visible" >
                        <option value="<% if (vl.getvisible()==false){out.print("0");}else{out.print("1");} %>"><% if (vl.getvisible()==false){out.print("--Non visible--");}else{out.print("--Visible--");} %></option>
                        <option value="1">Visible</option>
                        <option value="0">Non visible</option>
                    </select>
                </td>
            </tr>        
            <tr>
                <td>dtmfmode :</td>
                <td><select name="dtmfmode" >
                        <option value="<%= vl.getdtmfmode()%>">--<%= vl.getdtmfmode()%>--</option>
                        <option value="rfc2833">rfc2833</option>
                        <option value="INFO">INFO</option>
                    </select>
                </td>
            </tr>
            <tr><td>Nombre limite d'appels</td><td><input type="text" name="calllimit" value="<%= vl.getcalllimit()%>" ></td></tr>
            <tr>
                <td>canreinvite :</td>
                <td><select name="canreinvite" >
                        <option value="<%= vl.getcanreinvite()%>">--<%= vl.getcanreinvite()%>--</option>
                        <option value="yes">yes</option>
                        <option value="no">no</option>
                    </select>
                </td>
            </tr>
            <tr><td>cancallforward</td><td><input type="text" name="cancallforward" value="<%= vl.getcancallforward()%>" ></td></tr>
        
        
            <tr><td><h5> --- Paramètres réseau : --- </h5></td></tr>
        
            <tr><td>Hôte</td><td><input type="text" name="host" value="<%= vl.gethost()%>" ></td></tr>
            <tr><td>Adresse IP par default</td><td><input type="text" name="defaultip" value="<%= vl.getdefaultip()%>" ></td></tr> 
            <tr><td>Adresse IP</td><td><input type="text" name="ipaddr" value="<%= vl.getipaddr()%>" ></td></tr>
            <tr><td>Masque</td><td><input type="text" name="mask" value="<%= vl.getmask()%>" ></td></tr>
            <tr><td>deny</td><td><input type="text" name="deny" value="<%= vl.getdeny()%>" ></td></tr>
            <tr><td>permit</td><td><input type="text" name="permit" value="<%= vl.getpermit()%>" ></td></tr>
            <tr><td>port</td><td><input type="text" name="port" value="<%= vl.getport()%>" ></td></tr>
            <tr>
                <td>Nat :</td>
                <td><select name="nat" >
                        <option value="<%= vl.getnat()%>">--<%= vl.getnat()%>--</option>
                        <option value="yes">yes</option>
                        <option value="no">no</option>
                    </select>
                </td>
            </tr>       
        
            <tr><td><h5> --- Paramètres matériel : --- </h5></td></tr>
        
            <tr><td>codec autorisé :</td><td><input type="text" name="allow" value="<%= vl.getallow()%>" ></td></tr>
        
        
        
        
            <tr><td><h5> --- Paramètres Avancé : --- </h5></td></tr>
        
            <tr><td>rtpholdtimeout</td><td><input type="text" name="rtpholdtimeout" value="<%= vl.getrtpholdtimeout()%>" ></td></tr>
            <tr><td>rtptimeout</td><td><input type="text"  name="rtptimeout" value="<%= vl.getrtptimeout()%>" ></td></tr>
            <tr><td>accountcode</td><td><input type="text" name="accountcode" value="<%= vl.getaccountcode()%>" ></td></tr>
            <tr><td>insecure</td><td><input type="text" name="insecure" value="<%= vl.getinsecure()%>" ></td></tr>   
            <tr><td>amaflags</td><td><input type="text" name="amaflags" value="<%= vl.getamaflags()%>" ></td></tr>
            <tr><td>regseconds</td><td><input type="text" name="regseconds" value="<%= vl.getregseconds()%>" ></td></tr>
            <tr><td>regserver</td><td><input type="text" name="regserver" value="<%= vl.getregserver()%>" ></td></tr>
            <tr><td>qualify</td><td><input type="text" name="qualify" value="<%= vl.getqualify()%>" ></td></tr>
            <tr><td>regexten</td><td><input type="text" name="regexten" value="<%= vl.getregexten()%>" ></td></tr>
            <tr><td>fromdomain</td><td><input type="text" name="fromdomain" value="<%= vl.getfromdomain()%>" ></td></tr>
            <tr><td>fromuser</td><td><input type="text" name="fromuser" value="<%= vl.getfromuser()%>" ></td></tr>      
            <tr><td>disallow</td><td><input type="text" name="disallow" value="<%= vl.getdisallow()%>" ></td></tr>
            <tr><td>restrictcid</td><td><input type="text" name="restrictcid" value="<%= vl.getrestrictcid()%>" ></td></tr>
            <tr><td>setvar</td><td><input type="text" name="setvar" value="<%= vl.getsetvar()%>" ></td></tr>
        
        
       
            <tr>
                <td></td>
                <td>
                    <input type="submit" value="cancel" name="cancel">
                    <input type="submit" value="ok" name="ok">
                    <input type='hidden' name='action' value="edit">    
                </td>
            </tr>

        
        
        </table>
        
        </form> 
  
        
        
        
        
        
        
    </body>
</html>
