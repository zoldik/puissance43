package DAO.interfaces;

import java.util.Collection;
import javax.sql.RowSet;
import model.account.Customer;

/**Interface customerDAO is a part of DAO pattern.
 * 
 * The CustomerDAO interface shown in Example 9.3 defines the DAO methods for Customer
 * persistent object that are implemented by all concrete DAO implementations, such as
 * CloudscapeCustomerDAO, OracleCustomerDAO, MySqlCustomerDAO and SybaseCustomerDAO.
 * @author vincent
 */
public interface CustomerDAO {

    public int insertCustomer();

    public boolean deleteCustomer();

    public Customer findCustomer();

    public boolean updateCustomer();

    public RowSet selectCustomersRS();

    public Collection selectCustomersTO();
}
