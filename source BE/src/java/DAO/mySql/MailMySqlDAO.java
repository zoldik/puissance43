package DAO.mySql;

import DAO.interfaces.MailDAOInterface;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import javax.sql.DataSource;

import javax.naming.Context;
import javax.naming.InitialContext;


/**
 * Contient les requêtes pour la partie gestion mail
 * @author Baudet Aurélien
 */
public class MailMySqlDAO implements MailDAOInterface {

    /** Connect to the main database (RedNeck Mail database)
     * init uses service JNDI
     * @return Statement
     */
    public Connection getMailConnectionWithJNDI()  {
        Connection conn = null;
        if (conn == null) {
            try {
                Context initCtx = new InitialContext();
                DataSource ds = (DataSource) initCtx.lookup("java:RedNeckMail");
                conn = ds.getConnection();
            } catch (Exception e) {
                System.out.println("Connection issue : ");
                e.printStackTrace();
            }
            System.out.println("Success connection \n");
        }
        return conn;
    }

    /**  Close the BDD's connection
     * close uses the service JNDI.     * 
     */
    public void closeMailConnection(Connection conn) {
        try {
            conn.close();
        } catch (Exception e) {
            System.out.println("\n Impossible de se déconnecter de la base de donnée\n");
            e.printStackTrace();
        }
    }

    public boolean insert(String mail, String pw) {
        boolean okay = true;

        Statement stmt;

        Connection conn = (Connection) getMailConnectionWithJNDI();

        try {
            stmt = conn.createStatement();
            ResultSet rs = null;
            rs = stmt.executeQuery("select * from compte where login=\"" + mail + "\"");

            if (rs.next() == true) {
                okay = false;
            } else {
                stmt.executeUpdate("insert into compte (login,motdepasse,emplacement) values (\"" + mail + "\",\"" + pw + "\",\"/home/vmail/RedNeck\")");
                okay = true;
            }
        } catch (Exception e) {
            System.out.println("Exception" + e);
            okay = false;
        }
        try {
            closeMailConnection(conn);
        } catch (Exception e3) {
            System.out.println("Erreur fermeture" + e3);
        }
        return okay;
    }

    public boolean delete(String mail, String pw) {
        boolean okay = true;

        Statement stmt;

        Connection conn = (Connection) getMailConnectionWithJNDI();
        try {
            stmt = conn.createStatement();
            ResultSet rs = null;
            rs = stmt.executeQuery("select * from compte where login=\"" + mail + "\" and motdepasse=\"" + pw + "\"");
            if (rs.next() == true) {
                stmt.executeUpdate("delete from compte where login=\"" + mail + "\" and motdepasse=\"" + pw + "\"");
                okay = true;
            } else {
                okay = false;
            }
        } catch (Exception e) {
            System.out.println("Exception" + e);
            okay = false;
        }
        try {
            closeMailConnection(conn);
        } catch (Exception e3) {
            System.out.println("Erreur fermeture" + e3);
        }
        return okay;
    }
}
