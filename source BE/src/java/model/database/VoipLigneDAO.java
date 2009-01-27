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
      * @param subsribecontext
      * @return
      */
    
   public static boolean insertfull(String id,String name,String host,String nat,String type,String accountcode,String amaflags,String calllimit,String callgroup,String callerid,String cancallforward,String canreinvite,String context,String defaultip,String dtmfmode,String fromuser,String fromdomain,String insecure,String language,String mailbox,String md5secret,String deny,String permit,String mask,String musiconhold,String pickupgroup,String qualify,String regexten,String restrictcid,String rtptimeout,String rtpholdtimeout,String secret,String setvar,String disallow,String allow,String fullcontact,String ipaddr,String port,String regserver,String regseconds,String username,String defaultuser,String subsribecontext){
        
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
    

    /**
    * Return all elements of a ligne from the database
    * @param ligne
    * @return
    */ 
    public static ResultSet deleteLigne(String ligne)
    {
        Statement stmt;
        ConnectionDatabase connexion=new ConnectionDatabase();
        ResultSet rs=null;
        try
        {
            stmt=connexion.getConn().createStatement();
            rs = stmt.executeQuery(" * from VOIP_LIGNE where (name=\""+ligne+"\")");
        }
        catch(SQLException e2)
        {
            System.out.println("SqlException"+e2);
        }
        try {connexion.close();} catch (Exception e3) {System.out.println("Erreur fermeture"+e3);}
        return rs;

    }
    
    
    
    
    
}
