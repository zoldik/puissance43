/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package DAO.mySql;

import DAO.interfaces.LineDAOInterface;
import DAO.factory.MySqlDAOFactory;
import DAO.transfertObject.LineTO;
import java.util.LinkedList;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;



/**
 *
 * @author francois
 */
public class LineMySqlDAO extends MySqlGeneralObjectDAO implements LineDAOInterface  {
    
    public boolean insertLine(String id,String name,String host,String nat,String type,String accountcode,String amaflags,String calllimit,String callgroup,String callerid,String cancallforward,String canreinvite,String context,String defaultip,String dtmfmode,String fromuser,String fromdomain,String insecure,String language,String mailbox,String md5secret,String deny,String permit,String mask,String musiconhold,String pickupgroup,String qualify,String regexten,String restrictcid,String rtptimeout,String rtpholdtimeout,String secret,String setvar,String disallow,String allow,String fullcontact,String ipaddr,String port,String regserver,String regseconds,String username,Boolean visible,String customerid){

        boolean okay = true;
        
        Connection conn = (Connection) getConnectionWithJNDI();
        Statement st = null;
        ResultSet rs = null;
        
        String insert= "insert into voip_line (name,visible";
        String values="values (\""+name+"\",\""+visible+"\"";
        
        
        //le name doi etre exclusif
        if (id.compareTo("")!=0 && id.compareTo("null")!=0){
            insert+=",id";
            values+=",\""+id+"\"";
        }       
        if (host.compareTo("")!=0 && host.compareTo("null")!=0){
            insert+=",host";
            values+=",\""+host+"\"";
        }        
        if (nat.compareTo("")!=0 && nat.compareTo("null")!=0){
            insert+=",nat";
            values+=",\""+nat+"\"";
        }      
        if (type.compareTo("")!=0 && type.compareTo("null")!=0){
            insert+=",type";
            values+=",\""+type+"\"";
        }        
        if (accountcode.compareTo("")!=0 && accountcode.compareTo("null")!=0){
            insert+=",accountcode";
            values+=",\""+accountcode+"\"";
        }        
        if (amaflags.compareTo("")!=0 && amaflags.compareTo("null")!=0){
            insert+=",amaflags";
            values+=",\""+amaflags+"\"";
        }        
        if (calllimit.compareTo("")!=0 && calllimit.compareTo("null")!=0){
            insert+=",call-limit";
            values+=",\""+calllimit+"\"";
        }
        if (callgroup.compareTo("")!=0 && callgroup.compareTo("null")!=0){
            insert+=",callgroup";
            values+=",\""+callgroup+"\"";
        }
        if (callerid.compareTo("")!=0 && callerid.compareTo("null")!=0){
            insert+=",callerid";
            values+=",\""+callerid+"\"";
        }
        if (cancallforward.compareTo("")!=0 && cancallforward.compareTo("null")!=0){
            insert+=",cancallforward";
            values+=",\""+cancallforward+"\"";
        }      
        if (canreinvite.compareTo("")!=0 && canreinvite.compareTo("null")!=0){
            insert+=",canreinvite";
            values+=",\""+canreinvite+"\"";
        }      
        if (context.compareTo("")!=0 && context.compareTo("null")!=0){
            insert+=",context";
            values+=",\""+context+"\"";
        }     
        if (defaultip.compareTo("")!=0 && defaultip.compareTo("null")!=0){
            insert+=",defaultip";
            values+=",\""+defaultip+"\"";
        }     
        if (dtmfmode.compareTo("")!=0 && dtmfmode.compareTo("null")!=0){
            insert+=",dtmfmode";
            values+=",\""+dtmfmode+"\"";
        }     
        if (fromuser.compareTo("")!=0 && fromuser.compareTo("null")!=0){
            insert+=",fromuser";
            values+=",\""+fromuser+"\"";
        }    
        if (fromdomain.compareTo("")!=0 && fromdomain.compareTo("null")!=0){
            insert+=",fromdomain";
            values+=",\""+fromdomain+"\"";
        }  
        if (insecure.compareTo("")!=0 && insecure.compareTo("null")!=0){
            insert+=",insecure";
            values+=",\""+insecure+"\"";
        }        
        if (language.compareTo("")!=0 && language.compareTo("null")!=0){
            insert+=",language";
            values+=",\""+language+"\"";
        }        
        if (mailbox.compareTo("")!=0 && mailbox.compareTo("null")!=0){
            insert+=",mailbox";
            values+=",\""+mailbox+"\"";
        }        
        if (md5secret.compareTo("")!=0 && md5secret.compareTo("null")!=0){
            insert+=",md5secret";
            values+=",\""+md5secret+"\"";
        }       
        if (deny.compareTo("")!=0 && deny.compareTo("null")!=0){
            insert+=",deny";
            values+=",\""+deny+"\"";
        }        
        if (permit.compareTo("")!=0 && permit.compareTo("null")!=0){
            insert+=",permit";
            values+=",\""+permit+"\"";
        }       
        if (mask.compareTo("")!=0 && mask.compareTo("null")!=0){
            insert+=",mask";
            values+=",\""+mask+"\"";
        }        
        if (musiconhold.compareTo("")!=0 && musiconhold.compareTo("null")!=0){
            insert+=",musiconhold";
            values+=",\""+musiconhold+"\"";
        }        
        if (pickupgroup.compareTo("")!=0 && pickupgroup.compareTo("null")!=0){
            insert+=",pickupgroup";
            values+=",\""+pickupgroup+"\"";
        }       
        if (qualify.compareTo("")!=0 && qualify.compareTo("null")!=0){
            insert+=",qualify";
            values+=",\""+qualify+"\"";
        }        
        if (regexten.compareTo("")!=0 && regexten.compareTo("null")!=0){
            insert+=",regexten";
            values+=",\""+regexten+"\"";
        }        
        if (restrictcid.compareTo("")!=0 && restrictcid.compareTo("null")!=0){
            insert+=",restrictcid";
            values+=",\""+restrictcid+"\"";
        }        
        if (rtptimeout.compareTo("")!=0 && rtptimeout.compareTo("null")!=0){
            insert+=",rtptimeout";
            values+=",\""+rtptimeout+"\"";
        }        
        if (rtpholdtimeout.compareTo("")!=0 && rtpholdtimeout.compareTo("null")!=0){
            insert+=",rtpholdtimeout";
            values+=",\""+rtpholdtimeout+"\"";
        }        
        if (secret.compareTo("")!=0 && secret.compareTo("null")!=0){
            insert+=",secret";
            values+=",\""+secret+"\"";
        }       
        if (setvar.compareTo("")!=0 && setvar.compareTo("null")!=0){
            insert+=",setvar";
            values+=",\""+setvar+"\"";
        }       
        if (disallow.compareTo("")!=0 && disallow.compareTo("null")!=0){
            insert+=",disallow";
            values+=",\""+disallow+"\"";
        }       
        if (allow.compareTo("")!=0 && allow.compareTo("null")!=0){
            insert+=",allow";
            values+=",\""+allow+"\"";
        }       
        if (fullcontact.compareTo("")!=0 && fullcontact.compareTo("null")!=0){
            insert+=",fullcontact";
            values+=",\""+fullcontact+"\"";
        }       
        if (ipaddr.compareTo("")!=0 && ipaddr.compareTo("null")!=0){
            insert+=",ipaddr";
            values+=",\""+ipaddr+"\"";
        }      
        if (port.compareTo("")!=0 && port.compareTo("null")!=0){
            insert+=",port";
            values+=",\""+port+"\"";
        }      
        if (regserver.compareTo("")!=0 && regserver.compareTo("null")!=0){
            insert+=",regserver";
            values+=",\""+regserver+"\"";
        }      
        if (regseconds.compareTo("")!=0 && regseconds.compareTo("null")!=0){
            insert+=",regseconds";
            values+=",\""+regseconds+"\"";
        }       
        if (username.compareTo("")!=0 && username.compareTo("null")!=0){
            insert+=",username";
            values+=",\""+username+"\"";
        }
        if (customerid.compareTo("")!=0 && customerid.compareTo("null")!=0){
            insert+=",id_customer";
            values+=",\""+customerid+"\"";
        }  
        insert+=") "+values+");";
        try
        {
            st=conn.createStatement();
            rs = st.executeQuery(insert);
            
        } catch (Exception e) {
            System.out.println("Exception" + e);
            e.printStackTrace();
        } finally {
            closeRsAndSt(rs, st);
        }
        closeConnection(conn);
        return okay;
    }

    public boolean deleteLine(String id){
        
        boolean okay=true;
        
        Connection conn = (Connection) getConnectionWithJNDI();
        Statement st = null;
        ResultSet rs = null;
        
        try
        {
            st=conn.createStatement();
            st.executeUpdate("DELETE FROM voip_line WHERE id_voip_line ="+id+";");
      
        } catch (Exception e) {
            e.printStackTrace();
            okay=false;
        } finally {
            closeRsAndSt(rs,st);
        }
        closeConnection(conn);
        
        return okay;
    }

    public LineTO findLine(String id){
        
        LineTO Line = new LineTO();

        Connection conn = (Connection) getConnectionWithJNDI();
        Statement st = null;
        ResultSet rs = null;

        try {

            st = conn.createStatement();
            rs = st.executeQuery("SELECT * FROM voip_line WHERE (id_voip_line=\""+id+"\") ");

            while (rs.next()) {
                LineTO li = new LineTO();

                li.setid(rs.getString("VOIP_LIGNE_ID"));
                li.setaccountcode(rs.getString("accountcode"));
                li.setallow(rs.getString("allow"));
                li.setamaflags(rs.getString("amaflags"));
                li.setcallerid(rs.getString("callerid"));
                li.setcallgroup(rs.getString("callgroup"));
                li.setcalllimit(rs.getString("call-limit"));
                li.setcancallforward(rs.getString("cancallforward"));
                li.setcanreinvite(rs.getString("canreinvite"));
                li.setcontext(rs.getString("context"));
                li.setdefaultip(rs.getString("defaultip"));
                li.setdeny(rs.getString("deny"));
                li.setdisallow(rs.getString("disallow"));
                li.setdtmfmode(rs.getString("dtmfmode"));
                li.setfromdomain(rs.getString("fromdomain"));
                li.setfromuser(rs.getString("fromuser"));
                li.setfullcontact(rs.getString("fullcontact"));
                li.sethost(rs.getString("host"));
                li.setinsecure(rs.getString("insecure"));
                li.setipaddr(rs.getString("ipaddr"));
                li.setlanguage(rs.getString("language"));
                li.setmailbox(rs.getString("mailbox"));
                li.setmask(rs.getString("mask"));
                li.setmd5secret(rs.getString("md5secret"));
                li.setmusiconhold(rs.getString("musiconhold"));
                li.setname(rs.getString("name"));
                li.setnat(rs.getString("nat"));
                li.setpermit(rs.getString("permit"));
                li.setpickupgroup(rs.getString("pickupgroup"));
                li.setport(rs.getString("port"));
                li.setqualify(rs.getString("qualify"));
                li.setregexten(rs.getString("regexten"));
                li.setregseconds(rs.getString("regseconds"));
                li.setregserver(rs.getString("regserver"));
                li.setrestrictcid(rs.getString("restrictcid"));
                li.setrtpholdtimeout(rs.getString("rtpholdtimeout"));
                li.setrtptimeout(rs.getString("rtptimeout"));
                li.setsecret(rs.getString("secret"));
                li.setsetvar(rs.getString("setvar"));
                li.settype(rs.getString("type"));
                li.setusername(rs.getString("username"));
                li.setvisible(rs.getBoolean("visible"));
                li.setcustomerid(rs.getInt("id_customer"));
                
                Line=li;                
            }

        } catch (Exception e) {

            System.out.println("Exception" + e);
            e.printStackTrace();

        } finally {

            closeRsAndSt(rs, st);

        }
        closeConnection(conn);
        return Line;
    }

    public boolean updateLine(String id, String name, String value){
        
        boolean okay=true;
        
        Connection conn = (Connection) getConnectionWithJNDI();
        Statement st = null;
        ResultSet rs = null;
        
        try
        {
            st=conn.createStatement();
            st.executeUpdate("UPDATE voip_line SET "+name+"=\""+value+"\" WHERE id_voip_line=\""+id+"\"");
      
         } catch (Exception e) {

            System.out.println("Exception" + e);
            e.printStackTrace();

        } finally {

            closeRsAndSt(rs, st);

        }
        closeConnection(conn);
        
        return okay;
    }
    
    public LinkedList<LineTO> selectAllLineTO(){
        
        LinkedList<LineTO> Lines = new LinkedList<LineTO>();

        Connection conn = (Connection) getConnectionWithJNDI();
        Statement st = null;
        ResultSet rs = null;

        try {

            st = conn.createStatement();
            rs = st.executeQuery("SELECT * FROM voip_line ");

            while (rs.next()) {
                LineTO li = new LineTO();

                li.setid(rs.getString("id_voip_line"));
                li.setaccountcode(rs.getString("accountcode"));
                li.setallow(rs.getString("allow"));
                li.setamaflags(rs.getString("amaflags"));
                li.setcallerid(rs.getString("callerid"));
                li.setcallgroup(rs.getString("callgroup"));
                li.setcalllimit(rs.getString("call-limit"));
                li.setcancallforward(rs.getString("cancallforward"));
                li.setcanreinvite(rs.getString("canreinvite"));
                li.setcontext(rs.getString("context"));
                li.setdefaultip(rs.getString("defaultip"));
                li.setdeny(rs.getString("deny"));
                li.setdisallow(rs.getString("disallow"));
                li.setdtmfmode(rs.getString("dtmfmode"));
                li.setfromdomain(rs.getString("fromdomain"));
                li.setfromuser(rs.getString("fromuser"));
                li.setfullcontact(rs.getString("fullcontact"));
                li.sethost(rs.getString("host"));
                li.setinsecure(rs.getString("insecure"));
                li.setipaddr(rs.getString("ipaddr"));
                li.setlanguage(rs.getString("language"));
                li.setmailbox(rs.getString("mailbox"));
                li.setmask(rs.getString("mask"));
                li.setmd5secret(rs.getString("md5secret"));
                li.setmusiconhold(rs.getString("musiconhold"));
                li.setname(rs.getString("name"));
                li.setnat(rs.getString("nat"));
                li.setpermit(rs.getString("permit"));
                li.setpickupgroup(rs.getString("pickupgroup"));
                li.setport(rs.getString("port"));
                li.setqualify(rs.getString("qualify"));
                li.setregexten(rs.getString("regexten"));
                li.setregseconds(rs.getString("regseconds"));
                li.setregserver(rs.getString("regserver"));
                li.setrestrictcid(rs.getString("restrictcid"));
                li.setrtpholdtimeout(rs.getString("rtpholdtimeout"));
                li.setrtptimeout(rs.getString("rtptimeout"));
                li.setsecret(rs.getString("secret"));
                li.setsetvar(rs.getString("setvar"));
                li.settype(rs.getString("type"));
                li.setusername(rs.getString("username"));
                li.setvisible(rs.getBoolean("visible"));
                li.setcustomerid(rs.getInt("id_customer"));
                
                Lines.add(li);                
                
            }
            System.out.println("HELLO !!!!");
            
        } catch (Exception e) {
            System.out.println("Exception" + e);
            e.printStackTrace();
        } finally {
            closeRsAndSt(rs, st);
        }
        closeConnection(conn);

        return Lines;
    }
    
    
}
