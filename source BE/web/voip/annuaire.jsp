<%-- 
    Document   : annuaire
    Created on : 28 janv. 2009, 17:45:27
    Author     : francois
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"
import="DAO.interfaces.LineDAOInterface"
import="DAO.interfaces.CustomerDAOInterface"
import="DAO.transfertObject.LineTO"
import="DAO.transfertObject.CustomerTO"
import="java.util.*"

import="DAO.factory.DAOFactory"
import="DAO.factory.MySqlDAOFactory"
import="DAO.transfertObject.CustomerTO"

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
            <td> Societe </td>
            <td> Numero </td>
            <td> Groupe</td>
            <td> Mail </td>
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
                if( vl.getvisible() == true){
                    
                    //recupere les informations dans customer
                    CustomerDAOInterface customerDAO = daoFactory.getCustomerDAO();
                    CustomerTO vc = new CustomerTO() ;
                    vc = customerDAO.findCustomerById(vl.getcustomerid());

                    
                    
                    
        %>
        
        <tr bgcolor="white">
            <td> <%=vc.getLastName() %></td>
            <td> <%=vc.getFirstName() %></td>
            <td> <%=vc.getCompany() %></td>
            <td> <%=vl.getname() %> </td>
            <td> <%=vl.getcontext() %> </td>
            <td> <%=vl.getmailbox()%> </td>
        </tr>
        <%     }
        }%>
        
        </table>
        
    </body>
</html>
