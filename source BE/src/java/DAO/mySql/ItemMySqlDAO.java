package DAO.mySql;

import DAO.interfaces.ItemDAOInterface;
import DAO.factory.MySqlDAOFactory;


import DAO.transfertObject.ItemTO;

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

    public ItemTO findItemById(int id) {

        Integer idInteger = new Integer(id);

        //Return object
        ItemTO item = new ItemTO();

        //Connexion to the database with JNDI 
        Connection conn = (Connection) getConnectionWithJNDI();

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
            closeRsAndSt(rs, pSt);
        }
        closeConnection(conn);
        return item;
    }

    public int insertItem(ItemTO item) {
        //Return object???
        int error = 0;




        return error;
    }

    public RowSet selectAllItemsRS() {
        throw new UnsupportedOperationException("Not supported yet.");
    }

    public ArrayList<ItemTO> selectAllItemTOs() {
        //Returned object
        ArrayList<ItemTO> items = new ArrayList<ItemTO>();

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
                ItemTO item = new ItemTO();

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
            closeRsAndSt(rs, st);
        }
        closeConnection(conn);
        return items;
    }

    public ArrayList<ItemTO> selectItemsByType(String type) {

        //Returned object
        ArrayList<ItemTO> items = new ArrayList<ItemTO>();

        //Connexion to the database with JNDI 
        Connection conn = (Connection) getConnectionWithJNDI();

        //transaction or sequence of queries
        PreparedStatement pSt = null;
        
        //result of the queries
        ResultSet rs = null;


        try {
            pSt = conn.prepareStatement("SELECT * FROM `item` WHERE `type` = ? ");
            pSt.setString(1, type);
            rs = pSt.executeQuery();

            while (rs.next()) {
                ItemTO item = new ItemTO();

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
            closeRsAndSt(rs, pSt);
        }
        closeConnection(conn);
        return items;
    }

    public boolean updateItem() {
        throw new UnsupportedOperationException("Not supported yet.");
    }
}