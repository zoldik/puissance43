package DAO.mySql;

import DAO.interfaces.VodSubscribeDAOInterface;
import DAO.transfertObject.VodSubscribeTO;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.LinkedList;

/**
 *
 * @author vincent
 */
public class VodSubscribeMySqlDAO extends MySqlGeneralObjectDAO implements VodSubscribeDAOInterface {

    public String insertVodSubscribe(VodSubscribeTO vodSubscribeTO) {
         //Return object
        String error = "pas d'erreur";

        //Connexion to the database with JNDI 
        Connection conn = (Connection) getConnectionWithJNDI();

        //transaction or sequence of queries
        Statement st = null;

        //result of the queries
        ResultSet rs = null;

        String insertSubscribe = "INSERT INTO `vod_subscribe` ( `name_vod_subscribe` , `description_vod_subscribe` , `price` , `type_vod_subscribe` ) ";

        String valuesSubscribe = "VALUES ( " + "'" + vodSubscribeTO.getName() + "','" + vodSubscribeTO.getDescription() +
                "','" + vodSubscribeTO.getPrice() + "','" + vodSubscribeTO.getType() + "');";


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

                vodSubscribeTO.setId(rs.getInt("id_vod_subscribe"));
                vodSubscribeTO.setName(rs.getString("name_vod_subscribe"));
                vodSubscribeTO.setDescription(rs.getString("description_vod_subscribe"));
                vodSubscribeTO.setPrice(Float.parseFloat(rs.getString("price")));
                vodSubscribeTO.setType(rs.getString("type_vod_subscribe"));

                vodSubscribeTOs.add(vodSubscribeTO);
            }

        } catch (Exception e) {

            System.out.println("Exception" + e);
            e.printStackTrace();

        } finally {

            closeRsAndSt(rs, st);

        }
        closeConnection(conn);

        return vodSubscribeTOs;
    }
}
