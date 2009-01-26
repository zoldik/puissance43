/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package model.database;

import java.sql.*;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

/**
 *
 * @author Baudet Aurélien
 */
public class ObjectDAO {
    private Connection conn;
    
     /**Constructor
     * Sert à l'initialisation d'une connexion
     */
    protected ObjectDAO()
    {
        this.conn=init();
    }

    /** Connection à la base de donnees
    * Utilisation de l'annuaire JDNI
    * @return Statement
    */
    public Connection init()
    {
        Statement stmt=null;
        Connection conn=null;
        try
        {
        Context initCtx = new InitialContext();
        DataSource ds = (DataSource)initCtx.lookup("java:MySqlDS");
        conn = ds.getConnection();
        }
        catch (Exception e) {System.out.println("Problème de connection : "); e.printStackTrace();}
        System.out.println("Connection réussie\n");
        return conn;
    }
    
    /**  Fermeture connection à la base de donnees version JDNI
     * 
     */
    public void close() throws Exception
    {
        this.conn.close();
    }

    /**  Getter connexion
     * @return Connection
     */
    public Connection getConn() {
        return conn;
    }
}
