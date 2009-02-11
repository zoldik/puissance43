package DAO.interfaces;

import java.util.ArrayList;

import javax.sql.RowSet;

import DAO.transfertObject.ItemTO;

/**
 *
 * @author vincent
 */
public interface ItemDAOInterface {
    
    public boolean deleteItem();
    
    public ItemTO findItemById(int id);
    
    public int insertItem(ItemTO itemTO);

    public RowSet selectAllItemsRS();

    public ArrayList<ItemTO> selectAllItemTOs();
    
    public ArrayList<ItemTO> selectItemsByType(String type);
    
    public boolean updateItem();

}
