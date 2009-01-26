package model.database;

import model.networkdevices.Item;

import java.util.ArrayList;

import com.mysql.jdbc.Connection;
import java.net.ConnectException;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

/**
 *
 * @author vincent
 */
public class ItemDAO {

    public ArrayList<Item> extractAllItems() {

        ArrayList<Item> items = new ArrayList<Item>();

        //transaction or sequence of queries
        Statement st = null;

        //result of the queries
        ResultSet rs = null;

        ConnectionDatabase connectionDatabase = new ConnectionDatabase();
        Connection conn = (Connection) connectionDatabase.getConn();

        try {

            st = conn.createStatement();
            rs = st.executeQuery("SELECT * FROM group8_objet");


            while (rs.next()) {
                Item it = new Item();

                it.setId(rs.getInt("id_objet"));
                it.setName(rs.getString("name"));
                it.setType(rs.getString("type"));
                it.setPrice(rs.getFloat("price"));
                it.setDescription(rs.getString("description"));
                items.add(it);
            }

        } catch (Exception e) {
            e.printStackTrace();

        } finally {
            ConnectionDatabase.closeRsAndSt(rs, st);
        }

        connectionDatabase.close();
        return items;
    }
}




        
    
    
    
   
