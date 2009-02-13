package DAO.interfaces;

import DAO.transfertObject.AddressTO;
import DAO.transfertObject.CustomerTO;

import java.util.LinkedList;

import javax.sql.RowSet;

/**Interface customerDAO is a part of DAO pattern.
 * 
 * The CustomerDAO interface shown in Example 9.3 defines the DAO methods for Customer
 * persistent object that are implemented by all concrete DAO implementations, such as
 * CloudscapeCustomerDAO, OracleCustomerDAO, MySql CustomerDAO and SybaseCustomerDAO.
 * @author vincent
 */
public interface CustomerDAOInterface {

    public boolean deleteCustomer();

    public CustomerTO findCustomer();

    public CustomerTO findCustomer(String login, String password);
    
    public CustomerTO findCustomerById(int id);

    public CustomerTO findCustomerByLogin(String login);    

    public String insertCustomer(CustomerTO customerTO, AddressTO addressTO);

    public boolean isAllowed(String login, String password);

    public boolean isLoginUsed(String login);

    public boolean isValidEmail(String login, String email);

    public RowSet selectAllCustomersRS();

    public LinkedList<CustomerTO> selectAllCustomersTO();

    public boolean updateCustomer();
    
    public String updateCustomerInternetSubscribe(int idCustomer, int idInternetSubscribe);
    
    public String updateCustomerVoipSubscribe(int idCustomer, int idVoipSubscribe); 
    
    public String updateCustomerVodSubscribe(int idCustomer, int idVodSubscribe); 

    public boolean validAccount(int id);
}
