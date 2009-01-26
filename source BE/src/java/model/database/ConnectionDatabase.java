/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package model.database;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;
import java.sql.Connection;
import java.sql.Statement;

/**ConnectionDatabase allows to connect the application to a SGBDR.
 * This connection processes in 3 step. That is why you have three methods 
 * in this class. 
 * @author Baudet Aurélien
 */
public class ConnectionDatabase {

    private Connection conn;
    private boolean connected = false;
    //
    //*******************
    //Constructor 
    //*******************
    /**Constructor
     * Instanciate the conn attribute
     */
    protected ConnectionDatabase() {
        this.conn = init();
    }
    //
    //*******************
    //Getters 
    //*******************
    /**Check the connexion     * 
     * @return a boolean false : there is not connexion, true : there is a connexion
     */
    public boolean getConnected() {
        return connected;
    }

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
    public void setConnected(boolean connected) {
        this.connected = connected;
    }
    //
    //*******************
    //Behaviour methods 
    //*******************
    /** Connect to the main database (RedNeck database)
     * init uses service JNDI
     * @return Statement
     */
    public Connection init() {
        Statement stmt = null;
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
    public void close() throws Exception {
        this.conn.close();
    }
}
