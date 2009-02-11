<%-- 
    Document   : annuaire
    Created on : 28 janv. 2009, 17:45:27
    Author     : francois
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"
import="model.voip.Annuaire"
import="model.voip.RowAnnuaire"
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
    
    <%
            //Creation de l'Annuaire
            Annuaire annuaire = new Annuaire();
        
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
                    
                    RowAnnuaire ra = new RowAnnuaire();
                    ra.setFirstName(vc.getFirstName());
                    ra.setLastName(vc.getLastName());
                    ra.setCompany(vc.getCompany());
                    ra.setNumber(vl.getname());
                    ra.setMail(vl.getmailbox());
                    ra.setGroupe(vl.getcontext());

                    annuaire.addRow(ra);
                }
            }
    %>

        <h2>Annuaire</h2>
        
        <p>
        <i>Vous pouvez consultez la liste des lignes VoIP disponibles sur le serveur RedNeck. </i>
        </p>
        
        
        <!--Tool Research --> 
        <p>
        <form action="post">
            <input type="text" value="" name="value"/>
            <select name="type" >
                    <option value="type">--type--</option>
                    <option value="nom">nom</option>
                    <option value="prenom">prenom</option>
                    <option value="societe">societe</option>
                    <option value="numero">numero</option>
                    <option value="groupe">groupe</option>
                    <option value="mail">mail</option>
            </select>
            <input type="submit" value="Rechercher"/>
        </form>
        </p>
        
        
        <!-- Table of a list of users -->
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
            for(int index=0;index<annuaire.getSize();index++){
                RowAnnuaire row = annuaire.getRow(index);
        %>
        
        <tr bgcolor="white">
            <td> <%=row.getLastName() %></td>
            <td> <%=row.getFirstName() %></td>
            <td> <%=row.getCompany() %></td>
            <td> <%=row.getNumber() %> </td>
            <td> <%=row.getGroupe() %> </td>
            <td> <%=row.getMail() %> </td>
        </tr>
        
        <%}%>

        </table>


    </body>
</html>
