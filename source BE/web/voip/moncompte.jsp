<%-- 
    Document   : moncompte
    Created on : 15 janv. 2009, 14:06:07
    Author     : francois
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"
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
        <title>Mon Compte</title>
    </head>
    <body>
        
        <% boolean sessionOK=false;
        HttpSession CustomerSession = request.getSession(false);
        
        //recupere les informations dans customer
              if (CustomerSession!=null) {
                  sessionOK=true;
                if (CustomerSession.getAttribute("Customer")!=null) {
                    sessionOK=true;
                    CustomerTO customerObject =(CustomerTO)CustomerSession.getAttribute("Customer");
                    if (customerObject.getValid()) {
                        sessionOK=true;
                    
        %>
        
        <h2>Mon Compte</h2>
        
        <h3>Liste de mes lignes VoIP</h3>

        
        <%
            DAOFactory daoFactory = DAOFactory.getDAOFactory(DAOFactory.MYSQL);
            LineDAOInterface LineDAO = daoFactory.getLineDAO();
            
            
            //selectionne les numeros
            LinkedList<LineTO> lines = new LinkedList <LineTO>();
            ListIterator<LineTO> indice;
            LineTO vl = new LineTO();
            lines = LineDAO.findLineByAttribute("id_customer", Integer.toString(customerObject.getId() ));
            indice = lines.listIterator();
 
            while (indice.hasNext()){
                vl = indice.next();
        %>
        
        
        <h4>Ligne <%= vl.getname() %> :</h4>
        
        <table>
        <tr>    
        <td>mot de passe </td>
        <td><input type="text" name="secret" value="<%= vl.getsecret() %>"/></td>
        </tr>
        <tr>
        <td>Visibilité dans l'annuaire </td>
        <td><select name="visible" >
                        <option value="<% if (vl.getvisible()==false){out.print("0");}else{out.print("1");} %>"><% if (vl.getvisible()==false){out.print("--Non visible--");}else{out.print("--Visible--");} %></option>
                        <option value="1">Visible</option>
                        <option value="0">Non visible</option>
            </select> </td>
         </tr>
         <tr>       
         <td>Langue</td>
         <td><select name="language" >
                        <option value="<%= vl.getlanguage()%>">
                           <% if (vl.getlanguage().compareTo("en")==0) {out.print("--Anglais--");
                           }else if(vl.getlanguage().compareTo("fr")==0){out.print("--Francais--");
                          }else {out.print(vl.getlanguage());}
                          %>
                        </option>
                        <option value="en">Anglais</option>
                        <option value="fr">Francais</option>
              </select></td>
         </tr> 
         <tr>
         <td>Presentation de lors d'un appel </td>
         <td><input type="text" name='callerid' value='<%= vl.getcallerid() %>' /></td>
         </tr>
         <tr>
         <td>Musique d'attente </td>
         <td><input type="text" name="musiconhold" value="<%= vl.getmusiconhold() %>" ></td>
         </tr>
        </table>


        <%}}}}%>
       
        
        <br/>
        <br/>
        <br/>
        
        <a href="./historique.jsp">Consulter l'historique de mes appels</a><br/>        
        <a href="./repertoire.jsp">Consulter mon répertoire</a><br/>
        <a href="./rss.jsp">Flux RSS</a><br/>
        
    </body>
</html>
