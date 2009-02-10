package servlet.account;

import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;

import DAO.factory.DAOFactory;
import DAO.factory.MySqlDAOFactory;
import DAO.interfaces.CustomerDAOInterface;
import DAO.mySql.CustomerMySqlDAO;
import DAO.transfertObject.AddressTO;
import DAO.transfertObject.CustomerTO;

import model.account.RegisterAddressErrors;
import model.account.RegisterCustomerErrors;

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

        // a faire dans le init() de la servlet 
        DAOFactory daoFactory = DAOFactory.getDAOFactory(DAOFactory.MYSQL);

        CustomerDAOInterface customerDAO = daoFactory.getCustomerDAO();

        //Creation of the transfert object customer 
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

        //Creation of the transfert object customer
        AddressTO addressTO = new AddressTO();
        //Set the attibutes of customerTO with parameters from the CreateCustomerAccount
        addressTO.setStreet(request.getParameter("street"));
        addressTO.setPostalCode(request.getParameter("postalCode"));
        addressTO.setCity(request.getParameter("city"));
        addressTO.setCountry(request.getParameter("country"));

        //Check if the login is not already used
        if (customerDAO.isLoginUsed(request.getParameter("login")) == true) {
            session.setAttribute("CreateCustomerAccount", "loginUsed");
            
            session.setAttribute("customerBegin", customerTO);            
            session.setAttribute("addressBegin", addressTO);
            
            /*
            boolean isUsed = customerDAO.isLoginUsed(request.getParameter("login"));
            
            response.setContentType("text/html");
            PrintWriter writer = response.getWriter();
            writer.println("<html>");
            writer.println("<head>");
            writer.println("<title>Login already used</title>");
            writer.println("<head>");
            writer.println("<body>");
            writer.println("<h1>"+isUsed+"</h1>");
            writer.println("</body>");
            writer.println("</html");
            */ 

            //si on rentre dans le if : meme si redirect le reste de la servlet est quand même executé
            //par contre pas de mise en base ??
            //C'est pourquoi il faut absolument faire des else if à chaque cas
            response.sendRedirect("CreateCustomerAccount.jsp");
        } else {

            //On vérifie qu'il n'y a pas d'erreur dans le formulaire
            RegisterCustomerErrors erreursClient = new RegisterCustomerErrors();
            boolean isErrorCustomer = erreursClient.checkInfos(customerTO);

            RegisterAddressErrors erreursAdresse = new RegisterAddressErrors();
            boolean isErrorAddress = erreursAdresse.checkInfos(addressTO);

            if (isErrorCustomer == true || isErrorAddress == true) {
                //Stipule qu'il y a une erreur
                session.setAttribute("CreateCustomerAccount", "errorField");

                session.setAttribute("errorsCustomer", erreursClient);

                session.setAttribute("customerBegin", customerTO);

                session.setAttribute("errorsAddress", erreursAdresse);

                //addressBegin : pour garder les champs déjà rentrer en mémoire
                session.setAttribute("addressBegin", addressTO);

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

                session.setAttribute("CreateCustomerAccount", "registered");

                response.sendRedirect("NotificationCreationAccount.jsp");

            }
        }
    }
}
