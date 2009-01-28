<%-- 
    Document   : userManagement
    Created on : 28 janv. 2009, 11:33:09
    Author     : francois
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>VoIP admin - VoIP User Management</title>
    </head>
    
    <body>
        <h2>VoIP admin - VoIP User Management</h2>
        
        <p>
        <i>In this section you can manage VoIP User. 
        You can view, edit, delete, and add users.</i>
        </p>


        
        <!-- Table of a list of users -->   
        <h4>List of VoIP User </h4>
        <table bgcolor="black">

        <!-- Actions -->
        <input type="button" value="DELETE"/>
         <a href="./addVoipLigne.jsp">Add</a>
            
        <!-- titles -->
        <tr style="color:white">
            <td> </td>
            <td> Id </td>
            <td> login </td>
            <td> activated </td>
            <td> Mailbox </td>
            <td> Context </td>
            <td> Type </td>
            <td> Host </td>
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
        %>
        
        <tr bgcolor="white">
            <td> <input type="checkbox" name="<%=vl.getid() %>"/> </td>            
           
            <td> <%=vl.getid() %> </td>
            <td> <%=vl.getname() %> </td>
            <td> <%=vl.getusername() %> </td>
            <td> <%=vl.getmailbox() %> </td>
            <td> <%=vl.getcontext() %> </td>
            <td> <%=vl.gettype() %> </td>
            <td> <%=vl.gethost() %> </td>
            
            <td> <!--edit button-->
                 <form method='post' action="./ligneManagement/editVoipLigne.jsp">
                 <input type="submit" value="edit" />
                 <input type='hidden' name='id' value="<%=vl.getid() %>">
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