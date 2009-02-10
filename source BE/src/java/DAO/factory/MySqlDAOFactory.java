package DAO.factory;

import DAO.interfaces.CustomerDAOInterface;
import DAO.interfaces.ItemDAOInterface;

import DAO.mySql.CustomerMySqlDAO;
import DAO.mySql.ItemMySqlDAO;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import javax.sql.DataSource;

import javax.naming.Context;
import javax.naming.InitialContext;


/**
 *
 * @author vincent
 */
public class MySqlDAOFactory extends DAOFactory {
    //*********************
    //STATIC ATTRIBUTES
    //*********************
    //private static Connection conn = null;
    private static ItemDAOInterface itemDAO = null;
    private static CustomerDAOInterface customerDAO = null;
    //*********************
    //STATIC COMMONS METHODS FOR THE DAO OBJECTS
    //*********************
    /** Connect to the main database (RedNeck database).
     * method to create MySql connections.
     * init uses service JNDI
     * Attention à l'erreurjavax.naming.NoInitialContextException, c'est parce que le serveur n'est pas déployer.     
     * @return Statement
     */
    public static Connection createConnectionWithJNDI() {
        //if (conn == null) {
        Connection conn = null;
        try {
            Context initCtx = new InitialContext();
            DataSource ds = (DataSource) initCtx.lookup("java:MySqlDS");
            conn = ds.getConnection();
        } catch (Exception e) {
            //System.out.println("Connection issue : ");
            e.printStackTrace();
        }
        //System.out.println("Success connection \n");
        //}
        return conn;
    }

    /**Close the BDD's connection
     * close uses the service JNDI.     * 
     */
    public static void closeConnection() {
        try {
            Connection conn = null;
            conn.close();
        } catch (Exception e) {
            System.out.println("\n Impossible de se déconnecter de la base de donnée\n");
            e.printStackTrace();
        }
    }

    /**Method static to close the rs and the st.
     * Use in the DAO objects.
     * 
     * @param rs
     * @param st
     */
    public static void closeRsAndSt(ResultSet rs, Statement st) {
        if (rs != null) {
            try {
                rs.close();
            } catch (SQLException sqlEx) {
                //ignore
                }
            rs = null;
        }

        if (st != null) {
            try {
                st.close();
            } catch (SQLException sqlEx) {
                //ignore
                }
        }
        st = null;
    }

    //*********************
    //STATIC METHODS TO GET THE DAO OBJECTS 
    //*********************       
    public CustomerDAOInterface getCustomerDAO() {
        // MySqlCustomerDAO implements CustomerDAO 
        if (customerDAO == null) {
            customerDAO = new CustomerMySqlDAO();
        }
        return customerDAO;
    }

    public static ItemDAOInterface getItemDAO() {
        if (itemDAO == null) {
            itemDAO = new ItemMySqlDAO();
        }
        return itemDAO;
    }    // public getVoIPCustomerDAO() {}

    /*
    public AccountDAO getAccountDAO() {
    // CloudscapeAccountDAO implements AccountDAO
    return new CloudscapeAccountDAO();
    }
     */
    /*
    public OrderDAO getOrderDAO() {
    // CloudscapeOrderDAO implements OrderDAO
    return new CloudscapeOrderDAO();
    }
     */
}
