package DAO.mySql;

import DAO.interfaces.CustomerDAOInterface;
import DAO.factory.MySqlDAOFactory;
import DAO.transfertObject.CustomerTO;

import java.util.ArrayList;

import java.sql.Connection;
import java.sql.SQLException;
import java.sql.Statement;
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
public class CustomerMySqlDAO implements CustomerDAOInterface {

    public CustomerMySqlDAO() {
        //initialization
    }
    // The following methods can use MySqlDAOFactory.createConnection() 
    // to get a connection as required
    public int insertCustomer(CustomerTO customerTO) {

        int error = 0;

        //Implement insert customer here.
        String insert = "insert into customer (first_name, last_name, login, password, mail, sexe, birthday, phone, cell_phone) ";
        String values = "values (\"" + customerTO.getFirstName() +
                "\",\"" + customerTO.getLastName() + "\",\"" + customerTO.getLogin() +
                "\",\"" + customerTO.getPassword() + "\",\"" + customerTO.getMail() +
                "\",\"" + customerTO.getSexe() + "\",\"" + customerTO.getBirthday() +
                "\",\"" + customerTO.getPhone() + "\",\"" + customerTO.getCellPhone() + "\");";

        insert += values;

        /*
        String values = "values (\"" + firstName + "\",\"" + lastName + "\",\"" + login + "\",\"" + password +
        "\",\"" + mail + "\",\"" + sexe + "\"";
        
        if (phone.compareTo("") != 0) {
        insert += ", TEL";
        values += ",\"" + phone + "\"";
        }
        if (cellPhone.compareTo("") != 0) {
        insert += ", GSM";
        values += ",\"" + cellPhone + "\"";
        }        
        if (birthday.compareTo("") != 0) {
        insert += ", BORN";
        values += ",\"" + birthday + "\"";
        }
        
        insert += ") " + values + ");";
         */

        Statement st = null;
        Connection conn = (Connection) MySqlDAOFactory.createConnectionWithJNDI();

        try {
            st = conn.createStatement();
            st.executeUpdate(insert);
        } catch (SQLException e2) {
            System.out.println("SqlException : " + e2);
            error = -1;
        }
        try {
            conn.close();
        } catch (Exception e3) {
            System.out.println("Erreur fermeture" + e3);
        }

        // Return newly created customer number
        // or a -1 on error    
        return error;
    }

    public boolean deleteCustomer() {
        boolean isOk = true;

        // Implement delete customer here
        // Return true on success, false on failure

        return isOk;
    }

    public Customer findCustomer() {

        Customer customer = null;

        // Implement find a customer here using supplied               
        // argument values as search criteria
        // Return a Transfer Object if found,
        // return null on error or if not found

        return customer;
    }

    public boolean updateCustomer() {
        boolean isOk = true;
        // implement update record here using data
        // from the customerData Transfer Object
        // Return true on success, false on failure or
        // error

        return isOk;
    }

    public RowSet selectAllCustomersRS() {
        RowSet rs = null;
        
        return rs;
        
    }

    public ArrayList<CustomerTO> selectAllCustomersTO() {
        ArrayList<CustomerTO> customerTOs = null;
        
        return customerTOs;
    }
}
