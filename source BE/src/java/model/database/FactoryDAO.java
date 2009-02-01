/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package model.database;

/**
 * FactoryDAO owns methods in order to create DAO Object.
 * Class FactoryDAO implements the design pattern Factory for create DAO objects.
 * It contains only static methods to create DAO objects and static attributs to 
 * reference the singleton DAO object.
 * 
 * @author vincent
 */
public class FactoryDAO {

    static ItemDAO ItemDAO = null;
    static CustomerDAO CustomerDAO = null;
    
    
    public static ItemDAO getItemDAO() {
        if (ItemDAO == null) {
            ItemDAO = new ItemDAO();
        }
        return ItemDAO;
    }
    
    public static CustomerDAO getCustomerDAO() {
        if (CustomerDAO == null) {
            CustomerDAO = new CustomerDAO();
        }
        return CustomerDAO;
    }
    
}
