package DAO.factory;

import DAO.interfaces.*;
import DAO.mySql.*;

import DAO.transfertObject.InternetSubscribeTO;
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
    private static ItemDAOInterface itemDAO = null;
    private static CustomerDAOInterface customerDAO = null;
    private static LineDAOInterface lineDAO = null;
    private static InternetSubscribeDAOInterface internetSubscribeDAO = null;

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

    public ItemDAOInterface getItemDAO() {
        if (itemDAO == null) {
            itemDAO = new ItemMySqlDAO();
        }
        return itemDAO;
    }    // public getVoIPCustomerDAO() {}

    public InternetSubscribeDAOInterface getInternetSubscribeDAO() {
        throw new UnsupportedOperationException("Not supported yet.");
    }
    
    public LineDAOInterface getLineDAO() {
        // MySqlCustomerDAO implements CustomerDAO 
        if (lineDAO == null) {
            lineDAO = new LineMySqlDAO();
        }
        return lineDAO;
    }    
    
}
