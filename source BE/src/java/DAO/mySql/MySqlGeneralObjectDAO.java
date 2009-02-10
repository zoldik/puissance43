package DAO.mySql;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import javax.sql.DataSource;

import javax.naming.Context;
import javax.naming.InitialContext;

/**
 *
 * @author vincent
 */
public class MySqlGeneralObjectDAO {

    //private Connection conn = null;

    public Connection getConnectionWithJNDI() {
        Connection conn = null;
        if (conn == null) {
            try {
                Context initCtx = new InitialContext();
                DataSource ds = (DataSource) initCtx.lookup("java:MySqlDS");
                conn = ds.getConnection();
            } catch (Exception e) {
                //System.out.println("Connection issue : ");
                e.printStackTrace();
            }
        //System.out.println("Success connection \n");
        }
        return conn;
    }

    /**Close the BDD's connection
     * close uses the service JNDI.     * 
     */
    public void closeConnection() {
        Connection conn = null;
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
    public void closeRsAndSt(ResultSet rs, Statement st) {
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
