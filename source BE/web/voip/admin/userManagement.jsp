<%-- 
    Document   : userManagement
    Created on : 28 janv. 2009, 11:33:09
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
%>
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
        
        <form method="post" action="./userManagement/addVoipUser.jsp">
            <input type="submit" value="+"/> Nouvel utilisateur
            <input type="hidden" value="id customer"/>
        </form>
         <br/>
        
        
        <table bgcolor="black">

            
        <!-- TITLES -->
        
        <tr style="color:white">

            <td> </td>
            <td> </td>
            <td> Id </td>
            <td> login </td>
            <td> Account Level</td>
            <td> activated </td>
            
            <td> Lignes </td>
        </tr>
        
        <!-- CONTENTS -->
        
        

        
        <!-- Creation de la liste des USERS -->
        <%
            DAOFactory daoFactory = DAOFactory.getDAOFactory(DAOFactory.MYSQL);
            
            CustomerDAOInterface customerDAO = daoFactory.getCustomerDAO();
            LinkedList<CustomerTO> customers = new LinkedList<CustomerTO>();
            ListIterator<CustomerTO> indice;
            CustomerTO vc = new CustomerTO();
            
            customers = customerDAO.selectAllCustomersTO();
            indice = customers.listIterator();
            
            while (indice.hasNext()){
                vc = indice.next();
                if( vc.getValid() == true ) {
        %>
        

        <tr bgcolor="white">

           <!-- Bouton action -->
           
           <td> <!--edit button-->
                 <form method='post' action="./userManagement/editVoipUser.jsp">
                 <input type="submit" value="edit" />
                 <input type='hidden' name='id' value="<%=vc.getId() %>">
                 <!--input type="hidden" name='action' value='edit'-->
                 </form>
                 </td>
                 
            <td> <!--delete button-->
                 <form method='post' action="./userManagement/deleteVoipUser.jsp">
                 <input type="submit" value="delete" />
                 <input type='hidden' name='id' value="<%= vc.getId() %>">
                 <input type='hidden' name='name' value="<%= vc.getId() %>">
                 </form>
                 </td>
           
            <td> <%= vc.getId() %> </td>
            <td> <%=vc.getLogin() %> </td>
            <td> <%=vc.getAccountLevel() %> </td>
            <td> <%=vc.getValid() %> </td>
            
            
            <!--Creation d'une liste de lignes d'un user-->
            
            <%--LinkedList<lignes> listlignes = new LinkedList <lignes>();
            ListIterator<VoipUser> indice;
            VoipUser vu = new VoipUser();
            
            voipUsers = VoipUserDAO.extractAllVoipUser();
            indice = voipUsers.listIterator();
            
            while (indice.hasNext()){
                vu = indice.next();--%>
            <td></td>
            
             <%-- } --%>

        </tr>
        
        <%}}%>

        </table>
        
    </body>
</html>