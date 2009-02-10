package DAO.mySql.test;

import DAO.factory.DAOFactory;
import DAO.factory.MySqlDAOFactory;
import DAO.interfaces.CustomerDAOInterface;
import DAO.transfertObject.CustomerTO;

/**
 *
 * @author vincent
 */
public class MySqlCustomerDAOTest {
    
    public static void main(String[] args) {
        
        DAOFactory daoFactory = DAOFactory.getDAOFactory(DAOFactory.MYSQL);
        
        CustomerDAOInterface customerDAO = daoFactory.getCustomerDAO();
        
        CustomerTO customerTO = new CustomerTO();
        customerTO.setFirstName("firstName");
        customerTO.setLastName("lastName");
        customerTO.setLogin("login");
        customerTO.setPassword("password");
        customerTO.setMail("mail");
        customerTO.setSexe("sexe");
        customerTO.setBirthday("birthday");
        customerTO.setPhone("phone");
        customerTO.setCellPhone("cellPhone");
        
        //test inserCustomer
        customerDAO.insertCustomer(customerTO);     
    }
}
