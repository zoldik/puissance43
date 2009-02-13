package servlet.account;

import DAO.factory.DAOFactory;
import DAO.interfaces.CustomerDAOInterface;
import DAO.mySql.CustomerMySqlDAO;
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

        if (request.getParameter("idInternet") != null) {
            updateInternetSubscribe(request, response);
        }

        if (request.getParameter("idVoip") != null) {
            updateVoipSubscribe(request, response);
        }

        if (request.getParameter("idVod") != null) {
            updateVodSubscribe(request, response);
        }
        
        }
    

    private void updateInternetSubscribe(HttpServletRequest request, HttpServletResponse response) throws IOException {

        HttpSession session = request.getSession();


        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();

        String idInternetSubscribe = request.getParameter("idInternet");
        int idIS = Integer.parseInt(idInternetSubscribe);

        if (session.getAttribute("Customer") != null) {

            CustomerTO customerTO = (CustomerTO) session.getAttribute("Customer");
            int idCustomer = customerTO.getId();

            DAOFactory daoFactory = DAOFactory.getDAOFactory(DAOFactory.MYSQL);
            CustomerDAOInterface customerDAO = daoFactory.getCustomerDAO();

            String error = customerDAO.updateCustomerInternetSubscribe(idCustomer, idIS);

            try {
                //TODO output your page here
                out.println("<html>");
                out.println("<head>");
                out.println("<title>Servlet CtrSubscribe</title>");
                out.println("</head>");
                out.println("<body>");
                out.println("<h1>" + error + ", votre demande d'abonnement a bien été transmise à notre service clientèle :</h1>");

                out.println("<h1>" + idInternetSubscribe + "</h1>");

                out.println("</body>");
                out.println("</html>");

            } finally {
                out.close();
            }


        } //Fin du if idInternet

    }
    
    private void updateVoipSubscribe(HttpServletRequest request, HttpServletResponse response) throws IOException {

        HttpSession session = request.getSession();


        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();

        String idVoip = request.getParameter("idVoip");
        int idIS = Integer.parseInt(idVoip);

        if (session.getAttribute("Customer") != null) {

            CustomerTO customerTO = (CustomerTO) session.getAttribute("Customer");
            int idCustomer = customerTO.getId();

            DAOFactory daoFactory = DAOFactory.getDAOFactory(DAOFactory.MYSQL);
            CustomerDAOInterface customerDAO = daoFactory.getCustomerDAO();

            String error = customerDAO.updateCustomerVoipSubscribe(idCustomer, idIS);

            try {
                //TODO output your page here
                out.println("<html>");
                out.println("<head>");
                out.println("<title>Servlet CtrSubscribe</title>");
                out.println("</head>");
                out.println("<body>");
                out.println("<h1>" + error + ", votre demande d'abonnement a bien été transmise à notre service clientèle :</h1>");

                out.println("<h1>" + idVoip + "</h1>");

                out.println("</body>");
                out.println("</html>");

            } finally {
                out.close();
            }


        } //Fin du if idInternet

    }
    
    private void updateVodSubscribe(HttpServletRequest request, HttpServletResponse response) throws IOException {

        HttpSession session = request.getSession();


        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();

        String idVod = request.getParameter("idVod");
        int idIS = Integer.parseInt(idVod);

        if (session.getAttribute("Customer") != null) {

            CustomerTO customerTO = (CustomerTO) session.getAttribute("Customer");
            int idCustomer = customerTO.getId();

            DAOFactory daoFactory = DAOFactory.getDAOFactory(DAOFactory.MYSQL);
            CustomerDAOInterface customerDAO = daoFactory.getCustomerDAO();

            String error = customerDAO.updateCustomerVodSubscribe(idCustomer, idIS);

            try {
                //TODO output your page here
                out.println("<html>");
                out.println("<head>");
                out.println("<title>Servlet CtrSubscribe</title>");
                out.println("</head>");
                out.println("<body>");
                out.println("<h1>" + error + ", votre demande d'abonnement a bien été transmise à notre service clientèle :</h1>");

                out.println("<h1>" + idVod + "</h1>");

                out.println("</body>");
                out.println("</html>");

            } finally {
                out.close();
            }


        } //Fin du if idInternet

    }
}



