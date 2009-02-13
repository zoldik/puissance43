package DAO.interfaces;

import DAO.transfertObject.AddressTO;
import DAO.transfertObject.CustomerTO;


import DAO.transfertObject.VoipRssTO;
import model.voip.rss.*;

import java.util.LinkedList;

import javax.sql.RowSet;


/**Interface VoipRssDAO is a part of DAO pattern.
 * 
 * 
 * @author Philipe Lardennois
 */
public interface VoipRssDAOInterface {

    public LinkedList<VoipRssTO> getVoipRssToUpdated();
    
    public String updateVoipRss(VoipRssTO rss);
    
    public boolean setUpdatedVoipRss(VoipRssTO rss);
    
    public VoipRssTO findVoipRss(int id_line_rss);
    
    
    public int getVoipCallNewEntries(int id_voip_line);
    
    public VoipRssTO getVoipCallNewestEntries(VoipRssTO rss);
    
    public void setUpdateRSS(int id_voip_rss,int value);
    
    
    
    public CustomerTO findCustomerById(int id);
    
    public CustomerTO findCustomerByLogin(String login);
    
    public CustomerTO findCustomer(String login, String password);
    
    public String insertCustomer(CustomerTO customerTO, AddressTO addressTO);
 
    public boolean isLoginUsed(String login);

    public RowSet selectAllCustomersRS();

    public LinkedList<CustomerTO> selectAllCustomersTO();
    
    public boolean updateCustomer();
    
    public boolean isAllowed(String login, String password);
    
    public boolean validAccount(int id);
    
    public boolean isValidEmail(String login, String email);
}
