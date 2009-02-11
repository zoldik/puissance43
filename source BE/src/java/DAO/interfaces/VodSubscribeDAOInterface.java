package DAO.interfaces;

import DAO.transfertObject.VodSubscribeTO;
import java.util.LinkedList;

/**
 *
 * @author vincent
 */
public interface VodSubscribeDAOInterface {
    
    public LinkedList<VodSubscribeTO> selectAllVodSubscribeTOs();

}
