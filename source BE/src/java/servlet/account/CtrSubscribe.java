package servlet.account;

import DAO.transfertObject.CustomerTO;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author vincent
 */
public class CtrSubscribe extends HttpServlet {

    /** 
     * Handles the HTTP <code>GET</code> method.
     * @param request servlet request
     * @param response servlet response
     */
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
    }

    /** 
     * Handles the HTTP <code>POST</code> method.
     * @param request servlet request
     * @param response servlet response
     */
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        
         HttpSession session = request.getSession();

        if (request.getParameter("idInternet") != null) {
            String idInternet = request.getParameter("idInternet");

            try {
                //TODO output your page here
                out.println("<html>");
                out.println("<head>");
                out.println("<title>Servlet CtrSubscribe</title>");
                out.println("</head>");
                out.println("<body>");
                out.println("<h1>TEST</h1>");
                out.println("<h1>" + idInternet + "</h1>");
                //out.println("<h1>" + idVoip + "</h1>");
                //out.println("<h1>" + idVod + "</h1>");
                out.println("</body>");
                out.println("</html>");

            } finally {
                out.close();
            }
            
            if (session.getAttribute("Customer") != null){
                CustomerTO customerTO = (CustomerTO) session.getAttribute("Customer");
                
                int idCustomer = customerTO.getId();
            }
            
            //UPDATE `RedNeck`.`customer` SET `id_internet_subscribe` = '3' WHERE `customer`.`id_customer` =1 LIMIT 1 ;
            
            //CustomerTO customerObject =(CustomerTO)CustomerSession.getAttribute("Customer");
            //(CustomerSession.getAttribute("Customer")
            //Insérer le champ id de l'abonnement en clé étrangère dans le customer logger
            //DAOCustomer insertIdInternet
            
        }


        String idVoip = request.getParameter("idVoip");
        String idVod = request.getParameter("idVod");









    }
}
