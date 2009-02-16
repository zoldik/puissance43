package DAO.interfaces;

import DAO.transfertObject.OrderTO;

/**
 *
 * @author vincent
 */
public interface OrderDAOInterface {
    
    public String insertOrder(OrderTO orderTO);
    
    public String insertOrderHasItems(int idOrder, int idItem);
    
    
    
    
}
