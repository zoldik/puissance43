package servlet.account;

import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;

import DAO.factory.DAOFactory;
import DAO.factory.MySqlDAOFactory;
import DAO.interfaces.CustomerDAOInterface;
import DAO.mySql.MySqlCustomerDAO;
import DAO.transfertObject.CustomerTO;

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

        //Creation of the transfert object
        CustomerTO customerTO = new CustomerTO();
        customerTO.setFirstName("firstName");
        customerTO.setLastName("lastName");
        customerTO.setLogin("login");
        customerTO.setPassword("password");
        customerTO.setMail("mail");
        customerTO.setSexe("sexe");
        customerTO.setBirthday("birthday");
        customerTO.setPhone("phone");
        customerTO.setCellPhone("cellPhone");

        //*************************
        //DEBUT CODE TEST 
        //************************* 
        //METHOD servlet v1 : la servlet est bien appelé
        
        response.setContentType("text/html");
        PrintWriter writer = response.getWriter();
        writer.println("<html>");
        writer.println("<head>");
        writer.println("<title>Hello World Application Servlet Page</title>");
        writer.println("<head>");
        writer.println("<body>");
        writer.println("<h1>TEST</h1>");
        writer.println("</body>");
        writer.println("</html");
        
        //*************************
        //FIN CODE TEST 
        //************************* 

        //METHODE servlet v2 : la servlet a bien accès à la BDD et retourne les bonnes valeurs
        /*PrintWriter writer = response.getWriter();
        for(int i = 0 ; i<items.size() ; i++){
        Item it  = items.get(i);           
        writer.println("Item "+i+" =   ID="+it.getId()+"   NAME="+it.getName()+"   TYPE="+it.getType()+"   DESCRIPTION="+it.getDescription()+"   PRICE="+it.getPrice()+"<br>");            
        }  
         */

        //METHOD servlet v3 : la servlet délegue la requête à un autre compossant, ici une JSP
        /*
        request.setAttribute("results", items);

        //RequestDispatcher view = request.getRequestDispatcher(arg0);

        RequestDispatcher view = request.getRequestDispatcher("./ViewCart/DisplayItems.jsp");
        view.forward(request, response);
         */
        
    //Create a MySqlDAOFactory
    //Problem avec l'abstract class ?? DINONT, si on change de base (ex : postgres) on doit comme même
    //venir ici changer le cast
    //MySqlDAOFactory mySqlDAOFactory = (MySqlDAOFactory) DAOFactory.getDAOFactory(1);
    //MySqlDAOFactory creates a CustomerDAO object
    //CustomerDAO mySqlCustomerDAO = (CustomerDAO) mySqlDAOFactory.getCustomerDAO();
    CustomerDAOInterface customerDAO = (CustomerDAOInterface) MySqlDAOFactory.getCustomerDAO();

    customerDAO.insertCustomer(customerTO);    
    
    //response.sendRedirect("Validation.jsp?Creation=inProgress");
    //session.setAttribute("CreationAccount","true");

    //response.sendRedirect("../../CreationCustomerAccount.jsp");
}

}
