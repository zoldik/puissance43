package DAO.mySql;

import DAO.interfaces.VoipSubscribeDAOInterface;
import DAO.transfertObject.VoipSubscribeTO;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.LinkedList;

/**
 *
 * @author vincent
 */
public class VoipSubscribeMySqlDAO extends MySqlGeneralObjectDAO implements VoipSubscribeDAOInterface {

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
            st.executeUpdate("DELETE FROM `voip_subscribe` WHERE `id_voip_subscribe` ="+id+";");             
        }
        catch(SQLException e)
        {
             error = e.toString();            
        }
        closeConnection(conn);
        
        return error;
    }
    
    public String insertVoipSubscribe(VoipSubscribeTO voipSubscribeTO) {
        //Return object
        String error = "pas d'erreur";

        //Connexion to the database with JNDI 
        Connection conn = (Connection) getConnectionWithJNDI();

        //transaction or sequence of queries
        Statement st = null;

        //result of the queries
        ResultSet rs = null;

        String insertSubscribe = "INSERT INTO `voip_subscribe` ( `name_voip_subscribe` , `description_voip_subscribe` , `price` , `type_voip_subscribe` ) ";

        String valuesSubscribe = "VALUES ( " + "'" + voipSubscribeTO.getName() + "','" + voipSubscribeTO.getDescription() +
                "','" + voipSubscribeTO.getPrice() + "','" + voipSubscribeTO.getType() + "');";


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

    public LinkedList<VoipSubscribeTO> selectAllVoipSubscribeTOs() {

        //Return object
        LinkedList<VoipSubscribeTO> voipSubscribeTOs = new LinkedList<VoipSubscribeTO>();

        //Connexion to the database with JNDI 
        Connection conn = (Connection) getConnectionWithJNDI();

        //transaction or sequence of queries
        Statement st = null;

        //result of the queries
        ResultSet rs = null;

        try {

            st = conn.createStatement();
            rs = st.executeQuery("SELECT * FROM voip_subscribe ");

            while (rs.next()) {
                VoipSubscribeTO voipSubscribeTO = new VoipSubscribeTO();

                voipSubscribeTO.setId(rs.getInt("id_voip_subscribe"));
                voipSubscribeTO.setName(rs.getString("name_voip_subscribe"));
                voipSubscribeTO.setDescription(rs.getString("description_voip_subscribe"));
                voipSubscribeTO.setPrice(Float.parseFloat(rs.getString("price")));
                voipSubscribeTO.setType(rs.getString("type_voip_subscribe"));

                voipSubscribeTOs.add(voipSubscribeTO);
            }

        } catch (Exception e) {

            System.out.println("Exception" + e);
            e.printStackTrace();

        } finally {

            closeRsAndSt(rs, st);

        }
        closeConnection(conn);

        return voipSubscribeTOs;
    }    
}
