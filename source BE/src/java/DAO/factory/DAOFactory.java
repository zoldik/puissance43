package DAO.factory;

import DAO.interfaces.*;

/**Abstract class DAO Factory
 *
 * @author vincent
 */
public abstract class DAOFactory {
    // List of DAO types supported by the factory
    //Normal que se soit en public 
    public static final int MYSQL = 1;
    public static final int POSTGRESQL = 2;
    public static final int ORACLE = 3;
    public static final int SYBASE = 4;
    
    
    
    // There will be a method for each DAO that can be 
    // created. The concrete factories will have to 
    // implement these methods.
    public abstract AddressDAOInterface getAddressDAO();
    
    public abstract ContactVoipDAOInterface getContactVoipDAO();
    
    public abstract CustomerDAOInterface getCustomerDAO();
        
    public abstract InternetSubscribeDAOInterface getInternetSubscribeDAO();
        
    public abstract ItemDAOInterface getItemDAO();
    
    public abstract LineDAOInterface getLineDAO();
    
    public abstract MailDAOInterface getMailDAO();
    
    public abstract OrderDAOInterface getOrderDAO();
    
    public abstract VodSubscribeDAOInterface getVodSubscribeDAO();
    
    public abstract VoipSubscribeDAOInterface getVoipSubscribeDAO();
    
    public abstract VoipRssDAOInterface getVoipRssDAO();
    
    public abstract CustomerBillDAOInterface getCustomerBillDAO();
    
    //***********************    
    
    public static DAOFactory getDAOFactory(
            int whichFactory) {

        switch (whichFactory) {
            case MYSQL:
                return new MySqlDAOFactory();
            //case POSTGRESQL :
            //return new PostGreSqlDAOFactory();
            //case ORACLE:
            //return new OracleDAOFactory();
            //case SYBASE:
            //return new SybaseDAOFactory();
            default:
                return null;
        }
    }   
    
}
