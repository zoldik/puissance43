package DAO.mySql;

import DAO.interfaces.ItemDAOInterface;
import DAO.factory.MySqlDAOFactory;


import model.database.*;
import model.networkdevices.Item;

import java.util.ArrayList;

import java.sql.PreparedStatement;
import javax.sql.RowSet;
import java.sql.ResultSet;
import java.sql.Statement;
import java.sql.Connection;

/**
 *
 * @author vincent
 */
public class ItemMySqlDAO extends MySqlGeneralObjectDAO implements ItemDAOInterface {

    public boolean deleteItem() {
        throw new UnsupportedOperationException("Not supported yet.");
    }

    public Item findItemById(int id) {

        Integer idInteger = new Integer(id);

        //Return object
        Item item = new Item();

        //Connexion to the database with JNDI 
        Connection conn = (Connection) MySqlDAOFactory.createConnectionWithJNDI();

        //transaction or sequence of queries
        PreparedStatement pSt = null;

        //result of the queries
        ResultSet rs = null;

        try {

            pSt = conn.prepareStatement("SELECT * FROM `item` WHERE `id_item` = ? ");
            pSt.setString(1, idInteger.toString());
            rs = pSt.executeQuery();

            rs.next();

            item.setId(rs.getInt("id_item"));
            item.setName(rs.getString("name"));
            item.setType(rs.getString("type"));
            item.setDescription(rs.getString("description"));
            item.setUnitPrice(rs.getFloat("unit_price"));
            item.setUnitPrice(rs.getFloat("stock"));

        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            MySqlDAOFactory.closeRsAndSt(rs, pSt);
        }
        MySqlDAOFactory.closeConnection();
        return item;
    }

    public int insertItem(Item item) {
        //Return object
        int error = 0;




        return error;
    }

    public RowSet selectAllItemsRS() {
        throw new UnsupportedOperationException("Not supported yet.");
    }

    public ArrayList<Item> selectAllItems() {
        //Returned object
        ArrayList<Item> items = new ArrayList<Item>();

        //Connexion to the database with JNDI 
        Connection conn = (Connection) getConnectionWithJNDI();

        //transaction or sequence of queries
        Statement st = null;

        //result of the queries
        ResultSet rs = null;

        try {

            st = conn.createStatement();
            rs = st.executeQuery("SELECT * FROM item");

            while (rs.next()) {
                Item item = new Item();

                item.setId(rs.getInt("id_item"));
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
            MySqlDAOFactory.closeRsAndSt(rs, st);
        }
        MySqlDAOFactory.closeConnection();
        return items;
    }

    public ArrayList<Item> selectItemsByType(String type) {

        //Returned object
        ArrayList<Item> items = new ArrayList<Item>();

        //Connexion to the database with JNDI 
        Connection conn = (Connection) MySqlDAOFactory.createConnectionWithJNDI();

        //transaction or sequence of queries
        PreparedStatement pSt = null;
        
        //result of the queries
        ResultSet rs = null;


        try {
            pSt = conn.prepareStatement("SELECT * FROM `item` WHERE `type` = ? ");
            pSt.setString(1, type);
            rs = pSt.executeQuery();

            while (rs.next()) {
                Item item = new Item();

                item.setId(rs.getInt("id_item"));
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
            MySqlDAOFactory.closeRsAndSt(rs, pSt);
        }
        MySqlDAOFactory.closeConnection();
        return items;
    }

    public boolean updateItem() {
        throw new UnsupportedOperationException("Not supported yet.");
    }
}