package DAO.interfaces;

import DAO.transfertObject.VoipSubscribeTO;
import java.util.LinkedList;

/**
 *
 * @author vincent
 */
public interface VoipSubscribeDAOInterface {

    public String insertVoipSubscribe(VoipSubscribeTO voipSubscribeTO);

    public LinkedList<VoipSubscribeTO> selectAllVoipSubscribeTOs();
}
