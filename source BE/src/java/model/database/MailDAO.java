/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package model.database;


import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
/**
 * Contient les requêtes pour la partie gestion mail
 * @author Baudet Aurélien
 */
public class MailDAO {

    public static boolean insert(String mail, String pw){
        boolean okay = true;
        Statement stmt;
        ConnectionMailDatabase connexion = new ConnectionMailDatabase();
        try{
            stmt = connexion.getMailConn().createStatement();
            ResultSet rs = null;
            rs = stmt.executeQuery("select * from compte where (login=\""+mail+"\")");
            if (rs.next() == true)
            {
                okay = false;
            } else
                {
                    stmt.executeUpdate("insert into compte (login,motdepasse,emplacement) values (\""+mail+"\",\""+pw+"\",\"/home/vmail/RedNeck\")");
                    okay = true;
                } 
            } 
        catch (Exception e)
        {
            System.out.println("Exception" + e);
            okay = false;
        }
        try {connexion.closeMail();} catch (Exception e3) {System.out.println("Erreur fermeture" + e3);}
        return okay;
    }
}
