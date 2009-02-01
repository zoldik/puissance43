package model.database;

import model.database.*;

/**
 *
 * @author vincent
 */
public class CustomerDAOTest {

    public static void main(String[] args) {
        CustomerDAO customerDAO = FactoryDAO.getCustomerDAO();
        customerDAO.insertCustomer("vincent", "destailleur", "vince", "vince", "vincentdestailleur@gmail.com", 
                                    "19/03/1986", "M", "03-20-97-26-52", "06-68-97-26-52");        
    }
    
    
}
