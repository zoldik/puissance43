/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package servlet.customer.account;

import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;

import DAO.factory.DAOFactory;
import DAO.interfaces.CustomerBillDAOInterface;
import DAO.interfaces.CustomerDAOInterface;
import DAO.transfertObject.*;
import java.util.LinkedList;
/**
 *
 * @author orthank
 */
public class ViewBill extends javax.servlet.http.HttpServlet {

	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
		response.setContentType("text/html");
		try{
			//On crée la session
                        HttpSession CustomerSession = request.getSession(false);
                        CustomerTO customerObject =(CustomerTO)CustomerSession.getAttribute("Customer");
                        int idCustomer=customerObject.getId();
                        
                        DAOFactory daoFactory = DAOFactory.getDAOFactory(DAOFactory.MYSQL);
                        
                        CustomerBillDAOInterface customerBillDAO = daoFactory.getCustomerBillDAO();
                        LinkedList BillList = customerBillDAO.getBillsByCustomerID(idCustomer);
                        
                        CustomerDAOInterface customerDAO = daoFactory.getCustomerDAO();
                        CustomerTO customer = new CustomerTO() ;
                        customer = customerDAO.findCustomerById(idCustomer);
                        
                        AddressTO Address = new AddressTO() ;
                        Address = customerDAO.findCustomerAddressById(customer.getIdAddress());
                        
                        //response.sendRedirect("accueil.jsp");
                        PrintWriter out = response.getWriter();
                        out.println("<html>");
                        out.println("<body>");
                        int i=0;
                        while (i<BillList.size())
                        {
                            int j=i+1;
                            CustomerBillTO temp = (CustomerBillTO)BillList.get(i);
                            out.println("<b>Facture n° : </b>"+j+"<br><br><i>"+customer.getFirstName()+"<br>"+customer.getLastName()+"</i><br><br>Montant FAI : "+temp.getFaiAmount()+"<br>Montant VOD : "+temp.getVodAmount()+"<br>Montant VoIP : "+temp.getVoipAmount()+"<br><b>Montant total : "+temp.getAmount()+"</b><br><br><i>Adresse Facturation :</i><br>"+Address.getStreet()+"<br>"+Address.getPostalCode()+" "+Address.getCity()+"<br>"+Address.getCountry()+"<br><br><br>");
                            i=i+1;
                        }
                        out.println("</body>");
                        out.println("</html>");
                        out.close();
		}catch (Exception e){
			System.err.println("Erreur à l'authentification !");
			e.printStackTrace();		
		}
	}

	public void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
		doGet(request,response);
	}
}
