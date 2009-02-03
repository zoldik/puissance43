package DAO;

import java.sql.Connection;
import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

/**
 *
 * @author vincent
 */
public class MySqlDAOFactory extends DAOFactory {
    
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
        System.out.println("Success connection \n");
        return conn;
    }
    /*
    public CustomerDAO getCustomerDAO() {
    // CloudscapeCustomerDAO implements CustomerDAO
    return new CloudscapeCustomerDAO();
    }
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
