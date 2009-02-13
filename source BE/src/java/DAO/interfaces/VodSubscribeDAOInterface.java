package DAO.interfaces;

import DAO.transfertObject.VodSubscribeTO;
import java.util.LinkedList;

/**
 *
 * @author vincent
 */
public interface VodSubscribeDAOInterface {
    
    public String insertVodSubscribe(VodSubscribeTO vodSubscribeTO);
    
    public LinkedList<VodSubscribeTO> selectAllVodSubscribeTOs();

}
