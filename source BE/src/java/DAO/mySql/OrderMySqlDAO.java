/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package DAO.mySql;

import DAO.interfaces.OrderDAOInterface;
import DAO.transfertObject.OrderTO;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

/**
 *
 * @author vincent
 */
public class OrderMySqlDAO extends MySqlGeneralObjectDAO implements OrderDAOInterface {

    public String insertOrder(OrderTO orderTO) {

        //Return object        
        String error = "pas d'erreur";

        //Connexion to the database with JNDI 
        Connection conn = (Connection) getConnectionWithJNDI();


        //transaction or sequence of queries
        Statement st = null;

        //result of the queries
        ResultSet rs = null;

        String insertOrder = "INSERT INTO `command` ( `id_address` , `amount_order` , `number_of_items` , `state_of_process` ) ";

        String valuesOrder = "VALUES ( " + "'" + orderTO.getIdAddress() + "','" + orderTO.getAmountOrder() +
                "','" + orderTO.getNumberOfItems() + "','" + orderTO.getStateOfProcess() + "');";


        insertOrder += valuesOrder;

        try {
            st = conn.createStatement();
            st.executeUpdate(insertOrder);
        } catch (SQLException e) {
            error = e.toString();
        } finally {
            closeRsAndSt(rs, st);
        }
        closeConnection(conn);      
        
        return error;
    }

    public String insertOrderHasItems(int idOrder, int idItem) {
        //Return object        
        String error = "pas d'erreur";

        //Connexion to the database with JNDI 
        Connection conn = (Connection) getConnectionWithJNDI();


        //transaction or sequence of queries
        Statement st = null;

        //result of the queries
        ResultSet rs = null;
        
        String insertOrder = "INSERT INTO `command_has_items` ( `id_command` , `id_item`) ";

        String valuesOrder = "VALUES ( " + "'" + idOrder + "','" + idItem +
                "',' );";

        insertOrder += valuesOrder;

        try {
            st = conn.createStatement();
            st.executeUpdate(insertOrder);
        } catch (SQLException e) {
            error = e.toString();
        } finally {
            closeRsAndSt(rs, st);
        }
        closeConnection(conn);      
        
        return error;
        
        
    }
    
    
    
    
}
