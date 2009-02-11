package DAO.mySql;

import DAO.interfaces.InternetSubscribeDAOInterface;
import DAO.transfertObject.InternetSubscribeTO;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;

/**
 *
 * @author vincent
 */
public class InternetSubscribeMySqlDAO extends MySqlGeneralObjectDAO implements InternetSubscribeDAOInterface {
    
    public ArrayList<InternetSubscribeTO> selectAllInternetSubscribeTO(){
        
         //Returned object
        ArrayList<InternetSubscribeTO> internetSubscribes = new ArrayList<InternetSubscribeTO>();

        //Connexion to the database with JNDI 
        Connection conn = (Connection) getConnectionWithJNDI();

        //transaction or sequence of queries
        Statement st = null;

        //result of the queries
        ResultSet rs = null;
        
        return internetSubscribes;
    }

}
