package servlet.customer.account;

import java.io.*;
import java.net.*;
import java.util.*;
import javax.servlet.*;
import javax.servlet.http.*;
import DAO.mySql.MailDAO;


/**
 *
 * @author Baudet Aurélien
 */
public class CreateMailAddress extends javax.servlet.http.HttpServlet {

	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
		response.setContentType("text/html");
		try{
			//On crée la session
			//HttpSession session = request.getSession(true);
                        MailDAO.insert(request.getParameter("mailAddress"), request.getParameter("password"));
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
