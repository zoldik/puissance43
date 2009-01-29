/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package model.database;

import model.voip.*;

import java.sql.*;
import java.util.*;
/**
 *
 * @author francois
 */
public class VoipUserDAO {

    
    public static LinkedList<VoipUser> extractAllVoipUser() {

        LinkedList<VoipUser> voipUsers= new LinkedList<VoipUser>();

        //transaction or sequence of queries
        Statement st = null;

        //result of the queries
        ResultSet rs = null;

        ConnectionDatabase connectionDatabase = new ConnectionDatabase();
        Connection conn = (Connection) connectionDatabase.getConn();

        try {

            st = conn.createStatement();
            rs = st.executeQuery("SELECT * FROM USER_VOIP");

            while (rs.next()) {
                VoipUser li= new VoipUser();

                li.setid(rs.getInt("ID_VOIP"));
                li.setlogin(rs.getString("login"));
                li.setaccountlevel(rs.getInt("account_level"));
                li.setisactivated(rs.getBoolean("isactivated"));
                
                voipUsers.add(li);                
            }

        } catch (Exception e) {
            e.printStackTrace();

        } finally {
            ConnectionDatabase.closeRsAndSt(rs, st);
        }

        connectionDatabase.close();
        return voipUsers;
    }

    
    public static VoipUser extractVoipUserbyId(String id) {

        VoipUser voipUser= new VoipUser();

        //transaction or sequence of queries
        Statement st = null;

        //result of the queries
        ResultSet rs = null;

        ConnectionDatabase connectionDatabase = new ConnectionDatabase();
        Connection conn = (Connection) connectionDatabase.getConn();

        try {

            st = conn.createStatement();
            rs = st.executeQuery("SELECT * FROM USER_VOIP WHERE ID_VOIP = \""+id+"\"");

            while (rs.next()) {
                VoipUser li= new VoipUser();

                li.setid(rs.getInt("ID_VOIP"));
                li.setlogin(rs.getString("login"));
                li.setaccountlevel(rs.getInt("account_level"));
                li.setisactivated(rs.getBoolean("isactivated"));
                
                voipUser=li;                
            }

        } catch (Exception e) {
            e.printStackTrace();

        } finally {
            ConnectionDatabase.closeRsAndSt(rs, st);
        }

        connectionDatabase.close();
        return voipUser;
    }
    

      /**
      * Insert a Ligne in the table
      * @param id
      * @param name
      * @return
      */
    
   public static boolean insert(String login, String password, String account_level, String isactivated){        
        boolean okay=true;
        Statement stmt;
        ConnectionDatabase connexion=new ConnectionDatabase();

        String insert= "insert into VOIP_LIGNE (login, password, account_level, isactivated) values (\""+login+"\",\""+password+"\",\""+account_level+"\",\""+isactivated+"\")";
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
    public static boolean deleteUserById(String id)
    {
        boolean okay=true;
        Statement stmt;
        ConnectionDatabase connexion=new ConnectionDatabase();
        try
        {
            stmt=connexion.getConn().createStatement();
            stmt.executeUpdate("DELETE FROM USER_VOIP WHERE ID_VOIP ="+id+";");
        }
        catch(SQLException e2)
        {
            System.out.println("SqlException"+e2);
            okay=false;
        }
        try {connexion.close();} catch (Exception e3) {System.out.println("Erreur fermeture"+e3);}
        return okay;
    }
    

}
