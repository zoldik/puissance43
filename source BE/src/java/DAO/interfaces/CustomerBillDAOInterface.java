/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package DAO.interfaces;
import DAO.transfertObject.CustomerBillTO;
import java.util.LinkedList;

/**
 *
 * @author orthank
 */
public interface CustomerBillDAOInterface {
    public LinkedList <CustomerBillTO> getBillsByCustomerID(int id);
}
