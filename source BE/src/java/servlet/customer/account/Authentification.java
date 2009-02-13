/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package servlet.customer.account;


import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;
import DAO.factory.*;
import DAO.interfaces.*;
import DAO.transfertObject.*;


/**
 *
 * @author isen
 */
public class Authentification extends javax.servlet.http.HttpServlet {

	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
		response.setContentType("text/html");
		try{
			//On crée la session
			HttpSession session = request.getSession(true);
                      
                        String login = request.getParameter("username");
                        String password = request.getParameter("password");
                        
                        CustomerTO customer = new CustomerTO();
                        
                        DAOFactory daoFactory = DAOFactory.getDAOFactory(DAOFactory.MYSQL);

                        CustomerDAOInterface customerDAO = daoFactory.getCustomerDAO();
                            
                        if (login!="" && password!="") {
                            customer = customerDAO.findCustomer(login,password);
                        }

			if (customer.getId()!=0){
                                int level = customer.getAccountLevel();
                                if  (level>=0 && level<9){
                                    if (customer.getValid()) {
                                        session.setAttribute("Customer",customer);

                                        // J BEVE 13 Feb 2009 Utile pour VOD CustomerID (nous n avons pas d objet CustomerTO)
                                        // NE PAS SUPPRIMER
                                        session.setAttribute("CustomerID",customer.getId());
                                        //Si on a la permission, on accède à la suite
                                        response.sendRedirect("./index.jsp?Connexion=1");
                                    } else {
                                        response.sendRedirect("./index.jsp?Connexion=3");
                                    }
                                }
			} else {
				//Sinon, on revient à la page d'authentification
				response.sendRedirect("./index.jsp?Connexion=2");
			}
		}catch (Exception e){
			System.err.println("Erreur à l'authentification !");
			e.printStackTrace();		
		}
	}

	public void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
		doGet(request,response);
	}
}
