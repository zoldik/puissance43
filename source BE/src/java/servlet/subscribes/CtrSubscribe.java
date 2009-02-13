package servlet.subscribes;

import DAO.factory.DAOFactory;
import DAO.interfaces.CustomerDAOInterface;
import DAO.interfaces.InternetSubscribeDAOInterface;
import DAO.interfaces.VodSubscribeDAOInterface;
import DAO.interfaces.VoipSubscribeDAOInterface;
import DAO.mySql.CustomerMySqlDAO;
import DAO.transfertObject.CustomerTO;
import DAO.transfertObject.InternetSubscribeTO;
import DAO.transfertObject.VodSubscribeTO;
import DAO.transfertObject.VoipSubscribeTO;
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

        response.setContentType("text/html");
        PrintWriter writer = response.getWriter();
        writer.println("<html>");
        writer.println("<body>");
        writer.println("<h1>POST</h1>");
        writer.println("</body>");
        writer.println("</html");

        String addSubscribe = request.getParameter("addSubscribe");

        if (addSubscribe != null) {
            if (addSubscribe.equals("internet")) {
                /*
                writer.println("<html>");
                writer.println("<body>");
                writer.println("<h1>dans le if internet</h1>");
                writer.println("</body>");
                writer.println("</html");
                 */
                addInternetSubscribe(request, response);
            }
            if (addSubscribe.equals("voip")) {
                addVoipSubscribe(request, response);
            }
            if (addSubscribe.equals("vod")) {
                addVodSubscribe(request, response);
            }


        }// Fin du if ("addSubscribe") != null     


        //zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz

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

    private void addInternetSubscribe(HttpServletRequest request, HttpServletResponse response) throws IOException {
        HttpSession session = request.getSession();

        //Creation of the transfert object customer 
        InternetSubscribeTO internetSubscribeTO = new InternetSubscribeTO();

        //Set the attibutes of customerTO with parameters from the CreateCustomerAccount
        internetSubscribeTO.setNameSubscribe(request.getParameter("name"));
        internetSubscribeTO.setDescriptionSubscribe(request.getParameter("description"));
        internetSubscribeTO.setPrice(Float.parseFloat(request.getParameter("price")));
        internetSubscribeTO.setRate(request.getParameter("rate"));

        DAOFactory daoFactory = DAOFactory.getDAOFactory(DAOFactory.MYSQL);
        InternetSubscribeDAOInterface internetSubscribeDAO = daoFactory.getInternetSubscribeDAO();

        String error = internetSubscribeDAO.insertInternetSubscribe(internetSubscribeTO);
    /*
    response.setContentType("text/html");
    PrintWriter writer = response.getWriter();
    writer.println("<html>");
    writer.println("<body>");
    writer.println("<h1>addInternetSubscribe</h1>");
    //writer.println(request.getParameter("rate") + " " + request.getParameter("price"));
    writer.println(error);
    writer.println("</body>");
    writer.println("</html");
     */

        //Ajouter un truc pour confirmer une request pour l'ajax
        response.sendRedirect("./AddSubscribes.jsp");
    }

    
    private void addVoipSubscribe(HttpServletRequest request, HttpServletResponse response) throws IOException {
    
         //Creation of the transfert object customer 
        VoipSubscribeTO voipSubscribeTO = new VoipSubscribeTO();
        
        //Set the attibutes of customerTO with parameters from the CreateCustomerAccount
        voipSubscribeTO.setName(request.getParameter("name"));
        voipSubscribeTO.setDescription(request.getParameter("description"));
        voipSubscribeTO.setPrice(Float.parseFloat(request.getParameter("price")));
        voipSubscribeTO.setType(request.getParameter("type"));
        
        DAOFactory daoFactory = DAOFactory.getDAOFactory(DAOFactory.MYSQL);
        VoipSubscribeDAOInterface voipSubscribeDAO = daoFactory.getVoipSubscribeDAO();
        
        String error = voipSubscribeDAO.insertVoipSubscribe(voipSubscribeTO);
        
    /*    
    response.setContentType("text/html");
    PrintWriter writer = response.getWriter();
    writer.println("<html>");
    writer.println("<body>");
    writer.println("<h1>addVoipSubscribe</h1>");
    //writer.println(request.getParameter("rate") + " " + request.getParameter("price"));
    writer.println(error);
    writer.println("</body>");
    writer.println("</html");
    */ 
    
        response.sendRedirect("./AddSubscribes.jsp");
    }
    
    
    private void addVodSubscribe(HttpServletRequest request, HttpServletResponse response) throws IOException {
    
         //Creation of the transfert object customer 
        VodSubscribeTO vodSubscribeTO = new VodSubscribeTO();
        
        //Set the attibutes of customerTO with parameters from the CreateCustomerAccount
        vodSubscribeTO.setName(request.getParameter("name"));
        vodSubscribeTO.setDescription(request.getParameter("description"));
        vodSubscribeTO.setPrice(Float.parseFloat(request.getParameter("price")));
        vodSubscribeTO.setType(request.getParameter("type"));
        
        DAOFactory daoFactory = DAOFactory.getDAOFactory(DAOFactory.MYSQL);
        VodSubscribeDAOInterface vodSubscribeDAO = daoFactory.getVodSubscribeDAO();
        
        String error = vodSubscribeDAO.insertVodSubscribe(vodSubscribeTO);
        
    /*    
    response.setContentType("text/html");
    PrintWriter writer = response.getWriter();
    writer.println("<html>");
    writer.println("<body>");
    writer.println("<h1>addVodSubscribe</h1>");
    //writer.println(request.getParameter("rate") + " " + request.getParameter("price"));
    writer.println(error);
    writer.println("</body>");
    writer.println("</html");
    */
    
        response.sendRedirect("./AddSubscribes.jsp");
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



