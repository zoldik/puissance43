package DAO.interfaces;

import DAO.transfertObject.VoipRssTO;

import java.util.LinkedList;



/**Interface VoipRssDAO is a part of DAO pattern.
 * 
 * 
 * @author Philipe Lardennois
 */
public interface VoipRssDAOInterface {
    
    public VoipRssTO getVoipRss(int id_voip_line);

    public LinkedList<VoipRssTO> getVoipRssToUpdated();
    
    public boolean buildVoipRss(VoipRssTO rss);
    
    public boolean setUpdatedVoipRss(VoipRssTO rss);
    
    public String getCallerId(VoipRssTO rss);
    
    public LinkedList<String> getName(int id_customer);
    
    
}
