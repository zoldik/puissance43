package servlet.networkdevices;

import DAO.factory.DAOFactory;
import DAO.factory.MySqlDAOFactory;
import DAO.interfaces.ItemDAOInterface;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import javax.servlet.http.HttpSession;

import model.networkdevices.Item;

/**
 *
 * @author vincent
 */
public class CtrSearch extends HttpServlet {

    /** 
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code> methods.
     * @param request servlet request
     * @param response servlet response
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        HttpSession session = request.getSession();

        if (request.getParameter("typeSearch") != null) {
            String typeSearch = request.getParameter("typeSearch");
            session.setAttribute("typeSearch", typeSearch);
        }

        String typeSearch = (String) session.getAttribute("typeSearch");

        if (typeSearch.equals("searchAll")) {
            searchAll(request, response);
        } else if (typeSearch.equals("searchByType")) {
            searchByType(request, response);
        }

    }
    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /** 
     * Handles the HTTP <code>GET</code> method.
     * @param request servlet request
     * @param response servlet response
     */
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /** 
     * Handles the HTTP <code>POST</code> method.
     * @param request servlet request
     * @param response servlet response
     */
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /** 
     * Returns a short description of the servlet.
     */
    public String getServletInfo() {
        return "Appelle la classe modèle : en lui donnant les paramètres de recherche. La " +
                "classe effectue la recherche et lui retourne le résultat. " +
                " Ce résultat est renvoyé à la view jsp ";
    }// </editor-fold>

    
    public void searchAll(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    
        DAOFactory daoFactory = DAOFactory.getDAOFactory(DAOFactory.MYSQL);

        ItemDAOInterface itemDAO = (ItemDAOInterface) daoFactory.getItemDAO();
        
        ArrayList<Item> items = itemDAO.selectAllItems();
        
        request.setAttribute("results", items);

        RequestDispatcher view = request.getRequestDispatcher("./DisplayItems.jsp");
        view.forward(request, response);
    }
    
    
    public void searchByType(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        HttpSession session = request.getSession();

        if (request.getParameter("type") != null) {
            String type = request.getParameter("type");
            session.setAttribute("type", type);
        }
        
        String type = (String) session.getAttribute("type");
               
        DAOFactory daoFactory = DAOFactory.getDAOFactory(DAOFactory.MYSQL);

        ItemDAOInterface itemDAO = (ItemDAOInterface) daoFactory.getItemDAO();
                
        ArrayList<Item> items = itemDAO.selectItemsByType(type);

        request.setAttribute("results", items);

        RequestDispatcher view = request.getRequestDispatcher("./DisplayItems.jsp");
        view.forward(request, response);

    }
}
