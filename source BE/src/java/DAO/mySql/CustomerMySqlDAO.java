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
    public String insertCustomer(CustomerTO customerTO) {

        //Implement insert customer here.

        //Return object
        //int error = 0;
        String error = "pas d'erreur";

        //Connexion to the database with JNDI 
        Connection conn = (Connection) MySqlDAOFactory.createConnectionWithJNDI();

        //transaction or sequence of queries
        Statement st = null;

        //Test 1
        /*
        String insert = "INSERT INTO `customer` ( `id_address` , `first_name` , " +
        "`last_name` , `login` , `password`, `mail` , `sexe` , `birthday` , `phone` , `cell_phone` , `profession` , " +
        "`company` , `account_level` ) ";
        
        String values = " VALUES ( " + "\""+ "5" + "\",\"" + "getFirstName()" +
        "\",\"" + "getLastName()" + "\",\"" + "getLogin()" +
        "\",\"" + "getPassword()" + "\",\"" + "getMail()" +
        "\",\"" + "M" + "\",\"" + "Birthday" +
        "\",\"" + "getPhone()" + "\",\"" + "getCellPhone()" +
        "\",\"" + "profession" + "\",\"" + "company" + "\",\"" + "1" + "\");";
        
        insert += values;
         */

        //Test 2
        //Il y a 13 champs sur les 15 que contient la table customer. En effet :
        //Pas de `id_customer`, the field is on auto_increment;
        //Pas de `id_internet_subscribe`

        //Pour le moment `id_address` a une valeur par défaut de 5. En effet, id_address is not null car
        //IMPORTANT un customer à au moins 1 adresse

        //IMPORTANT
        //name column between `` 
        //value between ' or "/ 
        /*
        String insert = "INSERT INTO `customer` ( `id_address` , `first_name` , " +
        "`last_name` , `login` , `password`, `mail` , `sexe` , `birthday` , `phone` , `cell_phone` , `profession` , " +
        "`company` , `account_level` ) ";
        
        String values = " VALUES ( " + " 5 ," + " 'getFirstName()' ," +
        " 'getLastName()' ," + " 'getLogin()' ," +
        " 'getPassword()' ," + " 'getMail()' ," +
        " 'M' ," + " 'Birthday' ," +
        " 'getPhone()' ," + " 'getCellPhone()' ," +
        " 'profession' ," + " 'company' ," + " '1' " + ");";
        
        insert += values;
         */

        //Test3
        /*
        String insert = "INSERT INTO `customer` ( `id_address` , `first_name` , " +
        "`last_name` , `login` , `password`, `mail` , `sexe` , `birthday` , `phone` , `cell_phone` , `profession` , " +
        "`company` , `account_level` ) ";
        
        String values = " VALUES ( " + "\"" + "5" + "\",\"" + customerTO.getFirstName() +
        "\",\"" + customerTO.getLastName() + "\",\"" + customerTO.getLogin() +
        "\",\"" + customerTO.getPassword() + "\",\"" + customerTO.getMail() +
        "\",\"" + customerTO.getSexe() + "\",\"" + customerTO.getBirthday() +
        "\",\"" + customerTO.getPhone() + "\",\"" + customerTO.getCellPhone() +
        "\",\"" + "profession" + "\",\"" + "company" + "\",\"" + "1" + "\");";
        
        insert += values;
         */

        //Test4
        //ATTENTION à ne pas mettre d'espace pour les values
        String insert = "INSERT INTO `customer` ( `id_address` , `first_name` , " +
                "`last_name` , `login` , `password`, `mail` , `sexe` , `birthday` , `phone` , `cell_phone` , `profession` , " +
                "`company` , `account_level` ) ";

        String values = " VALUES ( " + "'" + "5" + "','" + customerTO.getFirstName() +
                "','" + customerTO.getLastName() + "','" + customerTO.getLogin() +
                "','" + customerTO.getPassword() + "','" + customerTO.getMail() +
                "','" + customerTO.getSexe() + "','" + customerTO.getBirthday() +
                "','" + customerTO.getPhone() + "','" + customerTO.getCellPhone() +
                "','" + "profession" + "','" + "company" + "','" + "1" + "');";

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

        try {
            st = conn.createStatement();
            st.executeUpdate(insert);
        } catch (SQLException e) {
            System.out.println("SqlException : " + e);
            //error = -1;
            error = e.toString();        
        }

        //Manque fermeture st 

        MySqlDAOFactory.closeConnection();

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
