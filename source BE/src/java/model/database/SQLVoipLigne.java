/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package model.database;
import java.sql.*;
/**Class SQLVoipLigne
 * Manage
 * @author francois
 */
public class SQLVoipLigne {
    
      /**
      * Insert a Ligne in the table
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
    
    public static boolean insert(String name, String host, String type, String context, String dtmfmode, String language, String mailbox, String secret, String username)
    {     
        boolean okay=true;
        Statement stmt;
        SQLObjet connexion=new SQLObjet();
        
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
     * Return all elements of a ligne from the table
     * @param ligne
     * @return
     */  
    public static ResultSet getLigne(String ligne)
    {
        Statement stmt;
        SQLObjet connexion=new SQLObjet();
        ResultSet rs=null;
        try
        {
            stmt=connexion.getConn().createStatement();
            rs = stmt.executeQuery("select * from VOIP_LIGNE where (name=\""+ligne+"\")");
        }
        catch(SQLException e2)
        {
            System.out.println("SqlException"+e2);
        }
        try {connexion.close();} catch (Exception e3) {System.out.println("Erreur fermeture"+e3);}
        return rs;

    }
    
    /**
    * Return all elements from the table
    * @param ligne
    * @return
    */
    public static ResultSet getLignes()
    {
        Statement stmt;
        SQLObjet connexion=new SQLObjet();
        ResultSet rs=null;
        try
        {
            stmt=connexion.getConn().createStatement();
            rs = stmt.executeQuery("select * from VOIP_LIGNE");
        }
        catch(SQLException e2)
        {
            System.out.println("SqlException"+e2);
        }
        //try {connexion.close();} catch (Exception e3) {System.out.println("Erreur fermeture"+e3);}
        return rs;

    }
    
    /**
    * Return all elements of a ligne from the database
    * @param ligne
    * @return
    */ 
    public static ResultSet deleteLigne(String ligne)
    {
        Statement stmt;
        SQLObjet connexion=new SQLObjet();
        ResultSet rs=null;
        try
        {
            stmt=connexion.getConn().createStatement();
            rs = stmt.executeQuery("select * from VOIP_LIGNE where (name=\""+ligne+"\")");
        }
        catch(SQLException e2)
        {
            System.out.println("SqlException"+e2);
        }
        try {connexion.close();} catch (Exception e3) {System.out.println("Erreur fermeture"+e3);}
        return rs;

    }
    
    
    
    
    
}
