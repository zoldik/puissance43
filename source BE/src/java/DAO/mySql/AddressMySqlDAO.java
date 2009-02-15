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

            rs.next();

            address.setStreet(rs.getString("street"));
            address.setPostalCode(rs.getString("postal_code"));
            address.setCity(rs.getString("city"));
            address.setCountry(rs.getString("country"));
            address.setTypeAddress(rs.getString("type_address"));
            
        } catch (SQLException e) {
            e.toString();
        } finally {
            closeRsAndSt(rs, pSt);
        }
        closeConnection(conn);

        return address;
    }
}
