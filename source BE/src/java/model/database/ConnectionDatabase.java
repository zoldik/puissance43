package model.database;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

/**ConnectionDatabase allows to connect the application to a SGBDR.
 * This connection processes in 3 step. That is why you have three methods 
 * in this class. 
 * @author Baudet Aurélien
 */
public class ConnectionDatabase {

    private Connection conn;
    //
    //*******************
    //Constructor 
    //*******************
    /**Constructor
     * Instanciate the conn attribute
     */
    public ConnectionDatabase() {
        this.conn = init();
    }
    //
    //*******************
    //Getters 
    //*******************
    /** Getter connexion
     * @return Connection
     */
    public Connection getConn() {
        return conn;
    }
    //
    //*******************
    //Setters 
    //*******************
    //*******************
    //Behaviour methods 
    //*******************
    /** Connect to the main database (RedNeck database)
     * init uses service JNDI
     * @return Statement
     */
    private Connection init() {
        Connection conn = null;
        try {
            Context initCtx = new InitialContext();
            DataSource ds = (DataSource) initCtx.lookup("java:MySqlDS");
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
    public void close() {
        try {
            conn.close();
        } catch (Exception e) {
            System.out.println("\n Impossible de se déconnecter de la base de donnée\n");
            e.printStackTrace();
        }
    }

    /**Method static to close the rs and the st.
     * Use in the DAO objects.
     * 
     * @param rs
     * @param st
     */
    public static void closeRsAndSt(ResultSet rs, Statement st) {
        if (rs != null) {
            try {
                rs.close();
            } catch (SQLException sqlEx) {
                //ignore
                }
            rs = null;
        }

        if (st != null) {
            try {
                st.close();
            } catch (SQLException sqlEx) {
                //ignore
                }
        }
        st = null;
    }
}
