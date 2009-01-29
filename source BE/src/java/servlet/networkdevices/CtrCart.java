package servlet.networkdevices;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import model.networkdevices.Cart;
import model.networkdevices.CartRow;

/**
 *
 * @author vincent
 */
public class CtrCart extends HttpServlet {

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

        String actionCart = request.getParameter("actionCart");

        if (actionCart.equals("add")) {
            addRow(request, response);
        } else if (actionCart.equals("delete")) {
            deleteRow(request, response);
        } else if (actionCart.equals("increment")) {
            increment(request, response);
        } else if (actionCart.equals("decrement")) {
            decrement(request, response);
        }
    }
   
    private void addRow(HttpServletRequest request, HttpServletResponse response) throws IOException {

        HttpSession session = request.getSession();
        
        //Does the Customer have a cart ? 
        if (session.getAttribute("cart") == null) {
            //No, create
            Cart newCart = new Cart();
            session.setAttribute("cart", newCart);
        }
        
        String idString = request.getParameter("id");
        int id = Integer.parseInt(idString);
        
        Cart cart = (Cart) session.getAttribute("cart");
        cart.addRowById(id);
               
        response.sendRedirect("./CtrSearch");   
    }

    private void deleteRow(HttpServletRequest request, HttpServletResponse response) throws IOException {
        HttpSession session = request.getSession();

        Cart cart = (Cart) session.getAttribute("cart");

        String idString = request.getParameter("id");
        int id = Integer.parseInt(idString);

        cart.deleteRow(id);

        response.sendRedirect("./DisplayCart.jsp");

    }

    private void increment(HttpServletRequest request, HttpServletResponse response) throws IOException {
        HttpSession session = request.getSession();

        Cart cart = (Cart) session.getAttribute("cart");
       
        String idString = request.getParameter("id");
        int id = Integer.parseInt(idString);

        CartRow cartRow = cart.extractCartRowFrom(id);

        cartRow.incrementQuantity();

        response.sendRedirect("./DisplayCart.jsp");
    }

    private void decrement(HttpServletRequest request, HttpServletResponse response) throws IOException {
        HttpSession session = request.getSession();

        Cart cart = (Cart) session.getAttribute("cart");
        
        String idString = request.getParameter("id");
        int id = Integer.parseInt(idString);

        CartRow cartRow = cart.extractCartRowFrom(id);

        cartRow.decrementQuantity();

        response.sendRedirect("./DisplayCart.jsp");
    }
}
