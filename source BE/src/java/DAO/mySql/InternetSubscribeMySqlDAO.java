package DAO.mySql;

import DAO.interfaces.InternetSubscribeDAOInterface;
import DAO.transfertObject.InternetSubscribeTO;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

/**
 *
 * @author vincent
 */
public class InternetSubscribeMySqlDAO extends MySqlGeneralObjectDAO implements InternetSubscribeDAOInterface {

    public String deleteById(int id) {
        //Return object
        String error = "pas d'erreur";

        //Connexion to the database with JNDI 
        Connection conn = (Connection) getConnectionWithJNDI();

        //transaction or sequence of queries
        Statement st = null;
                
        try
        {
            st=conn.createStatement();
            st.executeUpdate("DELETE FROM `internet_subscribe` WHERE `id_internet_subscribe` ="+id+";");
        }
        catch(SQLException e)
        {
             error = e.toString();            
        }
        closeConnection(conn);
        
        return error;
    }
    
    public String insertInternetSubscribe(InternetSubscribeTO internetSubscribeTO) {
        //Return object
        String error = "pas d'erreur";

        //Connexion to the database with JNDI 
        Connection conn = (Connection) getConnectionWithJNDI();

        //transaction or sequence of queries
        Statement st = null;

        //result of the queries
        ResultSet rs = null;

        String insertSubscribe = "INSERT INTO `internet_subscribe` ( `name_subscribe` , `description_subscribe` , `price` , `rate` ) ";

        String valuesSubscribe = "VALUES ( " + "'" + internetSubscribeTO.getNameSubscribe() + "','" + internetSubscribeTO.getDescriptionSubscribe() +
                "','" + internetSubscribeTO.getPrice() + "','" + internetSubscribeTO.getRate() + "');";


        insertSubscribe += valuesSubscribe;

        try {
            st = conn.createStatement();
            st.executeUpdate(insertSubscribe);
        } catch (SQLException e) {
            error = e.toString();
        }

        closeConnection(conn);
         
        return error;
    }

    public ArrayList<InternetSubscribeTO> selectAllInternetSubscribeTOs() {

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

                internetSubscribeTO.setId(rs.getInt("id_internet_subscribe"));
                internetSubscribeTO.setNameSubscribe(rs.getString("name_subscribe"));
                internetSubscribeTO.setDescriptionSubscribe(rs.getString("description_subscribe"));
                internetSubscribeTO.setPrice(Float.parseFloat(rs.getString("price")));
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
