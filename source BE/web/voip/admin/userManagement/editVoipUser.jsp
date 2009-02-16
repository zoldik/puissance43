<%-- 
    Document   : editVoipUser
    Created on : 1 févr. 2009, 16:16:01
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
        <title>VoIP Admin - Edit User </title>
    </head>
    <body>
        
        <% String id = request.getParameter("id");
        
        DAOFactory daoFactory = DAOFactory.getDAOFactory(DAOFactory.MYSQL);
        CustomerDAOInterface customerDAO = daoFactory.getCustomerDAO();
        
        CustomerTO customer = new CustomerTO();
        customer = customerDAO.findCustomerById( Integer.parseInt(id) );  
        %>
        
        
        <h2>VoIP Admin - Edit User <%= customer.getLogin() %></h2>
        <br/>
        
        <!-- GENERAL Information -->
        
        <h3>Informations générales sur l'utilisateur</h3>
        


        Login : <%= customer.getLogin() %> <br/>
        
        Nom : <%= customer.getLastName() %> <br/>
        
        Prenom : <%= customer.getFirstName() %> <br/>
        
        Societe : <%= customer.getCompany() %> <br/>
        
        <br/>
        
        Niveau d'administration : <%= customer.getAccountLevel() %> <br/>
        
        Souscription a un abonnement VoIP : <%= customer.getIdVoipSubscribe() %> <br/>
        
        Activation de l'abonnement VoIP: <%= customer.getStateVoipSubscribe() %><br/>
        
        
        <!-- LINES Information-->
        
        <h3>Informations sur les lignes</h3>
        
        <form method="post" action="../ligneManagement/addVoipLigne.jsp">
             <input type="submit" value="+"> Ouvrir une nouvelle ligne
            <input type="hidden" value="<%= id %>" name="customerid">
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
            LineDAOInterface LineDAO = daoFactory.getLineDAO();
            
            //selectionne les numeros
            LinkedList<LineTO> lines = new LinkedList <LineTO>();
            ListIterator<LineTO> indice;
            LineTO vl = new LineTO();
            lines = LineDAO.findLineByAttribute("id_customer", id);
            indice = lines.listIterator();
 
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
                 <form method='post' action="../ligneManagement/editVoipLigne.jsp">
                 <input type="submit" value="edit" />
                 <input type='hidden' name='id' value="<%=vl.getid() %>"/>
                 <!--input type="hidden" name='action' value='edit'-->
                 </form>
                 </td>
            <td> <!--delete button-->
                 <form method='post' action="../ligneManagement/deleteVoipLigne.jsp">
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
