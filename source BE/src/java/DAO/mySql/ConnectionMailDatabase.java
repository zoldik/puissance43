package DAO.mySql;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

/**
 *
 * @author orthank
 */
public class ConnectionMailDatabase {

     private Connection conn;
    //
    //*******************
    //Constructor 
    //*******************
    /**Constructor
     * Instanciate the conn attribute
     */
    public ConnectionMailDatabase() {
        this.conn = initMail();
    }
    //
    //*******************
    //Getters 
    //*******************
    /** Getter connexion
     * @return Connection
     */
    public Connection getMailConn() {
        return conn;
    }
    
     /** Connect to the main database (RedNeck Mail database)
     * init uses service JNDI
     * @return Statement
     */
    private Connection initMail() {
        Connection conn = null;
        try {
            Context initCtx = new InitialContext();
            DataSource ds = (DataSource) initCtx.lookup("java:RedNeckMail");
            conn = ds.getConnection();
        } catch (Exception e) {
            System.out.println("Connection issue : ");
            e.printStackTrace();
        }
        System.out.println("Success connection \n");
        return conn;
    }

    /**  Close the BDD's connection
     * close uses the service JNDI.     * 
     */
    public void closeMail() {
        try {
            conn.close();
        } catch (Exception e) {
            System.out.println("\n Impossible de se déconnecter de la base de donnée\n");
            e.printStackTrace();
        }
    }

}
