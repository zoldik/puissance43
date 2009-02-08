package DAO.interfaces;

import java.util.ArrayList;

import javax.sql.RowSet;

import model.networkdevices.Item;

/**
 *
 * @author vincent
 */
public interface ItemDAOInterface {
    
    public boolean deleteItem();
    
    public Item findItemById(int id);
    
    public int insertItem(Item itemTO);

    public RowSet selectAllItemsRS();

    public ArrayList<Item> selectAllItems();
    
    public ArrayList<Item> selectItemsByType(String type);
    
    public boolean updateItem();

}
