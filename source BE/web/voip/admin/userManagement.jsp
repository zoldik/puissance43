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
import="model.voip.*"
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>VoIP admin - VoIP User Management</title>
    </head>
    
    <body>
        
        
        <%
            ListUser listUser = new ListUser();
        
            DAOFactory daoFactory = DAOFactory.getDAOFactory(DAOFactory.MYSQL);
            CustomerDAOInterface CustomerDAO = daoFactory.getCustomerDAO();
            
            //selectionne les numeros
            LinkedList<CustomerTO> customers = new LinkedList <CustomerTO>();
            ListIterator<CustomerTO> indice;
            CustomerTO vcustomer = new CustomerTO();
            
            customers = CustomerDAO.selectAllCustomersTO();
            indice = customers.listIterator();
 
            while (indice.hasNext()){
                vcustomer = indice.next();
                //regarde le levelaccount
                if( (vcustomer.getAccountLevel()==7 || vcustomer.getAccountLevel()==5 || vcustomer.getAccountLevel()==3 || vcustomer.getAccountLevel()==1 )){
                    
                    //recupere les informations dans customer                    
                    RowListUser rl = new RowListUser();
                    rl.setCustomerId(vcustomer.getId());
                    rl.setLogin(vcustomer.getLastName());
                    rl.setAccountLevel(vcustomer.getAccountLevel());
                    
                    //Retrieve line's numbers
                    LineDAOInterface LineDAO = daoFactory.getLineDAO();
                    LinkedList<LineTO> lines = new LinkedList <LineTO>();
                    ListIterator<LineTO> indice2;
                    LineTO vline = new LineTO();
                        
                    lines = LineDAO.selectAllLineTO();
                    indice2 = lines.listIterator();
                        
                    while (indice2.hasNext()){       
                       vline = indice2.next();
                       if( vline.getcustomerid() == vcustomer.getId()){
                           rl.addNumber(vline);
                       }
                    }
                    listUser.addRow(rl);
                }
            }
        %>

        
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
            <td> Lignes </td>
        </tr>
        <!-- CONTENTS -->
        
        <%
            for(int index=0;index<listUser.getSize();index++){
                RowListUser row = listUser.getRow(index);
        %>
        <!-- Creation de la liste des USERS -->
        <tr bgcolor="white">

           <!-- Bouton action -->
           
           <td> <!--edit button-->
                 <form method='post' action="./userManagement/editVoipUser.jsp">
                 <input type="submit" value="edit" />
                 <input type='hidden' name='id' value="<%=row.getCustomerId() %>">
                 <!--input type="hidden" name='action' value='edit'-->
                 </form>
                 </td>
                 
            <td> <!--delete button-->
                 <form method='post' action="./userManagement/deleteVoipUser.jsp">
                 <input type="submit" value="delete" />
                 <input type='hidden' name='id' value="<%= row.getCustomerId()  %>">
                 <input type='hidden' name='name' value="<%= row.getCustomerId()  %>">
                 </form>
                 </td>
           
            <td> <%=row.getCustomerId()  %> </td>
            <td> <%=row.getLogin() %> </td>
            <td> <%=row.getAccountLevel() %> </td>
            
            <%
            for(int i=0;i<row.getNumbers().size(); i++){
            %>
            <td> 
                <form methode="post" action="./ligneManagement/editVoipLigne.jsp">
                <input type="submit" value="<%=row.getNumber(i).getname() %>"/>
                <input type='hidden' name='id' value="<%=row.getNumber(i).getid() %>"/>
                </form>
            </td>
            
            <%}%>

        </tr>
        
        <%}%>

        </table>
        
    </body>
</html>