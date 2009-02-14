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


        //zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz
        //ADD ADD ADD ADD ADD ADD ADD ADD ADD ADD ADD ADD ADD ADD 
        //zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz


        if (request.getParameter("addSubscribe") != null) {

            String addSubscribe = request.getParameter("addSubscribe");

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
        //DELETE DELETE DELETE DELETE DELETE DELETE DELETE DELETE
        //zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz


        if (request.getParameter("delSubscribe") != null) {

            String delSubscribe = request.getParameter("delSubscribe");

            if (delSubscribe.equals("internet")) {
                /*
                writer.println("<html>");
                writer.println("<body>");
                writer.println("<h1>dans le if internet</h1>");
                writer.println("</body>");
                writer.println("</html");
                 */
                delInternetSubscribe(request, response);
            }
            if (delSubscribe.equals("voip")) {
                delVoipSubscribe(request, response);
            }
            if (delSubscribe.equals("vod")) {
                delVodSubscribe(request, response);
            }

        }// Fin du if ("delSubscribe") != null     


        //zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz
        //VALIDATE VALIDATE VALIDATE VALIDATE VALIDATE VALIDATE VALIDATE
        //zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz


        if (request.getParameter("valSubscribe") != null) {

            String valSubscribe = request.getParameter("valSubscribe");

            if (valSubscribe.equals("internet")) {
                /*
                writer.println("<html>");
                writer.println("<body>");
                writer.println("<h1>dans le if internet</h1>");
                writer.println("</body>");
                writer.println("</html");
                 */
                valInternetSubscribe(request, response);
            }
            if (valSubscribe.equals("voip")) {
                valVoipSubscribe(request, response);
            }
            if (valSubscribe.equals("vod")) {
                valVodSubscribe(request, response);
            }

        }// Fin du if ("valSubscribe") != null     


        //zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz
        //SUBSCRIBE SUBSCRIBE SUBSCRIBE SUBSCRIBE SUBSCRIBE SUBSCRIBE SUBSCRIBE 
        //zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz


        if (request.getParameter("subSubscribe") != null) {

            String subSubscribe = request.getParameter("subSubscribe");


            if (request.getParameter("idInternet") != null) {
                subscribeInternetSubscribe(request, response);
            }

            if (request.getParameter("idVoip") != null) {
                subscribeVoipSubscribe(request, response);
            }

            if (request.getParameter("idVod") != null) {
                subscribeVodSubscribe(request, response);
            }

        }// Fin du if ("subSubscribe") != null

    }
    //zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz
    //ADD ADD ADD ADD ADD ADD ADD ADD ADD ADD ADD ADD ADD ADD 
    //zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz
    private void addInternetSubscribe(HttpServletRequest request, HttpServletResponse response) throws IOException {
        //HttpSession session = request.getSession();

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

        response.sendRedirect("./HandleSubscribes.jsp");
    }
    //zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz
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

        response.sendRedirect("./HandleSubscribes.jsp");
    }
    //zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz
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

        response.sendRedirect("./HandleSubscribes.jsp");
    }
    //zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz
    //DELETE DELETE DELETE DELETE DELETE DELETE DELETE DELETE
    //zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz
    private void delInternetSubscribe(HttpServletRequest request, HttpServletResponse response) throws IOException {
        String idInternet = request.getParameter("idInternet");

        DAOFactory daoFactory = DAOFactory.getDAOFactory(DAOFactory.MYSQL);
        InternetSubscribeDAOInterface internetSubscribeDAO = daoFactory.getInternetSubscribeDAO();

        String error = internetSubscribeDAO.deleteById(Integer.parseInt(idInternet));

        response.setContentType("text/html");
        PrintWriter writer = response.getWriter();
        writer.println("<html>");
        writer.println("<body>");
        writer.println("<h1>delInternetSubscribe</h1>");
        writer.println(error);
        writer.println("</body>");
        writer.println("</html");

        response.sendRedirect("./HandleSubscribes.jsp");
    }

    //zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz
    private void delVoipSubscribe(HttpServletRequest request, HttpServletResponse response) throws IOException {
        String idVoip = request.getParameter("idVoip");

        DAOFactory daoFactory = DAOFactory.getDAOFactory(DAOFactory.MYSQL);
        VoipSubscribeDAOInterface voipSubscribeDAO = daoFactory.getVoipSubscribeDAO();

        String error = voipSubscribeDAO.deleteById(Integer.parseInt(idVoip));

        response.setContentType("text/html");
        PrintWriter writer = response.getWriter();
        writer.println("<html>");
        writer.println("<body>");
        writer.println("<h1>delInternetSubscribe</h1>");
        writer.println(error);
        writer.println("</body>");
        writer.println("</html");

        response.sendRedirect("./HandleSubscribes.jsp");
    }

    //zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz
    private void delVodSubscribe(HttpServletRequest request, HttpServletResponse response) throws IOException {
        String idVod = request.getParameter("idVod");

        DAOFactory daoFactory = DAOFactory.getDAOFactory(DAOFactory.MYSQL);
        VodSubscribeDAOInterface vodSubscribeDAO = daoFactory.getVodSubscribeDAO();

        String error = vodSubscribeDAO.deleteById(Integer.parseInt(idVod));

        response.setContentType("text/html");
        PrintWriter writer = response.getWriter();
        writer.println("<html>");
        writer.println("<body>");
        writer.println("<h1>delInternetSubscribe</h1>");
        writer.println(error);
        writer.println("</body>");
        writer.println("</html");

        response.sendRedirect("./HandleSubscribes.jsp");
    }
    //zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz
    //VALIDATE VALIDATE VALIDATE VALIDATE VALIDATE VALIDATE VALIDATE
    //zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz
    private void valInternetSubscribe(HttpServletRequest request, HttpServletResponse response) throws IOException {
        
        
        
    }

    //zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz
    private void valVoipSubscribe(HttpServletRequest request, HttpServletResponse response) throws IOException {
    }

    //zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz
    private void valVodSubscribe(HttpServletRequest request, HttpServletResponse response) throws IOException {
    }
    //zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz
    //SUBSCRIBE SUBSCRIBE SUBSCRIBE SUBSCRIBE SUBSCRIBE SUBSCRIBE SUBSCRIBE 
    //zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz
    private void subscribeInternetSubscribe(HttpServletRequest request, HttpServletResponse response) throws IOException {

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

            String error = customerDAO.updateCustomerStateInternetSubscribe(idCustomer);

            String error2 = customerDAO.updateCustomerInternetSubscribe(idCustomer, idIS);

            try {
                //TODO output your page here
                out.println("<html>");                
                out.println("<body>");
                out.println("<h1>" + error + ", votre demande de souscription à l'abonnement Internet n°" + idInternetSubscribe +
                        " a bien été transmise à notre service clientèle. Vous receverez un mail de confirmation lorque l'un de nos agent aura activé votre abonnement</h1>");
                out.println(error2);
                out.println("</body>");
                out.println("</html>");

            } finally {
                out.close();
            }


        } //Fin du if idInternet

    }
    //zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz
    private void subscribeVoipSubscribe(HttpServletRequest request, HttpServletResponse response) throws IOException {

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

            String error2 = customerDAO.updateCustomerStateVoipSubscribe(idCustomer);

            try {
                //TODO output your page here
                out.println("<html>");                
                out.println("<body>");
                out.println("<h1>" + error + ", votre demande de souscription à l'abonnement Voip n°" + idVoip +
                        " a bien été transmise à notre service clientèle. Vous receverez un mail de confirmation lorque l'un de nos agent aura activé votre abonnement</h1>");
                out.println(error2);
                out.println("</body>");
                out.println("</html>");

            } finally {
                out.close();
            }


        } //Fin du if idInternet

    }
    //zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz
    private void subscribeVodSubscribe(HttpServletRequest request, HttpServletResponse response) throws IOException {

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

            String error2 = customerDAO.updateCustomerStateVodSubscribe(idCustomer);

            try {
                //TODO output your page here
                out.println("<html>");
                out.println("<body>");
                out.println("<h1>" + error + ", votre demande de souscription à l'abonnement Vod n°" + idVod +
                        " a bien été transmise à notre service clientèle. Vous receverez un mail de confirmation lorque l'un de nos agent aura activé votre abonnement</h1>");
                out.println(error2);
                out.println("</body>");
                out.println("</html>");

            } finally {
                out.close();
            }


        } //Fin du if idInternet

    }
}



