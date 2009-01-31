/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package servlet.customer.account;


import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;
import model.account.*;


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
                        
                        Customer account = new Customer();
                        
                        if (login!="" && password!="") {
                            account = new Customer(login,password);
                        }

			if (account.isAllowed()){
                                session.setAttribute("Customer",account);
				//Si on a la permission, on accède à la suite
                                response.sendRedirect("./index.jsp");
			}
			else {
				//Sinon, on revient à la page d'authentification
				response.sendRedirect("./index.jsp?Connexion=refused");
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
