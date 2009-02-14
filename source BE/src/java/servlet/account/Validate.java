package servlet.account;

import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;

import DAO.factory.DAOFactory;
import DAO.interfaces.CustomerDAOInterface;
//import fr.isen.jeen5_0809.group8.identification.*;
//import fr.isen.jeen5_0809.group8.SQL.SQLUser;

/**
 *
 * @author Baudet Aurélien
 */
public class Validate extends javax.servlet.http.HttpServlet {

	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
		response.setContentType("text/html");
		try{
                                          
                        //Validation auth = new Validation(Integer.parseInt(request.getParameter("account")));
                        DAOFactory daoFactory = DAOFactory.getDAOFactory(DAOFactory.MYSQL);
                        CustomerDAOInterface customerDAO = daoFactory.getCustomerDAO();
                        customerDAO.validAccount(Integer.parseInt(request.getParameter("account")));
			response.sendRedirect("index.jsp");


		}catch (Exception e){
			System.err.println("Erreur ! ! !");
			e.printStackTrace();		
		}
	}

	public void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
		doGet(request,response);
	}
}
