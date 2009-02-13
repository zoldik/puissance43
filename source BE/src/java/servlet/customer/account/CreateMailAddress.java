package servlet.customer.account;

import DAO.factory.DAOFactory;
import DAO.interfaces.MailDAOInterface;
import java.io.*;
import java.net.*;
import java.util.*;
import javax.servlet.*;
import javax.servlet.http.*;
import DAO.mySql.MailMySqlDAO;


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
