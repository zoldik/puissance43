package DAO.factory;

import DAO.interfaces.*;
import DAO.mySql.*;

/**
 *
 * @author vincent
 */
public class MySqlDAOFactory extends DAOFactory {
    //*********************
    //STATIC ATTRIBUTES
    //*********************    
    private static AddressDAOInterface addressDAO = null;
    private static ContactVoipDAOInterface contactVoipDAO = null;    
    private static CustomerDAOInterface customerDAO = null;    
    private static InternetSubscribeDAOInterface internetSubscribeDAO = null;
    private static ItemDAOInterface itemDAO = null;
    private static LineDAOInterface lineDAO = null;
    private static MailDAOInterface mailDAO = null;
    private static VodSubscribeDAOInterface vodSubscribeDAO = null;
    private static VoipSubscribeDAOInterface voipSubscribeDAO = null;
    private static VoipRssDAOInterface voipRssDAO = null;
    private static CustomerBillDAOInterface customerBillDAO = null; 
    
    //*********************
    //STATIC METHODS TO GET THE DAO OBJECTS 
    //*********************       
    
    public AddressDAOInterface getAddressDAO() {
        if (addressDAO == null) {
            addressDAO = new AddressMySqlDAO();
        }
        return addressDAO;
    }
    
    public ContactVoipDAOInterface getContactVoipDAO() {
        // MySqlContactVoipDAO implements ContactVoipDAO 
        if (contactVoipDAO == null) {
            contactVoipDAO = new ContactVoipMySqlDAO();
        }
        return contactVoipDAO;
    }
    
    public CustomerDAOInterface getCustomerDAO() {
        // MySql CustomerDAO implements CustomerDAO 
        if (customerDAO == null) {
            customerDAO = new CustomerMySqlDAO();
        }
        return customerDAO;
    }

    public InternetSubscribeDAOInterface getInternetSubscribeDAO() {
        if (internetSubscribeDAO == null) {
            internetSubscribeDAO = new InternetSubscribeMySqlDAO();
        }
        return internetSubscribeDAO;
    }
    
    public ItemDAOInterface getItemDAO() {
        if (itemDAO == null) {
            itemDAO = new ItemMySqlDAO();
        }
        return itemDAO;
    }

    public LineDAOInterface getLineDAO() {
        // MySqlCustomerDAO implements CustomerDAO 
        if (lineDAO == null) {
            lineDAO = new LineMySqlDAO();
        }
        return lineDAO;
    }
    
    public MailDAOInterface getMailDAO() {
        // MySqlCustomerDAO implements CustomerDAO 
        if (mailDAO == null) {
            mailDAO = new MailMySqlDAO();
        }
        return mailDAO;
    }    

    public VodSubscribeDAOInterface getVodSubscribeDAO() {
        if (vodSubscribeDAO == null) {
            vodSubscribeDAO = new VodSubscribeMySqlDAO();
        }
        return vodSubscribeDAO;
    }

    public VoipSubscribeDAOInterface getVoipSubscribeDAO() {
         if (voipSubscribeDAO == null) {
            voipSubscribeDAO = new VoipSubscribeMySqlDAO();
        }
        return voipSubscribeDAO;
    }
      
    public VoipRssDAOInterface getVoipRssDAO() {
        if (voipRssDAO == null) {
            voipRssDAO = new VoipRssMySqlDAO();
        }
        return voipRssDAO;
    }
    
    public CustomerBillDAOInterface getCustomerBillDAO() {
        // MySql CustomerBillDAO implements CustomerDAO 
        if (customerBillDAO == null) {
            customerBillDAO = new CustomerBillMySqlDAO();
        }
        return customerBillDAO;
    }
}
