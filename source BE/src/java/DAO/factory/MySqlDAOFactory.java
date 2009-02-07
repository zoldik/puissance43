package DAO.factory;

import DAO.*;
import DAO.interfaces.CustomerDAOInterface;
import DAO.interfaces.ItemDAOInterface;
import DAO.mySql.MySqlCustomerDAO;
import DAO.mySql.MySqlItemDAO;
import java.sql.Connection;
import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

/**
 *
 * @author vincent
 */
public class MySqlDAOFactory extends DAOFactory {
    
    //*********************
    //STATIC ATTRIBUTES
    //*********************
    private static ItemDAOInterface itemDAO = null;
    private static CustomerDAOInterface customerDAO = null;
    
    //*********************
    //STATIC METHODS
    //*********************
               
    // method to create MySql connections
    public static Connection createConnectionWithJNDI() {
        Connection conn = null;
        try {
            Context initCtx = new InitialContext();
            DataSource ds = (DataSource) initCtx.lookup("java:MySqlDS");
            conn = ds.getConnection();
        } catch (Exception e) {
            System.out.println("Connection issue : ");
            e.printStackTrace();
        }
        //System.out.println("Success connection \n");
        return conn;
    }

    public static CustomerDAOInterface getCustomerDAO() {
        // MySqlCustomerDAO implements CustomerDAO 
        if (customerDAO == null) {
            customerDAO = new MySqlCustomerDAO();
        }
        return customerDAO;
    }

    public static ItemDAOInterface getItemDAO() {
        if (itemDAO == null) {
            itemDAO = new MySqlItemDAO();
        }
        return itemDAO;
    }    
    
    
    // public getVoIPCustomerDAO() {}
    /*
    public AccountDAO getAccountDAO() {
    // CloudscapeAccountDAO implements AccountDAO
    return new CloudscapeAccountDAO();
    }
    public OrderDAO getOrderDAO() {
    // CloudscapeOrderDAO implements OrderDAO
    return new CloudscapeOrderDAO();
    }
     */
}
