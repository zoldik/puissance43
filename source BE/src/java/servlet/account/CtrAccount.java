package servlet.account;

import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;

import DAO.factory.DAOFactory;
import DAO.factory.MySqlDAOFactory;
import DAO.interfaces.CustomerDAOInterface;
import DAO.mySql.CustomerMySqlDAO;
import DAO.transfertObject.CustomerTO;

import model.account.RegisterErrors;

/**
 *
 * @author Baudet Aurélien
 */
public class CtrAccount extends javax.servlet.http.HttpServlet {

    public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
        response.setContentType("text/html");

    /*    
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
    
     */
    }

    public void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
        HttpSession session = request.getSession();

        CustomerDAOInterface customerDAO = (CustomerDAOInterface) MySqlDAOFactory.getCustomerDAO();

        //Check if the login is not already used
        if (customerDAO.isLoginUsed(request.getParameter("login")) == true) {
            session.setAttribute("CreationAccount", "used");

            /*
            response.setContentType("text/html");
            PrintWriter writer = response.getWriter();
            writer.println("<html>");
            writer.println("<head>");
            writer.println("<title>Login already used</title>");
            writer.println("<head>");
            writer.println("<body>");
            writer.println("<h1>Login already used</h1>");
            writer.println("</body>");
            writer.println("</html");
             */

            //si on rentre dans le if : meme si redirect le reste de la servlet est quand même executé
            //par contre pas de mise en base ??
            //C'est pourquoi il faut absolument faire des else if à chaque cas
            response.sendRedirect("NotificationCreationAccount.jsp");
        } else {

            //Creation of the transfert object 
            CustomerTO customerTO = new CustomerTO();
            //Set the attibutes of customerTO with parameters from the CreateCustomerAccount
            customerTO.setFirstName(request.getParameter("firstName"));
            customerTO.setLastName(request.getParameter("lastName"));
            customerTO.setLogin(request.getParameter("login"));
            customerTO.setPassword(request.getParameter("password"));
            customerTO.setMail(request.getParameter("mail"));
            customerTO.setSexe(request.getParameter("sexe"));
            customerTO.setBirthday(request.getParameter("birthday"));
            customerTO.setPhone(request.getParameter("phone"));
            customerTO.setCellPhone(request.getParameter("cellPhone"));

            //On vérifie qu'il n'y a pas d'erreur dans le formulaire
            RegisterErrors erreursFormulaire = new RegisterErrors();
            boolean isError = erreursFormulaire.checkInfos(customerTO);

            if (isError == true) {
                session.setAttribute("errorAccount", "errorAccount");

                session.setAttribute("errors", erreursFormulaire);
                
                session.setAttribute("customerBegin", customerTO);

                response.sendRedirect("CreateCustomerAccount.jsp");
            } else {

            //Put in the BDD
            String error = customerDAO.insertCustomer(customerTO);

            /*
            response.setContentType("text/html");
            PrintWriter writer = response.getWriter();
            writer.println("<html>");
            writer.println("<head>");
            writer.println("<title>Hello World Application Servlet Page</title>");
            writer.println("<head>");
            writer.println("<body>");
            writer.println(error);
            writer.println("</body>");
            writer.println("</html");
             */

            session.setAttribute("CreationAccount", "registered");

            response.sendRedirect("NotificationCreationAccount.jsp");
            
            }
        }
    }
}
