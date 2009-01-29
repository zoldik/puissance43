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

<%-- any content can be specified here e.g.: --%>
<h2>Votre répertoire</h2>
<% 


        try{
        
        int id=1;
        LinkedList listeContact = new LinkedList <Contact>();
        ListIterator<Contact> indice;
        Contact contact;

        
       listeContact = SQLContactVoip.getContactbyVoipId(id);
       indice = listeContact.listIterator();
       out.println("<FORM>");
       out.println("<table border=\"1\" bordercolor=\"#FF3300\" style=\"background-color:#FFFFFF\" width=\"600\" cellpadding=\"3\" cellspacing=\"3\">");
       out.println("<tr>");
       out.println("<td><select name=\"ListeUrl\" onChange=\"ChangeUrl(this.form)\"><option value=\"\">Choisissez votre action");
       out.println("<option value=\"../supprContactInfo\">Supprimer");
       out.println("<option value=\"../modContactInfo\">Modifier");
       out.println("</td>");

       out.println("<td>Vos contacts</td>");
       out.println("<tr>");


       while (indice.hasNext()){
       contact = indice.next();
       out.println("<tr>");
       out.println("<td align=\"center\"><input type=\"checkbox\" name=\"choix\" onClick=\"RecupId(this.form,");
       out.println(contact.id);
       out.println(")\"value=\"");
       out.println(contact.id);
       out.println("\"/></td>");
       out.println("<td>&nbsp; prénom : "+contact.prenom+"<br>");
       out.println("&nbsp; nom : "+contact.nom+"<br>");
       out.println("titre : "+contact.titre+"<br>");
       out.println("categorie : "+contact.categorie+"<br>");
       out.println("telephone : "+contact.telephone+"<br>");
       out.println("email : "+contact.mail+"<br><br></td>");
       out.println("<tr>");
                                } 
       out.println("</table>");
      // out.println("<input type=\"submit\" value=\"Valider votre action\">");
       out.println("</FORM>");
      // out.println("<FORM Method=\"POST\" Action=\"voip/annuaire.jsp\">");
      // out.println("<input type=\"submit\" value=\"Retour à l'annuaire\">");
      // out.println("</FORM>");

        } 
        catch (Exception e){
        System.err.println("<h3>Vous n'avez pas de contact</h3>");
	e.printStackTrace();		
                            }


%>