package servlet.customer.account;

import DAO.factory.DAOFactory;
import DAO.interfaces.MailDAOInterface;
import java.io.*;
import java.net.*;
import java.util.*;
import javax.servlet.*;
import javax.servlet.http.*;
import DAO.mySql.MailMySqlDAO;

import model.account.Mail;
import model.account.RegisterAddressErrors;
import model.account.RegisterCustomerErrors;

import java.util.logging.Level;
import java.util.logging.Logger;


/**
 *
 * @author Baudet Aurélien
 */
public class CreateMailAddress extends javax.servlet.http.HttpServlet {

	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
		response.setContentType("text/html");
		try{
                        DAOFactory daoFactory = DAOFactory.getDAOFactory(DAOFactory.MYSQL);
                        
                        MailDAOInterface mailDAO = daoFactory.getMailDAO();
                    
                        mailDAO.insert(request.getParameter("mailAddress"), request.getParameter("password"));
                        
                        Mail mail = new Mail();
                        mail.setSubject("Bienvenu sur la messagerie RedNeck");
                        mail.setContent("Voici un récapitulatif de vos identifiants :\nAdresse mail : " +request.getParameter("mailAddress") +
                                        "\nMot de passe : " + request.getParameter("password"));

                        mail.setAddress(request.getParameter("mailAddress"));
                        try {
                            mail.sendMail();
                        } catch (Exception ex) {System.out.print(ex);}
                        
                        
                        response.sendRedirect("CreateMailAddress.jsp");
                   }
                catch (Exception e){
			System.err.println("Erreur ! ! !");
			e.printStackTrace();		
		}
	}

	public void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
		doGet(request,response);
	}
}
