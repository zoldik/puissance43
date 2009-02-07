package DAO.mySql.test;

import DAO.mySql.MySqlItemDAO;

import java.util.ArrayList;
import model.networkdevices.Item;

/**
 *
 * @author vincent
 */
public class MySqlItemDAOTest {

    public static void main(String[] args) {
        MySqlItemDAO mySqlItemDAO = new MySqlItemDAO() ;
        
        //test extractAllItems()
        ArrayList<Item> items = mySqlItemDAO.extractAllItems();
                
        for(int i = 0 ; i<items.size() ; i++){
            Item it  = items.get(i);           
            System.out.println("Item "+i+" =   ID="+it.getId()+"   NAME="+it.getName()+"   TYPE="+it.getType()+"   DESCRIPTION="+it.getDescription()+"   PRICE="+it.getUnitPrice());            
        }
        
    }
}
