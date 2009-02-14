/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package DAO.mySql;


import DAO.interfaces.CustomerBillDAOInterface;
import DAO.factory.MySqlDAOFactory;
import DAO.transfertObject.CustomerBillTO;
import java.util.LinkedList;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
/**
 *
 * @author orthank
 */
public class CustomerBillMySqlDAO extends MySqlGeneralObjectDAO implements CustomerBillDAOInterface {
    
    public LinkedList <CustomerBillTO> getBillsByCustomerID(int id){
        
        Statement stmt=null;
        ResultSet rs=null;        
        Connection conn = (Connection) getConnectionWithJNDI();  
        
        LinkedList billList = new LinkedList<CustomerBillTO>();
        
         try
            {
            stmt=conn.createStatement();           
            rs = stmt.executeQuery("select * from bill where (id_customer="+id+");");
            while (rs.next())
                {
                int BillId = rs.getInt("id_bill");
                float faiAmount = rs.getInt("bill_fai");
                float voipAmount = rs.getInt("bill_vod");
                float vodAmount = rs.getInt("bill_voip");
                float amount = rs.getInt("price");
                CustomerBillTO bill = new CustomerBillTO(BillId,faiAmount,voipAmount,vodAmount,amount);
                billList.add(bill);
                }
            }
        catch(Exception e2)
        {
            System.out.println("DAOException"+e2);
        }
        try {conn.close();} 
        catch (Exception e3) {System.out.println("Erreur fermeture"+e3);}
        
        return billList;
        
    }

    public LinkedList<CustomerBillTO> getContactbyVoipId(int id) {
        throw new UnsupportedOperationException("Not supported yet.");
    }
}
