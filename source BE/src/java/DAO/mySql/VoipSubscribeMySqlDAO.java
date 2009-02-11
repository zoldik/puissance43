package DAO.mySql;

import DAO.interfaces.VoipSubscribeDAOInterface;
import DAO.transfertObject.VoipSubscribeTO;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.LinkedList;

/**
 *
 * @author vincent
 */
public class VoipSubscribeMySqlDAO extends MySqlGeneralObjectDAO implements VoipSubscribeDAOInterface {

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
            rs = st.executeQuery("SELECT * FROM vod_subscribe ");

            while (rs.next()) {
                VoipSubscribeTO voipSubscribeTO = new VoipSubscribeTO();
                
                voipSubscribeTO.setName(rs.getString("name_vod_subscribe"));
                voipSubscribeTO.setDescription(rs.getString("description_vod_subscribe"));
                voipSubscribeTO.setPrice("price");
                voipSubscribeTO.setType("type_vod_subscribe"); 
                
                voipSubscribeTOs.add(voipSubscribeTO);
            } 
            
        }catch (Exception e) {

            System.out.println("Exception" + e);
            e.printStackTrace();

        } finally {

            closeRsAndSt(rs, st);

        }
        closeConnection(conn);
        
        return voipSubscribeTOs;
    }

}
