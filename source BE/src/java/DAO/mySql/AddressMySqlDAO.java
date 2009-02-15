package DAO.mySql;

import DAO.interfaces.AddressDAOInterface;
import DAO.transfertObject.AddressTO;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

/**
 *
 * @author vincent
 */
public class AddressMySqlDAO extends MySqlGeneralObjectDAO implements AddressDAOInterface {

    public AddressTO findAddressById(int id) {
        Integer idInteger = new Integer(id);

        //Return object
        AddressTO address = new AddressTO();

        //Connexion to the database with JNDI 
        Connection conn = (Connection) getConnectionWithJNDI();

        //transaction or sequence of queries
        PreparedStatement pSt = null;

        //result of the queries
        ResultSet rs = null;

        try {
            pSt = conn.prepareStatement("SELECT * FROM `address` WHERE `id_address` = ? ;");
            pSt.setString(1, idInteger.toString());
            rs = pSt.executeQuery();
            
                address.setStreet(rs.getString("first_name"));
                address.setPostalCode(rs.getString("last_name"));
                address.setCity(rs.getString("login"));
                address.setCountry(rs.getString("password"));
                address.setTypeAddress(rs.getString("mail"));
        } catch (SQLException e) {
            e.toString();
        } finally {
            closeRsAndSt(rs, pSt);
        }
        closeConnection(conn);

        return address;
    }

}
