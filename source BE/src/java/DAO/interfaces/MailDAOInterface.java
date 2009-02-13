package DAO.interfaces;

import java.sql.Connection;

/**
 *
 * @author vincent
 */
public interface MailDAOInterface {

    public Connection getMailConnectionWithJNDI();

    public void closeMailConnection(Connection conn);

    public boolean insert(String mail, String pw);

    public boolean delete(String mail, String pw);
}
