package servlet.account;

import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;

import model.account.Customer;
import model.account.Mail;
import model.account.Register;
import model.account.RegisterErrors;
import model.database.CustomerDAO;
import model.database.FactoryDAO;

/**
 *
 * @author Baudet Aurélien
 */
public class CtrAccount extends javax.servlet.http.HttpServlet {

	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
		response.setContentType("text/html");
		try{
			HttpSession session = request.getSession();
                        
                        Customer newCustomer=new Customer(request.getParameter("nom")
                                                            ,request.getParameter("prenom")
                                                            ,request.getParameter("login")
                                                            ,request.getParameter("mdp")
                                                            ,request.getParameter("mail")
                                                            ,request.getParameter("sexe")
                                                            ,request.getParameter("naissance")
                                                            ,request.getParameter("fixe")
                                                            ,request.getParameter("gsm")
                                                            ,request.getParameter("protect")
                                                            ,request.getParameter("key1")
                                                            ,request.getParameter("key2"));
                        
                        CustomerDAO customerDAO = FactoryDAO.getCustomerDAO(); 
                        //check not used login
                        if(customerDAO.isUsed(newCustomer.getLogin())==true)
                        {
                            session.setAttribute("Creation","used");
                            response.sendRedirect("CreateCustomerAccount.jsp");
                        }
                        else
                            {
                            //On vérifie qu'il n'y a pas d'erreur dans le formulaire
                            RegisterErrors registerErrors=new RegisterErrors();
                            registerErrors.checkInfos(newCustomer);
                            if (registerErrors.isError()!=0)
                            {
                                 session.setAttribute("Creation","fail");
                                 session.setAttribute("error",registerErrors);
                                 response.sendRedirect("CreateCustomerAccount.jsp");
                            }
                            else
                            {
                            //Create the account in the DB 
                            Register register =  new Register(newCustomer);

                            //Booleen qui donne ou non la permission d'accéder à l'application
                            session.setAttribute("used",register.getUsed());

                            Object allowed=session.getAttribute("used");
                            String used=allowed.toString();

                            //Object failed=session.getAttribute("user_id");
                            //String fail=failed.toString();

                                if (used!="true") 
                                {
                                    session.setAttribute("user_id",register.getID(request.getParameter("login"),request.getParameter("mdp")));
                                    String id  = session.getAttribute("user_id").toString();
                                    //On vérifie l'absence d'erreur lors de la requête sql. Si présence => on renvoit à CreateUser avec le param Creation à fail
                                    if (id.compareTo("0")!=0)
                                        {
                                        //Sinon, l'utilisateur est créé, on passe à la validation du compte
                                        Mail userMail=new Mail();
                                        userMail.subject="Bienvenu sur ProjectRSS";
                                        userMail.content="Voici un récapitulatif de vos identifiants :\nLogin : "+register.getLogin()+
                                                            "\nMot de passe : "+register.getMdp()+
                                                            "\nPour valider votre compte, veuillez vous rendre à la page suivante :\n http://localhost:8080/ProjetRSS/Validation.jsp?Creation=inProgress&compte="+
                                                            register.getId();
                                        //userMail.content="test";
                                        userMail.address=register.getMail();
                                        System.out.println(register.getMail());
                                        userMail.sendMail();
                                        //response.sendRedirect("Validation.jsp?Creation=inProgress");
                                        session.setAttribute("Creation","true");
                                        response.sendRedirect("CreateUser.jsp");
                                        }
                                }
                            }
                        }
		}catch (Exception e){
			System.err.println("Erreur ! ! !");
			e.printStackTrace();		
		}
	}

	public void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
		doGet(request,response);
	}
}
