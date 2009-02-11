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
    
    public ArrayList<InternetSubscribeTO> selectAllInternetSubscribeTOs(){
        
         //Returned object
        ArrayList<InternetSubscribeTO> internetSubscribes = new ArrayList<InternetSubscribeTO>();

        //Connexion to the database with JNDI 
        Connection conn = (Connection) getConnectionWithJNDI();

        //transaction or sequence of queries
        Statement st = null;

        //result of the queries
        ResultSet rs = null;
        
        try {

            st = conn.createStatement();
            rs = st.executeQuery("SELECT * FROM `internet_subscribe`");

        while (rs.next()) {
            InternetSubscribeTO internetSubscribeTO = new InternetSubscribeTO();
            
            internetSubscribeTO.setNameSubscribe(rs.getString("name_subscribe"));
            internetSubscribeTO.setDescriptionSubscribe(rs.getString("description_subscribe"));
            internetSubscribeTO.setPrice(rs.getString("price"));
            internetSubscribeTO.setRate(rs.getString("rate"));
            
            internetSubscribes.add(internetSubscribeTO);
            
        }
                
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            closeRsAndSt(rs, st);
        }
        closeConnection(conn);
        return internetSubscribes;        
    }

}
