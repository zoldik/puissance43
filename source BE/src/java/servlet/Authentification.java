/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package servlet;


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
                      
                        String login = request.getParameter("login");
                        String password = request.getParameter("password");
                        
                        Customer account = new Customer(login,password);
                        
                        
			//Booleen qui donne ou non la permission d'accéder à l'application
			session.setAttribute("account",account);
                        
			if (account.isAllowed()){
				//Si on a la permission, on accède à la suite
                                response.sendRedirect("/source_BE/index.jsp");
			}
			else {
				//Sinon, on revient à la page d'authentification
				response.sendRedirect("./authentification.jsp?Connexion=refused");
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
