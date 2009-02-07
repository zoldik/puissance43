package DAO.mySql;

import DAO.interfaces.ItemDAOInterface;
import DAO.*;
import model.database.*;
import model.networkdevices.Item;

import java.util.ArrayList;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.sql.Connection;

/**
 *
 * @author vincent
 */
public class MySqlItemDAO implements ItemDAOInterface {

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
            rs = st.executeQuery("SELECT * FROM ARTICLE");


            while (rs.next()) {
                Item item = new Item();

                item.setId(rs.getInt("ID_ARTICLE"));
                item.setName(rs.getString("name"));
                item.setType(rs.getString("type"));
                item.setDescription(rs.getString("description"));
                item.setUnitPrice(rs.getFloat("unit_price"));
                item.setStock(rs.getInt("stock"));
                items.add(item);
            }

        } catch (Exception e) {
            e.printStackTrace();

        } finally {
            ConnectionDatabase.closeRsAndSt(rs, st);
        }

        connectionDatabase.close();
        return items;
    }

    public Item extractItemById(int id) {

        Item item = new Item();

        Integer idInteger = new Integer(id);

        //transaction or sequence of queries
        PreparedStatement pSt = null;

        //result of the queries
        ResultSet rs = null;

        ConnectionDatabase connectionDatabase = new ConnectionDatabase();
        Connection conn = (Connection) connectionDatabase.getConn();

        try {

            pSt = conn.prepareStatement("SELECT * FROM `ARTICLE` WHERE `ID_ARTICLE` = ? ");
            pSt.setString(1, idInteger.toString());
            rs = pSt.executeQuery();

            rs.next();

            item.setId(rs.getInt("ID_ARTICLE"));
            item.setName(rs.getString("name"));
            item.setType(rs.getString("type"));
            item.setDescription(rs.getString("description"));
            item.setUnitPrice(rs.getFloat("unit_price"));
            item.setUnitPrice(rs.getFloat("stock"));

        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            ConnectionDatabase.closeRsAndSt(rs, pSt);
        }

        return item;
    }

    public ArrayList<Item> extractItemsByType(String type) {

        ArrayList<Item> items = new ArrayList<Item>();

        PreparedStatement pSt = null;

        ResultSet rs = null;


        try {

            ConnectionDatabase connectionDatabase = new ConnectionDatabase();
            Connection conn = (Connection) connectionDatabase.getConn();

            pSt = conn.prepareStatement("SELECT * FROM `ARTICLE` WHERE `type` = ? ");
            pSt.setString(1, type);
            rs = pSt.executeQuery();

            while (rs.next()) {
                Item item = new Item();

                item.setId(rs.getInt("ID_ARTICLE"));
                item.setName(rs.getString("name"));
                item.setType(rs.getString("type"));
                item.setDescription(rs.getString("description"));
                item.setUnitPrice(rs.getFloat("unit_price"));
                item.setUnitPrice(rs.getFloat("stock"));
                items.add(item);
            }

        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            ConnectionDatabase.closeRsAndSt(rs, pSt);
        }

        return items;
    }
}

        
    
    
    
   
