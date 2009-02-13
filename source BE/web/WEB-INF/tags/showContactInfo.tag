<%-- 
    Document   : showContactInfo
    Created on : Jan 28, 2009, 6:05:18 PM
    Author     : thomas
--%>

<%@tag description="affichage des contacts" 
       pageEncoding="UTF-8"
       isELIgnored="false"
import="java.io.*"
import="javax.servlet.*"
import="javax.servlet.http.*"
import="DAO.interfaces.ContactVoipDAOInterface"
import="DAO.interfaces.CustomerDAOInterface"
import="DAO.transfertObject.*"
import="DAO.factory.DAOFactory"
import="DAO.factory.MySqlDAOFactory"
import="java.util.*"





%>

<%-- The list of normal or fragment attributes can be specified here: --%>
<%@attribute name="message"%>

<h2>Votre répertoire personnel</h2>
<% 
        DAOFactory daoFactory = DAOFactory.getDAOFactory(DAOFactory.MYSQL);
        ContactVoipDAOInterface contactVoipDAO = daoFactory.getContactVoipDAO();
        boolean sessionOK=false;
        HttpSession CustomerSession = request.getSession(false);
        
        //recupere les informations dans customer
              if (CustomerSession!=null) {
                  sessionOK=true;
                if (CustomerSession.getAttribute("Customer")!=null) {
                    sessionOK=true;
                    CustomerTO customerObject =(CustomerTO)CustomerSession.getAttribute("Customer");
                    if (customerObject.getValid()) {
                        sessionOK=true;

        try{
        int id= customerObject.getId();
        LinkedList listeContact = new LinkedList <ContactVoipTO>();
        ListIterator<ContactVoipTO> indice;
        ContactVoipTO contact;
        int i=0;

        
       listeContact = contactVoipDAO.getContactbyVoipId(id);
       indice = listeContact.listIterator();
       out.println("<table bgcolor=\"black\" width=\"50%\">");
       out.println("<tr style=\"color: white;\">");
       
       out.println("<td>Choississez votre action</td>");
       out.println("<td>Vos contacts</td>");
       out.println("</tr>");
       
       out.println("<t/able>");
       out.println("<table width=\"82%\">");
       while (indice.hasNext()){
       contact = indice.next();
       id=contact.getId();
       out.println("<tr>");

       out.println("<td>");
       //delete button
       out.println("<form method=\"post\" action=\"../supprContactInfo\">");
       out.println("<input type=\"submit\" value=\"delete\" />");
       out.println("<input type=\"hidden\" name=\"id\" value=\""+id+"\">");
       out.println("</form>");

       //edit button
       out.println("<form method=\"post\" action=\"../modContactInfo\">");
       out.println("<input type=\"submit\" value=\"edit\" />");
       out.println("<input type=\"hidden\" name=\"id\" value=\""+id+"\">");
       out.println("</form>");
       out.println("</td>");

       
       out.println("<td> "+contact.prenom+"<br>");
       out.println(contact.nom+"<br>");
       out.println(contact.titre+"<br>");
       out.println(contact.categorie+"<br>");
       out.println(contact.telephone+"<br>");
       out.println(contact.mail+"<br><br></td>");
       out.println("<tr>");
       i++;
                                } 
       out.println("</table>");
       out.println("</FORM>");
      
        } 
        catch (Exception e){
        System.err.println("<h3>Vous n'avez pas de contact</h3>");
	e.printStackTrace();		
                            }
                        }
                    }
                   }
                  
%>