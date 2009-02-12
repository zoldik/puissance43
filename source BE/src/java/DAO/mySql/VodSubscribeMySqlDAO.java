package DAO.mySql;

import DAO.interfaces.VodSubscribeDAOInterface;
import DAO.transfertObject.VodSubscribeTO;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.LinkedList;

/**
 *
 * @author vincent
 */
public class VodSubscribeMySqlDAO extends MySqlGeneralObjectDAO implements VodSubscribeDAOInterface {

    public LinkedList<VodSubscribeTO> selectAllVodSubscribeTOs() {
        
        //Return object
        LinkedList<VodSubscribeTO> vodSubscribeTOs = new LinkedList<VodSubscribeTO>();
        
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
                VodSubscribeTO vodSubscribeTO = new VodSubscribeTO();
                
                vodSubscribeTO.setName(rs.getString("name_vod_subscribe"));
                vodSubscribeTO.setDescription(rs.getString("description_vod_subscribe"));
                vodSubscribeTO.setPrice(rs.getString("price"));
                vodSubscribeTO.setType(rs.getString("type_vod_subscribe")); 
                
                vodSubscribeTOs.add(vodSubscribeTO);
            } 
            
        }catch (Exception e) {

            System.out.println("Exception" + e);
            e.printStackTrace();

        } finally {

            closeRsAndSt(rs, st);

        }
        closeConnection(conn);
        
        return vodSubscribeTOs;
    }

}
