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
                        //response.sendRedirect("accueil.jsp");
                        PrintWriter out = response.getWriter();
                        out.println("<html>");
                        out.println("<body>");
                        int i=0;
                        while (i<BillList.size())
                        {
                            CustomerBillTO temp = (CustomerBillTO)BillList.get(i);
                            out.println("Facture numéro : "+temp.getBillId()+"<br>Montant FAI : "+temp.getFaiAmount()+"<br>Montant VOD : "+temp.getVodAmount()+"<br>Montant VoIP : "+temp.getVoipAmount()+"<br>Montant total : "+temp.getAmount()+"<br><br>");
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
