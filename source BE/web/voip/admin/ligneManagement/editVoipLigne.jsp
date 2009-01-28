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
            
        <tr><td><h5>Title</h5></td></tr>
        <tr><td>id</td><td><input type="text" value="<%= vl.getid()%>" ></td></tr>
        <tr><td>name</td><td><input type="text" value="<%= vl.getname() %>" ></td></tr>
        <tr><td>username</td><td><input type="text" value="<%= vl.getusername() %>" ></td></tr>
        <tr><td>mailbox</td><td><input type="text" value="<%= vl.getmailbox()%>" ></td></tr>
        <tr><td>musiconhold</td><td><input type="text" value="<%= vl.getmusiconhold() %>" ></td></tr>
        <tr><td>language</td><td><input type="text" value="<%= vl.getlanguage()%>" ></td></tr>
        <tr><td>accountcode</td><td><input type="text" value="<%= vl.getaccountcode()%>" ></td></tr>
        
        <tr><td>secret</td><td><input type="text" value="<%= vl.getsecret()%>" ></td></tr>
        <tr><td>md5secret</td><td><input type="text" value="<%= vl.getmd5secret()%>" ></td></tr>        
        
        
        <tr><td><h5>Title</h5></td></tr>
        <tr><td>type</td><td><input type="text" value="<%= vl.gettype()%>" ></td></tr>
        <tr><td>context</td><td><input type="text" value="<%= vl.getcontext()%>" ></td></tr>
        <tr><td>call-limit</td><td><input type="text" value="<%= vl.getcalllimit()%>" ></td></tr>
        <tr><td>nat</td><td><input type="text" value="<%= vl.getcanreinvite()%>" ></td></tr>
        
        
        <tr><td><h5>Title</h5></td></tr>        
        <tr><td>deny</td><td><input type="text" value="<%= vl.getdeny()%>" ></td></tr>
        <tr><td>permit</td><td><input type="text" value="<%= vl.getpermit()%>" ></td></tr>
        <tr><td>dtmfmode</td><td><input type="text" value="<%= vl.getdtmfmode()%>" ></td></tr>
        <tr><td>host</td><td><input type="text" value="<%= vl.gethost()%>" ></td></tr>
        <tr><td>mask</td><td><input type="text" value="<%= vl.getmask()%>" ></td></tr>
        <tr><td>port</td><td><input type="text" value="<%= vl.getport()%>" ></td></tr>
        <tr><td>nat</td><td><input type="text" value="<%= vl.getnat()%>" ></td></tr>
        <tr><td>getipaddr</td><td><input type="text" value="<%= vl.getipaddr()%>" ></td></tr>
        <tr><td>insecure</td><td><input type="text" value="<%= vl.getinsecure()%>" ></td></tr>        
        <tr><td>defaultip</td><td><input type="text" value="<%= vl.getdefaultip()%>" ></td></tr>        
        
        
        <tr><td><h5>Title</h5></td></tr>
        <tr><td>allow</td><td><input type="text" value="<%= vl.getallow()%>" ></td></tr>
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
        <tr><td>type</td><td><input type="text" value="<%= vl.gettype()%>" ></td></tr>
       
        <tr><td></td><td><input type="submit" value="cancel"><input type="submit" value="ok"></td></tr>
        
        
        </table>
        
        
        <h4>Option</h4>
        
    </body>
</html>
