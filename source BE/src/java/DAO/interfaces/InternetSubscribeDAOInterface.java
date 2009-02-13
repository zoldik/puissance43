package DAO.interfaces;

import DAO.transfertObject.InternetSubscribeTO;
import java.util.ArrayList;

/**
 *
 * @author vincent
 */
public interface InternetSubscribeDAOInterface {

    public String insertInternetSubscribe(InternetSubscribeTO internetSubscribeTO);

    public ArrayList<InternetSubscribeTO> selectAllInternetSubscribeTOs();
}
