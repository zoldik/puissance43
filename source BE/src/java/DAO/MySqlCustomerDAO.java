package DAO;

import java.util.Collection;
import javax.sql.RowSet;
import model.account.Customer;

/** *CloudscapeCustomerDAO implementation of the 
// CustomerDAO interface. 
 * 
 * This class can contain all
// Cloudscape specific code and SQL statements. 
// The client is thus shielded from knowing 
// these implementation details.

 * @author vincent
 */
public class MySqlCustomerDAO implements CustomerDAO {

    public MySqlCustomerDAO() {
        //initialization
    }
    // The following methods can use
    // CloudscapeDAOFactory.createConnection() 
    // to get a connection as required
    public int insertCustomer() {
        throw new UnsupportedOperationException("Not supported yet.");
    // Implement insert customer here.
    // Return newly created customer number
    // or a -1 on error

    }

    public boolean deleteCustomer() {
        throw new UnsupportedOperationException("Not supported yet.");
    // Implement delete customer here
    // Return true on success, false on failure

    }

    public Customer findCustomer() {
        throw new UnsupportedOperationException("Not supported yet.");
    // Implement find a customer here using supplied
    // argument values as search criteria
    // Return a Transfer Object if found,
    // return null on error or if not found

    }

    public boolean updateCustomer() {
        throw new UnsupportedOperationException("Not supported yet.");
        // implement update record here using data
    // from the customerData Transfer Object
    // Return true on success, false on failure or
    // error

    }

    public RowSet selectCustomersRS() {
        throw new UnsupportedOperationException("Not supported yet.");
        // implement search customers here using the
        // supplied criteria.
        // Return a RowSet.
    }

    public Collection selectCustomersTO() {
        throw new UnsupportedOperationException("Not supported yet.");
        // implement search customers here using the
        // supplied criteria.
        // Alternatively, implement to return a Collection 
        // of Transfer Objects.

    }
}
