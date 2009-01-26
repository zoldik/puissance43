<%-- 
    Document   : userManagement
    Created on : 25 janv. 2009, 20:17:35
    Author     : francois
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"
import = "model.database.*"
import = "java.sql.*"
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>VoIP admin - VoIP ligne Management</title>
    </head>
    
    <body>
        <h2>VoIP admin - VoIP ligne Management</h2>
        
        <p>
        <i>In this section you can manage VoIP ligne. 
        You can view, edit, delete, and add users.</i>
        </p>


        
        <!-- Table of a list of users -->   
        <h4>List of VoIP ligne </h4>
        <table bgcolor="black">

        <!-- Actions -->    
        <input type="button" value="DELETE"/>
        <input type="button" value="ADD"/>
            
        <!-- titles -->
        <tr style="color:white">
            <td> </td>
            <td> </td>
            <td> Id </td>
            <td> Name </td>
            <td> Username </td>
            <td> Mailbox </td>
            <td> Context </td>
            <td> Type </td>
            <td> Host </td>
        </tr>
        
        <!-- Contents -->
        <% ResultSet rs = null;
           
        rs = SQLVoipLigne.getLignes();
        while (rs.next()) {
        %>
        <tr bgcolor="white">
            <td> <input type="checkbox" name="<%=rs.getString("VOIP_LIGNE_ID")%>"/> </td>
            <td> <input type="button" value="EDIT" /></td>
            <td> <%=rs.getString("VOIP_LIGNE_ID")%> </td>
            <td> <%=rs.getString("name")%> </td>
            <td> <%=rs.getString("username")%> </td>
            <td> <%=rs.getString("mailbox")%> </td>
            <td> <%=rs.getString("context")%> </td>
            <td> <%=rs.getString("type")%> </td>
            <td> <%=rs.getString("host")%> </td>
        </tr>
        <%}
        try {rs.close();} catch (Exception e3) {System.out.println("Erreur fermeture"+e3);}%>
        
        </table>
        
    </body>
</html>
