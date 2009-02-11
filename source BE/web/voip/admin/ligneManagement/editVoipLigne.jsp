<%-- 
    Document   : editVoipLigne
    Created on : 27 janv. 2009, 14:46:37
    Author     : francois
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"
import="model.database.*"
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
        <h2>VoIP admin - Edit the VoIP ligne</h2>

        
        
        
        <% String id = request.getParameter("id");
        
        VoipLigne vl = VoipLigneDAO.extractVoipLignebyId(id);
        %>
        

        <h4>Detail</h4>
        <table>
        
        <tr><td>id</td><td><%= vl.getid()%></td></tr>
        <tr><td>numero de la ligne</td><td><input type="text" value="<%= vl.getname() %>" ></td></tr>
        <tr><td>username</td><td><input type="text" value="<%= vl.getusername() %>" ></td></tr>
        <tr><td>Mail</td><td><input type="text" value="<%= vl.getmailbox()%>" ></td></tr>
        <tr><td>Musique d'attente</td><td><input type="text" value="<%= vl.getmusiconhold() %>" ></td></tr>
        <tr><td>accountcode</td><td><input type="text" value="<%= vl.getaccountcode()%>" ></td></tr>    
        <tr><td>context</td><td><input type="text" value="<%= vl.getcontext()%>" ></td></tr>

        <tr>
            <td>Langue :</td>
            <td><select name="type" >
                    <option value="<%= vl.getlanguage()%>">
                        <% if (vl.getlanguage()=="en") {out.print("Anglais");
                        }else if(vl.getlanguage()=="fr"){out.print("Francais");}
                        %>
                    </option>
                    <option value="en">Anglais</option>
                    <option value="fr">Francais</option>
                </select>
            </td>
        </tr>
        
        
        <tr>
            <td>Visibilité dans l'annuaire :</td>
            <td><select name="visible" >
                    <option value="<%= vl.getvisible() %>"><% if (vl.getvisible()==false){out.print("--Non visible--");}else{out.print("--Visible--");} %></option>
                    <option value="true">Visible</option>
                    <option value="false">Non visible</option>
                </select>
            </td>
        </tr>
        
        
        <tr>
            <td>Type :</td>
            <td><select name="type" >
                    <option value="<%= vl.gettype()%>">--<%= vl.gettype()%>--</option>
                    <option value="user">user</option>
                    <option value="peer">peer</option>
                    <option value="friend">friend</option>
                </select>
            </td>
        </tr>
        
        
        <tr>
            <td>Nat :</td>
            <td><select name="type" >
                    <option value="<%= vl.getnat()%>">--<%= vl.getnat()%>--</option>
                    <option value="yes">yes</option>
                    <option value="no">no</option>
                </select>
            </td>
        </tr>
        
        
        <tr>
            <td>canreinvite :</td>
            <td><select name="canreinvite" >
                    <option value="<%= vl.getcanreinvite()%>">--<%= vl.getcanreinvite()%>--</option>
                    <option value="yes">yes</option>
                    <option value="no">no</option>
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

        <tr><td>codec autorisé :</td><td><input type="text" value="<%= vl.getallow()%>" ></td></tr>
        <tr><td>Hote</td><td><input type="text" value="<%= vl.gethost()%>" ></td></tr>
        <tr><td>Adresse IP par default</td><td><input type="text" value="<%= vl.getdefaultip()%>" ></td></tr> 
        <tr><td>Adresse IP</td><td><input type="text" value="<%= vl.getipaddr()%>" ></td></tr>
        <tr><td>Masque</td><td><input type="text" value="<%= vl.getmask()%>" ></td></tr>
        <tr><td>deny</td><td><input type="text" value="<%= vl.getdeny()%>" ></td></tr>
        <tr><td>permit</td><td><input type="text" value="<%= vl.getpermit()%>" ></td></tr>
        <tr><td>port</td><td><input type="text" value="<%= vl.getport()%>" ></td></tr>
        
        
        
        
        
        
        
        
        <tr><td>insecure</td><td><input type="text" value="<%= vl.getinsecure()%>" ></td></tr>        
               
        
        
        <tr><td><h5>============</h5></td></tr>

        <tr><td>amaflags</td><td><input type="text" value="<%= vl.getamaflags()%>" ></td></tr>
        <tr><td>callerid</td><td><input type="text" value="<%= vl.getcallerid()%>" ></td></tr>
        <tr><td>callgroup</td><td><input type="text" value="<%= vl.getcallgroup()%>" ></td></tr>
        <tr><td>cancallforward</td><td><input type="text" value="<%= vl.getcancallforward()%>" ></td></tr>
        <tr><td>defaultuser</td><td><input type="text" value="<%= vl.getdefaultuser()%>" ></td></tr>
        <tr><td>disallow</td><td><input type="text" value="<%= vl.getdisallow()%>" ></td></tr>
        <tr><td>fromdomain</td><td><input type="text" value="<%= vl.getfromdomain()%>" ></td></tr>
        <tr><td>fromuser</td><td><input type="text" value="<%= vl.getfromuser()%>" ></td></tr>
        <tr><td>fullcontact</td><td><input type="text" value="<%= vl.getfullcontact()%>" ></td></tr>
        <tr><td>pickupgroup</td><td><input type="text" value="<%= vl.getpickupgroup()%>" ></td></tr>
        <tr><td>qualify</td><td><input type="text" value="<%= vl.getqualify()%>" ></td></tr>
        <tr><td>regexten</td><td><input type="text" value="<%= vl.getregexten()%>" ></td></tr>
        <tr><td>regseconds</td><td><input type="text" value="<%= vl.getregseconds()%>" ></td></tr>
        <tr><td>regserver</td><td><input type="text" value="<%= vl.getregserver()%>" ></td></tr>
        <tr><td>restrictcid</td><td><input type="text" value="<%= vl.getrestrictcid()%>" ></td></tr>
        <tr><td>rtpholdtimeout</td><td><input type="text" value="<%= vl.getrtpholdtimeout()%>" ></td></tr>
        <tr><td>rtptimeout</td><td><input type="text" value="<%= vl.getrtptimeout()%>" ></td></tr>
        <tr><td>setvar</td><td><input type="text" value="<%= vl.getsetvar()%>" ></td></tr>
        <tr><td>subsribecontext</td><td><input type="text" value="<%= vl.getsubsribecontext()%>" ></td></tr>

        <tr><td>call-limit</td><td><input type="text" value="<%= vl.getcalllimit()%>" ></td></tr>
       
        <tr><td></td><td><input type="submit" value="cancel"><input type="submit" value="ok"></td></tr>

        
        
        </table>
        
        
        <h4>Option</h4>
        
        conference
        transfert d'appel
        
        
        
        
        
        
        
        
    </body>
</html>
