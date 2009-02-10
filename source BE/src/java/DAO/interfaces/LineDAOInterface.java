/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package DAO.interfaces;
import DAO.transfertObject.LineTO;
import java.util.LinkedList;


/**
 *
 * @author francois
 */
public interface LineDAOInterface {

    public boolean insertLine(String id,String name,String host,String nat,String type,String accountcode,String amaflags,String calllimit,String callgroup,String callerid,String cancallforward,String canreinvite,String context,String defaultip,String dtmfmode,String fromuser,String fromdomain,String insecure,String language,String mailbox,String md5secret,String deny,String permit,String mask,String musiconhold,String pickupgroup,String qualify,String regexten,String restrictcid,String rtptimeout,String rtpholdtimeout,String secret,String setvar,String disallow,String allow,String fullcontact,String ipaddr,String port,String regserver,String regseconds,String username,String defaultuser,String subscribecontext,Boolean visible);

    public boolean deleteLine(String id);

    public LineTO findLine(String id, String order);

    public boolean updateLine();

    public LinkedList<LineTO> selectAllLineTO(String order);
    
    
    
}
