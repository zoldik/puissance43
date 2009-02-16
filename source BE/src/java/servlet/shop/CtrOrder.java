package servlet.shop;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.Iterator;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author vincent
 */
public class CtrOrder extends HttpServlet {
       
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
        HttpSession session = request.getSession();
        
        ArrayList<Integer> idItems = (ArrayList<Integer>) session.getAttribute("idItems");
        
        Iterator it = idItems.iterator();
            
        while (it.hasNext()) {
            
        Integer idItem = (Integer) it.next();
            
        response.setContentType("text/html");
        PrintWriter writer = response.getWriter();
        writer.println("<html>");
        writer.println("<body>");
        writer.println("<h1>idItem : " + idItem + "</h1>");
        writer.println("</body>");
        writer.println("</html");        
                
            }
            
        
        
        
        
        
    }

}
