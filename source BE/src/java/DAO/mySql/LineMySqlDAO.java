/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package DAO.mySql;

import DAO.interfaces.LineDAOInterface;
import DAO.factory.MySqlDAOFactory;
import DAO.transfertObject.LineTO;
import java.util.LinkedList;
import java.io.*;
import java.util.*;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;



/**
 *
 * @author francois
 */
public class LineMySqlDAO extends MySqlGeneralObjectDAO implements LineDAOInterface  {
    
    public boolean insertLine(String id,String name,String host,String nat,String type,String accountcode,String amaflags,String calllimit,String callgroup,String callerid,String cancallforward,String canreinvite,String context,String defaultip,String dtmfmode,String fromuser,String fromdomain,String insecure,String language,String mailbox,String md5secret,String deny,String permit,String mask,String musiconhold,String pickupgroup,String qualify,String regexten,String restrictcid,String rtptimeout,String rtpholdtimeout,String secret,String setvar,String disallow,String allow,String fullcontact,String ipaddr,String port,String regserver,String regseconds,String username,Boolean visible,String customerid,String id_customer){

        boolean okay = true;
                    
        Connection conn = (Connection) getConnectionWithJNDI();
        Statement st = null;
        ResultSet rs = null;
 
        String insert= "insert into voip_line (name,visible";
        String values="values (\""+name+"\",\""+visible+"\"";
        
        System.out.println(insert);
        
        if ( !( id==null || id=="" )) {
            insert+=",id";
            values+=",\""+id+"\"";
        }        
        if ( !( host==null || host=="" )) {
            insert+=",host";
            values+=",\""+host+"\"";
        }
        if ( !( nat==null || nat=="" )) {
            insert+=",nat";
            values+=",\""+nat+"\"";
        }  
        if ( !(type==null || type=="")) {
            insert+=",type";
            values+=",\""+type+"\"";
        }        
        if ( !(accountcode==null || accountcode=="")) {
            insert+=",accountcode";
            values+=",\""+accountcode+"\"";
        }        
        if ( !( amaflags==null || amaflags=="" )) {
            insert+=",amaflags";
            values+=",\""+amaflags+"\"";
        }        
        if ( !( calllimit==null || calllimit=="" )) {
            insert+=",call-limit";
            values+=",\""+calllimit+"\"";
        }
        if ( !( callgroup==null || callgroup=="" )) {
            insert+=",callgroup";
            values+=",\""+callgroup+"\"";
        }
        if ( !( callerid==null || callerid=="" )) {
            insert+=",callerid";
            values+=",\""+callerid+"\"";
        }
        if ( !( cancallforward==null || cancallforward=="" )) {
            insert+=",cancallforward";
            values+=",\""+cancallforward+"\"";
        }      
        if ( !( canreinvite==null || canreinvite=="") ) {
            insert+=",canreinvite";
            values+=",\""+canreinvite+"\"";
        }
        
        if ( !( context==null || context=="" )) {
            insert+=",context";
            values+=",\""+context+"\"";
        }     
        if ( !( defaultip==null || defaultip=="" )) {
            insert+=",defaultip";
            values+=",\""+defaultip+"\"";
        }     
        if ( !( dtmfmode==null || dtmfmode=="" )) {
            insert+=",dtmfmode";
            values+=",\""+dtmfmode+"\"";
        }     
        if ( !( fromuser==null || fromuser=="" )) {
            insert+=",fromuser";
            values+=",\""+fromuser+"\"";
        }    
        if ( !( fromdomain==null || fromdomain=="" )) {
            insert+=",fromdomain";
            values+=",\""+fromdomain+"\"";
        }  
        if ( !( insecure==null || insecure=="" )) {
            insert+=",insecure";
            values+=",\""+insecure+"\"";
        }        
        if ( !( language==null || language=="" )) {
            insert+=",language";
            values+=",\""+language+"\"";
        }        
        if ( !( mailbox==null || mailbox=="" )) {
            insert+=",mailbox";
            values+=",\""+mailbox+"\"";
        }        
        if ( !(md5secret==null || md5secret=="" )) {
            insert+=",md5secret";
            values+=",\""+md5secret+"\"";
        }       
        if ( !( deny==null || deny=="" )) {
            insert+=",deny";
            values+=",\""+deny+"\"";
        }        
        if ( !( permit==null || permit=="" )) {
            insert+=",permit";
            values+=",\""+permit+"\"";
        }       
        if ( !( mask==null || mask=="" )) {
            insert+=",mask";
            values+=",\""+mask+"\"";
        }        
        if ( !( musiconhold==null || musiconhold=="" )) {
            insert+=",musiconhold";
            values+=",\""+musiconhold+"\"";
        }        
        if ( !( pickupgroup==null || pickupgroup=="" )) {
            insert+=",pickupgroup";
            values+=",\""+pickupgroup+"\"";
        }       
        if ( !( qualify==null || qualify=="" )) {
            insert+=",qualify";
            values+=",\""+qualify+"\"";
        }        
        if ( !( regexten==null || regexten=="" )) {
            insert+=",regexten";
            values+=",\""+regexten+"\"";
        }        
        if ( !( restrictcid==null || restrictcid=="" )) {
            insert+=",restrictcid";
            values+=",\""+restrictcid+"\"";
        }        
        if ( !( rtptimeout==null || rtptimeout=="" )) {
            insert+=",rtptimeout";
            values+=",\""+rtptimeout+"\"";
        }        
        if ( !( rtpholdtimeout==null || rtpholdtimeout=="" )) {
            insert+=",rtpholdtimeout";
            values+=",\""+rtpholdtimeout+"\"";
        }        
        if ( !( secret==null || secret=="" )) {
            insert+=",secret";
            values+=",\""+secret+"\"";
        }       
        if ( !( setvar==null || setvar=="" )) {
            insert+=",setvar";
            values+=",\""+setvar+"\"";
        }       
        if ( !( disallow==null || disallow=="" )) {
            insert+=",disallow";
            values+=",\""+disallow+"\"";
        }       
        if ( !( allow==null || allow=="" )) {
            insert+=",allow";
            values+=",\""+allow+"\"";
        }       
        if ( !( fullcontact==null || fullcontact=="" )) {
            insert+=",fullcontact";
            values+=",\""+fullcontact+"\"";
        }       
        if ( !( ipaddr==null || ipaddr=="" )) {
            insert+=",ipaddr";
            values+=",\""+ipaddr+"\"";
        }      
        if ( !( port==null || port=="" )) {
            insert+=",port";
            values+=",\""+port+"\"";
        }      
        if ( !( regserver==null || regserver=="" )) {
            insert+=",regserver";
            values+=",\""+regserver+"\"";
        }      
        if ( !( regseconds==null || regseconds=="" )) {
            insert+=",regseconds";
            values+=",\""+regseconds+"\"";
        }       
        if ( !( username==null || username=="" )) {
            insert+=",username";
            values+=",\""+username+"\"";
        }
        if ( !( customerid==null || customerid=="" )) {
            insert+=",id_customer";
            values+=",\""+customerid+"\"";
        }  
        if ( !( id_customer==null || id_customer=="" )) {
            insert+=",id_customer";
            values+=",\""+id_customer+"\"";
        }  

        insert+=") "+values+");";
        
        System.out.println(insert);
        
        try
        {
            st=conn.createStatement();
            rs = st.executeQuery(insert);
            
        } catch (Exception e) {
            System.out.println("Exception" + e);
            okay=false;
            e.printStackTrace();
        } finally {
            closeRsAndSt(rs, st);
        }
        closeConnection(conn);
        return okay;
    }

    public boolean updateLineById(String id,String name,String host,String nat,String type,String accountcode,String amaflags,String calllimit,String callgroup,String callerid,String cancallforward,String canreinvite,String context,String defaultip,String dtmfmode,String fromuser,String fromdomain,String insecure,String language,String mailbox,String md5secret,String deny,String permit,String mask,String musiconhold,String pickupgroup,String qualify,String regexten,String restrictcid,String rtptimeout,String rtpholdtimeout,String secret,String setvar,String disallow,String allow,String fullcontact,String ipaddr,String port,String regserver,String regseconds,String username,String visible,String customerid,String id_customer){

        boolean okay = true;
                    
        Connection conn = (Connection) getConnectionWithJNDI();
        Statement st = null;
        ResultSet rs = null;
        
        String insert= "UPDATE voip_line SET " +
                "id_customer=\""+id_customer+"\"," +
                "name=\""+name+"\"," +
                "host=\""+host+"\"," +
                "nat=\""+nat+"\"," +
                "type=\""+type+"\"," +
                "accountcode=\""+accountcode+"\"," +
                "amaflags=\""+amaflags+"\"," +
                "`call-limit`=\""+calllimit+"\"," +
                "callgroup=\""+callgroup+"\"," +
                "callerid=\""+callerid+"\"," +
                "cancallforward=\""+cancallforward+"\"," +
                "canreinvite=\""+canreinvite+"\"," +
                "context=\""+context+"\"," +
                "defaultip=\""+defaultip+"\"," +
                "dtmfmode=\""+dtmfmode+"\"," +
                "fromuser=\""+fromuser+"\"," +
                "fromdomain=\""+fromdomain+"\"," +
                "insecure=\""+insecure+"\"," +
                "language=\""+language+"\"," +
                "mailbox=\""+mailbox+"\"," +
                "md5secret=\""+md5secret+"\"," +
                "deny=\""+deny+"\"," +
                "permit=\""+permit+"\"," +
                "mask=\""+mask+"\"," +
                "musiconhold=\""+musiconhold+"\"," +
                "pickupgroup=\""+pickupgroup+"\"," +
                "qualify=\""+qualify+"\"," +
                "regexten=\""+regexten+"\"," +
                "restrictcid=\""+restrictcid+"\"," +
                "rtptimeout=\""+rtptimeout+"\"," +
                "rtpholdtimeout=\""+rtpholdtimeout+"\"," +
                "secret=\""+secret+"\"," +
                "setvar=\""+setvar+"\"," +
                "disallow=\""+disallow+"\"," +
                "allow=\""+allow+"\"," +
                "fullcontact=\""+fullcontact+"\"," +
                "ipaddr=\""+ipaddr+"\"," +
                "port=\""+port+"\"," +
                "regserver=\""+regserver+"\"," +
                "regseconds=\""+regseconds+"\"," +
                "username=\""+username+"\"," +
                "visible=\""+visible+"\" " +
                
                "WHERE id_voip_line=\""+id+"\";";
        
        System.out.println(insert);
        
        try
        {
            st = conn.createStatement();
            st.executeUpdate(insert);
            
        } catch (Exception e) {
            System.out.println("Exception " + e);
            okay=false;
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

    public LineTO findLineById(String id){
        
        LineTO Line = new LineTO();

        Connection conn = (Connection) getConnectionWithJNDI();
        Statement st = null;
        ResultSet rs = null;

        try {

            st = conn.createStatement();
            rs = st.executeQuery("SELECT * FROM voip_line WHERE (id_voip_line=\""+id+"\") ");

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
            
        } catch (Exception e) {
            System.out.println("Exception" + e);
            e.printStackTrace();
        } finally {
            closeRsAndSt(rs, st);
        }
        closeConnection(conn);

        return Lines;
    }
    
    public LinkedList<LineTO> findLineByAttribute(String name, String value){
        
        LinkedList<LineTO> Lines = new LinkedList<LineTO>();

        Connection conn = (Connection) getConnectionWithJNDI();
        Statement st = null;
        ResultSet rs = null;

        try {

            st = conn.createStatement();
            rs = st.executeQuery("SELECT * FROM voip_line WHERE "+name+"=\""+value+"\"");

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
