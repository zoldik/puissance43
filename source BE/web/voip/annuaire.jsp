<%-- 
    Document   : annuaire
    Created on : 28 janv. 2009, 17:45:27
    Author     : francois
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"
import="model.database.*"
import="model.voip.*"
import="java.util.*"
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
"http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Annuaire</title>
    </head>
    <body>

        <h2>Annuaire</h2>
        
        <p>
        <i>Vous pouvez consultez la liste des lignes VoIP disponibles sur le serveur RedNeck. </i>
        </p>
        
        <!-- Table of a list of users -->   
        <h4>annuaire</h4>
        <table bgcolor="black" width="100%">

        <!-- titles -->
        <tr style="color:white">
            <td> nom </td>
            <td> prenom </td>
            <td> Numero </td>
            <td> Groupe</td>
            <td> Mail </td>
        </tr>
        
        
        
        <!-- Contents -->
        <%
            LinkedList<VoipLigne> voipLignes = new LinkedList <VoipLigne>();
            ListIterator<VoipLigne> indice;
            VoipLigne vl = new VoipLigne();
            
            voipLignes = VoipLigneDAO.extractAllVoipLigne();
            indice = voipLignes.listIterator();
            
            while (indice.hasNext()){
                vl = indice.next();
                if( vl.getvisible() == true){
        %>
        
        <tr bgcolor="white">
            <td> </td>
            <td> </td>
            <td> <%=vl.getname() %> </td>
            <td> <%=vl.getcontext() %> </td>
            <td> <%=vl.getmailbox() %> </td>
            

        </tr>
        <%     }
        }%>

        </table>
        
    </body>
</html>
