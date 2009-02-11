package DAO.interfaces;

import DAO.transfertObject.AddressTO;
import DAO.transfertObject.CustomerTO;

import java.util.LinkedList;

import javax.sql.RowSet;


/**Interface customerDAO is a part of DAO pattern.
 * 
 * The CustomerDAO interface shown in Example 9.3 defines the DAO methods for Customer
 * persistent object that are implemented by all concrete DAO implementations, such as
 * CloudscapeCustomerDAO, OracleCustomerDAO, MySqlCustomerDAO and SybaseCustomerDAO.
 * @author vincent
 */
public interface CustomerDAOInterface {

    public boolean deleteCustomer();
    
    public CustomerTO findCustomer();
    
    public CustomerTO findCustomerById(int id);
    
    public CustomerTO findCustomerByLogin(String login);
    
    public CustomerTO findCustomer(String login, String password);
    
    public String insertCustomer(CustomerTO customerTO, AddressTO addressTO);
 
    public boolean isLoginUsed(String login);

    public RowSet selectAllCustomersRS();

    public LinkedList<CustomerTO> selectAllCustomersTO();
    
    public boolean updateCustomer();
    
    public boolean isAllowed(String login, String password);
}
