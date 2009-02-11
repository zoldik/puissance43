<%-- 
    Document   : editVoipUser
    Created on : 1 févr. 2009, 16:16:01
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
        <title>VoIP Admin - Edit User</title>
    </head>
    <body>
        
        <h2>VoIP Admin - Edit User</h2>
        <br/>
        
        <!-- GENERAL Information -->
        
        <h3>Informations générales sur l'utilisateur</h3>
        
        <% String id = request.getParameter("id");
        VoipUser vu = VoipUserDAO.extractVoipUserbyId(id);
        %>

        Login : <%= vu.getlogin() %> <br/>
        
        Niveau  : <%= vu.getaccountlevel() %> <br/>
        
        Activation : <%= vu.getisactivated() %> <br/>
        
        
        <!-- LINES Information-->
        
        <h3>Informations sur les lignes</h3>
        
        <form method="post" action="../ligneManagement/addVoipLigne.jsp">
             <input type="submit" value="+"> Ouvrir une nouvelle ligne
            <input type="hidden" value="<%= id %>">
        </form>
         <br/>
         
         
        <table bgcolor="black" >
        <!-- titles -->
        <tr style="color:white">
            <td> Id </td>
            <td> Name </td>
            <td> Username </td>
            <td> Mailbox </td>
            <td> Context </td>
            <td> Type </td>
            <td> Host </td>
            <td> Visible</td>
        </tr>

        <%
            LinkedList<VoipLigne> voipLignes = new LinkedList <VoipLigne>();
            ListIterator<VoipLigne> indice;
            VoipLigne vl = new VoipLigne();
            
            voipLignes = VoipLigneDAO.extractAllVoipLigne();
            indice = voipLignes.listIterator();
            
            while (indice.hasNext()){
                vl = indice.next();
        %>
                
        <tr bgcolor="white">
           
            <td> <%=vl.getid() %> </td>
            <td> <%=vl.getname() %> </td>
            <td> <%=vl.getusername() %> </td>
            <td> <%=vl.getmailbox() %> </td>
            <td> <%=vl.getcontext() %> </td>
            <td> <%=vl.gettype() %> </td>
            <td> <%=vl.gethost() %> </td>
            <td> <%=vl.getvisible() %> </td>
            
            <td> <!--edit button-->
                 <form method='post' action="./ligneManagement/editVoipLigne.jsp">
                 <input type="submit" value="edit" />
                 <input type='hidden' name='id' value="<%=vl.getid() %>"/>
                 <!--input type="hidden" name='action' value='edit'-->
                 </form>
                 </td>
            <td> <!--delete button-->
                 <form method='post' action="./ligneManagement/deleteVoipLigne.jsp">
                 <input type="submit" value="delete" />
                 <input type='hidden' name='id' value="<%=vl.getid() %>">
                 <input type='hidden' name='name' value="<%=vl.getname() %>">
                 </form>
                 </td>
        </tr>
        
        <%}%>
        
        </table>
        
    </body>
</html>
