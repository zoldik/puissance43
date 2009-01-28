/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package model.database;

import model.voip.*;
import java.util.*;
import java.sql.*;


/**Class VoipLigneDAO
 * Manage
 * @author francois
 */
public class VoipLigneDAO {
    
    
    
    public static LinkedList<VoipLigne> extractAllVoipLigne() {

        LinkedList<VoipLigne> voipLignes = new LinkedList<VoipLigne>();

        //transaction or sequence of queries
        Statement st = null;

        //result of the queries
        ResultSet rs = null;

        ConnectionDatabase connectionDatabase = new ConnectionDatabase();
        Connection conn = (Connection) connectionDatabase.getConn();

        try {

            st = conn.createStatement();
            rs = st.executeQuery("SELECT * FROM VOIP_LIGNE");

            while (rs.next()) {
                VoipLigne li = new VoipLigne();

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
                li.setdefaultuser(rs.getString("defaultuser"));
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
                li.setsubsribecontext(rs.getString("subscribecontext"));
                li.settype(rs.getString("type"));
                li.setusername(rs.getString("username"));
                
                voipLignes.add(li);                
            }

        } catch (Exception e) {
            e.printStackTrace();

        } finally {
            ConnectionDatabase.closeRsAndSt(rs, st);
        }

        connectionDatabase.close();
        return voipLignes;
    }
    
    
    
    public static VoipLigne extractVoipLignebyId(String id) {

        VoipLigne voipLigne = new VoipLigne();

        //transaction or sequence of queries
        Statement st = null;

        //result of the queries
        ResultSet rs = null;

        ConnectionDatabase connectionDatabase = new ConnectionDatabase();
        Connection conn = (Connection) connectionDatabase.getConn();

        try {

            st = conn.createStatement();
            rs = st.executeQuery("SELECT * FROM VOIP_LIGNE WHERE (VOIP_LIGNE_ID=\""+id+"\")");

            while (rs.next()) {
                VoipLigne li = new VoipLigne();

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
                li.setdefaultuser(rs.getString("defaultuser"));
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
                li.setsubsribecontext(rs.getString("subscribecontext"));
                li.settype(rs.getString("type"));
                li.setusername(rs.getString("username"));
                
                voipLigne = li;
            }

        } catch (Exception e) {
            e.printStackTrace();

        } finally {
            ConnectionDatabase.closeRsAndSt(rs, st);
        }

        connectionDatabase.close();
        return voipLigne;
    }
    

      /**
      * Insert a Ligne in the table
      * @param id
      * @param name
      * @param host (optional)
      * @param nat
      * @param type
      * @param accountcode
      * @param amaflags
      * @param call-limit
      * @param callgroup
      * @param callerid
      * @param cancallforward
      * @param canreinvite
      * @param context
      * @param defaultip
      * @param dtmfmode
      * @param fromuser
      * @param fromdomain
      * @param insecure
      * @param language
      * @param mailbox
      * @param md5secret
      * @param deny
      * @param permit
      * @param mask
      * @param musiconhold
      * @param pickupgroup
      * @param qualify
      * @param regexten
      * @param restrictcid
      * @param rtptimeout
      * @param rtpholdtimeout
      * @param secret
      * @param setvar
      * @param disallow
      * @param allow
      * @param fullcontact
      * @param ipaddr
      * @param port
      * @param regserver
      * @param regseconds
      * @param username
      * @param defaultuser
      * @param subscribecontext
      * @return
      */
    
   public static boolean insertfull(String id,String name,String host,String nat,String type,String accountcode,String amaflags,String calllimit,String callgroup,String callerid,String cancallforward,String canreinvite,String context,String defaultip,String dtmfmode,String fromuser,String fromdomain,String insecure,String language,String mailbox,String md5secret,String deny,String permit,String mask,String musiconhold,String pickupgroup,String qualify,String regexten,String restrictcid,String rtptimeout,String rtpholdtimeout,String secret,String setvar,String disallow,String allow,String fullcontact,String ipaddr,String port,String regserver,String regseconds,String username,String defaultuser,String subscribecontext){
        
        boolean okay=true;
        Statement stmt;
        ConnectionDatabase connexion=new ConnectionDatabase();
        
        String insert= "insert into VOIP_LIGNE (name";
        String values="values (\""+name+"\"";
        
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
        if (defaultuser.compareTo("")!=0 && defaultuser.compareTo("null")!=0){
            insert+=",defaultuser";
            values+=",\""+defaultuser+"\"";
        }        
        if (subscribecontext.compareTo("")!=0 && subscribecontext.compareTo("null")!=0){
            insert+=",subscribecontext";
            values+=",\""+subscribecontext+"\"";
        }       
        
        
        insert+=") "+values+");";
        try
        {
            stmt=connexion.getConn().createStatement();
            stmt.executeUpdate(insert);
            }
        catch(SQLException e2)
        {
            System.out.println("SqlException : "+e2);
            okay=false;
        }
        try {connexion.close();} catch (Exception e3) {System.out.println("Erreur fermeture"+e3);}
        return okay;
    
   }
    
   
    /**
    * Delete Voip ligne from the database
    * @param id
    * @return boolean
    */ 
    public static boolean deleteLigneById(String id)
    {
        boolean okay=true;
        Statement stmt;
        ConnectionDatabase connexion=new ConnectionDatabase();
        try
        {
            stmt=connexion.getConn().createStatement();
            stmt.executeUpdate("DELETE FROM VOIP_LIGNE WHERE VOIP_LIGNE_ID ="+id+";");
        }
        catch(SQLException e2)
        {
            System.out.println("SqlException"+e2);
            okay=false;
        }
        try {connexion.close();} catch (Exception e3) {System.out.println("Erreur fermeture"+e3);}
        return okay;
    }
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
       public static boolean insert(String id,String name, String host, String type, String context, String dtmfmode, String language, String mailbox, String secret, String username)
    {     
        boolean okay=true;
        Statement stmt;
        ConnectionDatabase connexion=new ConnectionDatabase();
        
        String insert= "insert into VOIP_LIGNE (name,host,type,context,dtmfmode,language,mailbox,secret,username";

        String values="values (\""+name+"\",\""+host+"\",\""+type+"\",\""+context+"\",\""+dtmfmode+"\",\""+language+"\",\""+mailbox+"\",\""+secret+"\",\""+username+"\"";
        
        /*
        if (nat.compareTo("")!=0)
        {
            insert+=",nat";
            values+=",\""+nat+"\"";
        }
        */
        insert+=") "+values+");";
        
        try
        {
            stmt=connexion.getConn().createStatement();
            stmt.executeUpdate(insert);
            }
        catch(SQLException e2)
        {
            System.out.println("SqlException : "+e2);
            okay=false;
        }
        try {connexion.close();} catch (Exception e3) {System.out.println("Erreur fermeture"+e3);}
        return okay;
    }
    
    
    
    
    
    
    
}