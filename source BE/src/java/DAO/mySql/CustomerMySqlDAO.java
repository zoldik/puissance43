package DAO.mySql;

import DAO.interfaces.CustomerDAOInterface;
import DAO.factory.MySqlDAOFactory;
import DAO.transfertObject.AddressTO;
import DAO.transfertObject.CustomerTO;

import java.util.LinkedList;

import java.sql.PreparedStatement;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import javax.sql.RowSet;


/** *CloudscapeCustomerDAO implementation of the 
// CustomerDAO interface. 
 * 
 * This class can contain all        RowSet rs = null;

return rs;
// Cloudscape specific code and SQL statements. 
// The client is thus shielded from knowing 
// these implementation details.

 * @author vincent
 */
public class CustomerMySqlDAO extends MySqlGeneralObjectDAO implements CustomerDAOInterface {

    public CustomerMySqlDAO() {
        //initialization
    }
    // The following methods can use MySqlDAOFactory.createConnection() 
    // to get a connection as required
    public boolean deleteCustomer() {
        boolean isOk = true;

        // Implement delete customer here
        // Return true on success, false on failure

        return isOk;
    }

    public CustomerTO findCustomer() {

        CustomerTO customer = null;

        // Implement find a customer here using supplied               
        // argument values as search criteria
        // Return a Transfer Object if found,
        // return null on error or if not found

        return customer;
    }
    
    
    public CustomerTO findCustomerById(int id) {

        Integer idInteger = new Integer(id);

        //Return object
        CustomerTO customer = new CustomerTO();

        //Connexion to the database with JNDI 
        Connection conn = (Connection) getConnectionWithJNDI();

        //transaction or sequence of queries
        PreparedStatement pSt = null;

        //result of the queries
        ResultSet rs = null;

        try {
            boolean okay=false;
            pSt = conn.prepareStatement("SELECT * FROM `customer` WHERE `id_customer` = ? ");
            pSt.setString(1, idInteger.toString());
            rs = pSt.executeQuery();

            if (rs.next()==true)
                {okay=true;}
                else 
                {okay=false;}
            
            if (okay) {
                customer.setId(rs.getInt("id_customer"));
                customer.setFirstName(rs.getString("first_name"));
                customer.setLastName(rs.getString("last_name"));
                customer.setLogin(rs.getString("login"));
                customer.setPassword(rs.getString("password"));
                customer.setMail(rs.getString("mail"));
                customer.setSexe(rs.getString("sexe"));
                customer.setBirthday(rs.getString("birthday"));
                customer.setPhone(rs.getString("phone"));
                customer.setCellPhone(rs.getString("cell_phone"));
                customer.setProfession(rs.getString("profession"));
                customer.setCompany(rs.getString("company"));
                customer.setAccountLevel(rs.getInt("account_level"));
                customer.setValid(rs.getBoolean("valid"));
            }
            

        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            closeRsAndSt(rs, pSt);
        }
        closeConnection(conn);

        return customer;
    }
    
    public CustomerTO findCustomerByLogin(String login) {

        //Return object
        CustomerTO customer = new CustomerTO();

        //Connexion to the database with JNDI 
        Connection conn = (Connection) getConnectionWithJNDI();

        //transaction or sequence of queries
        PreparedStatement pSt = null;

        //result of the queries
        ResultSet rs = null;

        try {
            boolean okay=false;
            pSt = conn.prepareStatement("SELECT * FROM `customer` WHERE `login` = ? ");
            pSt.setString(1, login);
            rs = pSt.executeQuery();

            if (rs.next()==true)
                {okay=true;}
                else 
                {okay=false;}
            
            if (okay) {
                customer = findCustomerById(rs.getInt("id_customer"));
            }
            

        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            closeRsAndSt(rs, pSt);
        }
        closeConnection(conn);

        return customer;
    }
    
    
    public CustomerTO findCustomer(String login, String password) {

        //Return object
        CustomerTO customer = new CustomerTO();

        //Connexion to the database with JNDI 
        Connection conn = (Connection) getConnectionWithJNDI();

        //transaction or sequence of queries
        PreparedStatement pSt = null;

        //result of the queries
        ResultSet rs = null;

        try {
            
            if (isAllowed(login,password)) {
                customer = findCustomerByLogin(login);
                
            }
            

        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            closeRsAndSt(rs, pSt);
        }
        closeConnection(conn);

        return customer;
    }
    

    public String insertCustomer(CustomerTO customerTO, AddressTO addressTO) {

        //Implement insert customer here.

        //Return object
        //int error = 0;
        String error = "pas d'erreur";

        //Connexion to the database with JNDI 
        Connection conn = (Connection) getConnectionWithJNDI();

        //transaction or sequence of queries
        Statement st = null;
        
        //result of the queries
        ResultSet rs = null;
        
        //IMPORTANT
        //name column between `` 
        //value between ' or "/ 

        //Il y a 4 champs sur les 6 que contient la table address. En effet :
        //Pas de `id_address`, the field is on auto_increment;
        //Pas de `type_address`
        
        //version1
        /*
        String insertAddress = "INSERT INTO `address` ( `street` , `postal_code` , `city` , `country` ) ";

        String valuesAddress = "VALUES ( '111, avenue Roger Salengro' , '59 160' , 'LOMME' , 'FRANCE' ) ";
    
        
        insertAddress += valuesAddress;
        */
        
        String insertAddress = "INSERT INTO `address` ( `street` , `postal_code` , `city` , `country` ) ";

        String valuesAddress = "VALUES ( " + "'" + addressTO.getStreet() + "','" + addressTO.getPostalCode() +
                "','" + addressTO.getCity() + "','" + addressTO.getCountry() + "');";
    
        
        insertAddress += valuesAddress;
        
        try {
            st = conn.createStatement();
            st.executeUpdate(insertAddress);            
        } catch (SQLException e) {
            System.out.println("SqlException : " + e);
            //error = -1;
            error = e.toString();
        }
        
        String selectId = "SELECT `id_address` FROM `address` WHERE `street` = '" + addressTO.getStreet() + "' AND `postal_code` ='" + 
                addressTO.getPostalCode() + "' AND `city` = '" + addressTO.getCity() + "' AND `country` = '"+ addressTO.getCountry() + 
                "' LIMIT 0 , 30";
        
        String idAddress = null;
        try {
            st = conn.createStatement();
            rs = st.executeQuery(selectId);
            
            rs.next();
            idAddress = rs.getString("id_address");
        } catch (SQLException e) {
            System.out.println("SqlException : " + e);
            //error = -1;
            error = e.toString();
        }
        
        
        //Il y a 13 champs sur les 15 que contient la table customer. En effet :
        //Pas de `id_customer`, the field is on auto_increment;
        //Pas de `id_internet_subscribe` 
        //Pour le moment `id_address` a une valeur par défaut de 5. En effet, id_address is not null car
        //IMPORTANT un customer à au moins 1 adresse
        //ATTENTION à ne pas mettre d'espace pour les values
        String insertCustomer = "INSERT INTO `customer` ( `id_address` , `first_name` , " +
                "`last_name` , `login` , `password`, `mail` , `sexe` , `birthday` , `phone` , `cell_phone` , `profession` , " +
                "`company` , `account_level` ) ";

        String valuesCustomer = " VALUES ( " + "'" + idAddress + "','" + customerTO.getFirstName() +
                "','" + customerTO.getLastName() + "','" + customerTO.getLogin() +
                "','" + customerTO.getPassword() + "','" + customerTO.getMail() +
                "','" + customerTO.getSexe() + "','" + customerTO.getBirthday() +
                "','" + customerTO.getPhone() + "','" + customerTO.getCellPhone() +
                "','" + "profession" + "','" + "company" + "','" + "1" + "');";

        insertCustomer += valuesCustomer;

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
            st.executeUpdate(insertCustomer);            
        } catch (SQLException e) {
            System.out.println("SqlException : " + e);
            //error = -1;
            error = e.toString();
        }

        //Manque fermeture st 

        closeConnection(conn);

        // Return newly created customer number
        // or a -1 on error    
        return error;
    }

    /** Verifie si l'utilisateur passé en argument existe dans la DB
     * 
     * @param log
     * @return boolean
     * @throws java.lang.Exception
     */
    public boolean isLoginUsed(String login) {

        //Return object
        boolean isUsed = false;

        //Connexion to the database with JNDI 
        Connection conn = (Connection) getConnectionWithJNDI();

        //transaction or sequence of queries
        Statement st = null;

        //result of the queries
        ResultSet rs = null;

        try {

            st = conn.createStatement();
            rs = st.executeQuery("select * from customer where login='" + login + "'");

            //rs.beforeFirst();

            if (rs.next() == true) {
                //The login is already used
                isUsed = true;
            } else {
                isUsed = false;
            }


        } catch (Exception e) {

            System.out.println("Exception" + e);
            e.printStackTrace();

        } finally {

            closeRsAndSt(rs, st);

        }
        closeConnection(conn);
        return isUsed;
    }

    public RowSet selectAllCustomersRS() {
        
        Connection conn = (Connection) getConnectionWithJNDI();
        
        Statement st = null;
        RowSet rs = null;

        return rs;

    }

    public LinkedList<CustomerTO> selectAllCustomersTO() {
        LinkedList<CustomerTO> customerTOs = null;

        Connection conn = (Connection) getConnectionWithJNDI();
        Statement st = null;
        ResultSet rs = null;

        try {

            st = conn.createStatement();
            rs = st.executeQuery("SELECT * FROM customer ");

            while (rs.next()) {
                CustomerTO cu = new CustomerTO();

                cu.setAccountLevel(rs.getInt("account_level"));
                cu.setBirthday(rs.getString("birthday"));
                cu.setCellPhone(rs.getString("cell_phone"));
                cu.setCompany(rs.getString("company"));
                cu.setFirstName(rs.getString("first_name"));
                cu.setId(rs.getInt("id_customer"));
                cu.setLastName(rs.getString("last_name"));
                cu.setLogin(rs.getString("login"));
                cu.setMail(rs.getString("mail"));
                cu.setPhone(rs.getString("phone"));
                cu.setProfession(rs.getString("profession"));
                cu.setSexe(rs.getString("sexe"));
                cu.setValid(rs.getBoolean("valid"));
                
                customerTOs.add(cu);                
                
            }
            
        } catch (Exception e) {
            System.out.println("Exception" + e);
            e.printStackTrace();
        } finally {
            closeRsAndSt(rs, st);
        }
        closeConnection(conn);

        return customerTOs;
    }

    public boolean updateCustomer() {
        boolean isOk = true;
        // implement update record here using data
        // from the customerData Transfer Object
        // Return true on success, false on failure or
        // error

        return isOk;
    }
    
    /** Vérifie si le login et le password correspondent
     * 
     * @param login
     * @param password
     * @return boolean
     * @throws java.lang.Exception
     */
    public boolean isAllowed(String login, String password) {

        //Return object
        boolean isAllowed = false;

        //Connexion to the database with JNDI 
        Connection conn = (Connection) getConnectionWithJNDI();

        //transaction or sequence of queries
        Statement st = null;

        //result of the queries
        ResultSet rs = null;

        try {

            st = conn.createStatement();
            rs = st.executeQuery("select * from customer where (login='" + login + "' and password='"+password+"')");

            //rs.beforeFirst();

            if (rs.next() == true) {
                //The login is already used
                isAllowed = true;
            } else {
                isAllowed = false;
            }


        } catch (Exception e) {

            System.out.println("Exception" + e);
            e.printStackTrace();

        } finally {

            closeRsAndSt(rs, st);

        }
        closeConnection(conn);
        return isAllowed;
    }
    
    
    
    public boolean validAccount(int id) {
        
        boolean okay=true;

        //Connexion to the database with JNDI 
        Connection conn = (Connection) getConnectionWithJNDI();
        
        Statement st = null;

        //result of the queries
        ResultSet rs = null;

        try {
            st=conn.createStatement();
            st.executeUpdate("update customer set valid=1 where id_customer=\""+id+"\";");
            
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            closeRsAndSt(rs, st);
        }
        closeConnection(conn);

        return okay;
    }
    
         /** Vérifie qu'un email correspond à un login donné
      * @param login
      * @param email
      * @return boolean
      */
    public boolean isValidEmail(String login, String email)
    {
        boolean okay=false;

        //Connexion to the database with JNDI 
        Connection conn = (Connection) getConnectionWithJNDI();
        
        Statement st = null;

        //result of the queries
        ResultSet rs = null;

        try {
            st=conn.createStatement();
            rs = st.executeQuery("select * from customer where (login='"+login+"' and mail='"+email+"');");

            //rs.beforeFirst();

            if (rs.next() == true) {
                //The login is already used
                okay = true;
            } else {
                okay = false;
            }
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            closeRsAndSt(rs, st);
        }
        closeConnection(conn);

        return okay;
    }
    
}
