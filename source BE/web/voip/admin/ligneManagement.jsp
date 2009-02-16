<%-- 
    Document   : userManagement
    Created on : 25 janv. 2009, 20:17:35
    Author     : francois
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"
import="model.voip.Annuaire"
import="model.voip.RowAnnuaire"

import="model.voip.Annuaire"
import="model.voip.RowAnnuaire"
import="DAO.interfaces.LineDAOInterface"
import="DAO.interfaces.CustomerDAOInterface"
import="DAO.transfertObject.LineTO"
import="DAO.transfertObject.CustomerTO"
import="DAO.factory.DAOFactory"
import="DAO.factory.MySqlDAOFactory"
import="DAO.transfertObject.CustomerTO"

import="java.util.*"

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
        You can view, edit, delete, and add lignes.</i>
        </p>


        
        <!-- Table of a list of lignes -->   
        <h4>List of VoIP ligne </h4>
        <table bgcolor="black">

        <!-- Actions -->

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
        
        
        
        <!-- Contents -->
        <%
            DAOFactory daoFactory = DAOFactory.getDAOFactory(DAOFactory.MYSQL);
            LineDAOInterface LineDAO = daoFactory.getLineDAO();
            
            //selectionne les numeros
            LinkedList<LineTO> lines1 = new LinkedList <LineTO>();
            ListIterator<LineTO> indice;
            LineTO vl = new LineTO();
            lines1 = LineDAO.selectAllLineTO();
            indice = lines1.listIterator();
 
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
