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
import="model.voip.*"
import="model.database.*"
import="java.util.*"





%>

<%-- The list of normal or fragment attributes can be specified here: --%>
<%@attribute name="message"%>

<h2>Votre répertoire personnel</h2>
<% 


        try{
        int id=1;
        LinkedList listeContact = new LinkedList <Contact>();
        ListIterator<Contact> indice;
        Contact contact;
        int i=0;

        
       listeContact = SQLContactVoip.getContactbyVoipId(id);
       indice = listeContact.listIterator();
       out.println("<table width=\"60%\">");
       out.println("<tr>");
       
       out.println("<td>Choississez votre action</td>");
       out.println("<td>Vos contacts</td>");
       out.println("</tr>");


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


%>