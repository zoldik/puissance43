/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package model.account;

/**
 *
 * @author Baudet Aurélien
 */
import java.security.Security;

import javax.mail.*;
import javax.mail.internet.*;
import java.util.Properties;

//import javax.naming.Context;
//import javax.naming.InitialContext;

/** Classe Mail
 * contient subject,content,address
 */
public class Mail {
    public String subject;
    public String content;
    public String address;
    
     /**Constructor
     * 
     */
    public Mail()
    {
        this.subject="";
        this.content="";
        this.address="";
    }
    
     /**Envoi de mail via serveur SMTP sécurisé
      * @throws java.lang.Exception
      */
    public void sendMail() throws Exception 
	{	
                String mailhost = "smtp.gmail.com";
                String sender="group8.projectrss@gmail.com";
		Security.addProvider(new com.sun.net.ssl.internal.ssl.Provider());
		Properties props = new Properties();
		props.setProperty("mail.transport.protocol", "smtp");
		props.setProperty("mail.host", mailhost);
		props.put("mail.smtp.auth", "true");
		props.put("mail.smtp.port", "465");
		props.put("mail.smtp.socketFactory.port", "465");
		props.put("mail.smtp.socketFactory.class",
		"javax.net.ssl.SSLSocketFactory");
		props.put("mail.smtp.socketFactory.fallback", "false");
		props.setProperty("mail.smtp.quitwait", "false");
 
		Session session = Session.getInstance(props,
				new javax.mail.Authenticator() 
		{
			protected PasswordAuthentication getPasswordAuthentication()
			{ return new PasswordAuthentication("group8.projectrss@gmail.com","==ProjectRSS");	}
		});		
 
		MimeMessage message = new MimeMessage(session);
		message.setSender(new InternetAddress(sender));
		message.setSubject(this.subject);
		message.setContent(this.content, "text/plain");
		if (this.address.indexOf(',') > 0) 
					message.setRecipients(Message.RecipientType.TO, InternetAddress.parse(this.address));
		else
					message.setRecipient(Message.RecipientType.TO, new InternetAddress(this.address));
 
		Transport.send(message);
		
	}

    /**Envoi de mail via serveur SMTP non sécurisé ou local
    * @throws java.lang.Exception
    */
    /*public void sendMail() throws Exception{
      Properties props = new Properties();
      props.setProperty("mail.transport.protocol", "smtp");
      props.setProperty("mail.host", "195.83.8.35");
      props.setProperty("mail.user", "");
      props.setProperty("mail.password", "");

      Session mailSession = Session.getDefaultInstance(props, null);
      Transport transport = mailSession.getTransport();

      MimeMessage message = new MimeMessage(mailSession);
      message.setSubject(this.subject);
      message.setContent(this.content, "text/plain");
      message.addRecipient(Message.RecipientType.TO,
           new InternetAddress(this.address));

      transport.connect();
      transport.sendMessage(message,
          message.getRecipients(Message.RecipientType.TO));
      transport.close();
    }*/
    
    
    public static void main(String[] args) throws Exception{
        /*Mail test=new Mail();
        test.subject="test";
        test.content="blablablabla";
        test.address="aurelien.baudet@isen.fr";
        test.sendMail();*/
        Mail mailutils = new Mail();
        mailutils.address="baudetaurelien@gmail.com";
        mailutils.content="blab nba bla";
        mailutils.subject="TEST";
	mailutils.sendMail();
    }
}
 
