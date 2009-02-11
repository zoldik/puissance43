package DAO.interfaces;

import DAO.transfertObject.InternetSubscribeTO;
import java.util.ArrayList;

/**
 *
 * @author vincent
 */
public interface InternetSubscribeDAOInterface {
    
    public ArrayList<InternetSubscribeTO> selectAllInternetSubscribeTO();

}
