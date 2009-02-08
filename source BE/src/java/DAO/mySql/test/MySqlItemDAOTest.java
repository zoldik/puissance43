package DAO.mySql.test;

import DAO.mySql.ItemMySqlDAO;

import java.util.ArrayList;
import model.networkdevices.Item;

/**
 *
 * @author vincent
 */
public class MySqlItemDAOTest {

    public static void main(String[] args) {
        ItemMySqlDAO mySqlItemDAO = new ItemMySqlDAO() ;
        
        //test extractAllItems()
        /*
        ArrayList<Item> items = mySqlItemDAO.extractAllItems();
                
        for(int i = 0 ; i<items.size() ; i++){
            Item it  = items.get(i);           
            System.out.println("Item "+i+" =   ID="+it.getId()+"   NAME="+it.getName()+"   TYPE="+it.getType()+"   DESCRIPTION="+it.getDescription()+"   PRICE="+it.getUnitPrice());            
        }
        */
        //NE VAS PAS FONCTIONNER PUISQUE L'APPEL A LA BDD SE FAIT VIA L'ANNUAIRE JNDI. Or ici, l'execution ne se fait pas dans JBoss
    }
}
