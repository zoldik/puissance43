package DAO.factory;

import DAO.factory.MySqlDAOFactory;

/**Abstract class DAO Factory
 *
 * @author vincent
 */
public abstract class DAOFactory {
    // List of DAO types supported by the factory
    public static final int MYSQL = 1;
    public static final int POSTGRESQL = 2;
    public static final int ORACLE = 3;
    public static final int SYBASE = 4;
    

    // There will be a method for each DAO that can be 
    // created. The concrete factories will have to 
    // implement these methods.
    //public abstract CustomerDAO getCustomerDAO();

    //public abstract AccountDAO getAccountDAO();

    //public abstract OrderDAO getOrderDAO();
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
