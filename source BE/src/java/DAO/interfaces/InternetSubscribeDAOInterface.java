package DAO.interfaces;

import DAO.transfertObject.InternetSubscribeTO;
import java.util.ArrayList;

/**
 *
 * @author vincent
 */
public interface InternetSubscribeDAOInterface {

    public String deleteById(int id);
    
    public String insertInternetSubscribe(InternetSubscribeTO internetSubscribeTO);

    public ArrayList<InternetSubscribeTO> selectAllInternetSubscribeTOs();
}
