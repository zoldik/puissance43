/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package DAO.mySql.test;

import DAO.transfertObject.AddressTO;
import DAO.transfertObject.CustomerTO;

/**
 *
 * @author vincent
 */
public class insertSyntaxTest {

    public static void main(String[] args) {

        CustomerTO customerTO = new CustomerTO();

        customerTO.setFirstName("michel");
        customerTO.setLastName("Dujmovic");
        customerTO.setLogin("anya");
        customerTO.setPassword("anya");
        customerTO.setMail("anya@gmail.com");
        customerTO.setSexe("F");
        customerTO.setBirthday("09/02/2009");
        customerTO.setPhone("03 20 00 56 12");
        customerTO.setCellPhone("06 68 97 12 32");

        AddressTO addressTO = new AddressTO();

        addressTO.setStreet("12, avenue de j'en ai marre");
        addressTO.setPostalCode("53 464");
        addressTO.setCity("MARRE");
        addressTO.setCountry("FRANCE");

        String insertAddress = "INSERT INTO `address` ( `street` , `postal_code` , `city` , `country` ) ";

        String valuesAddress = "VALUES ( " + "'" + addressTO.getStreet() + "','" + addressTO.getPostalCode() +
                "','" + addressTO.getCity() + "','" + addressTO.getCountry() + "');";

        String selectId = "SELECT `id_address` FROM `address` WHERE `street` = \"12, avenue de jen ai marre\" AND `postal_code` = \"53 464\" " +
                " AND `city` = \"MARRE\" AND `country` = \"FRANCE\" LIMIT 0 , 30";

        String insertCustomer = "INSERT INTO `customer` ( `id_address` , `first_name` , " +
                "`last_name` , `login` , `password`, `mail` , `sexe` , `birthday` , `phone` , `cell_phone` , `profession` , " +
                "`company` , `account_level` ) ";

        String valuesCustomer = " VALUES ( " + "'" + selectId + "','" + customerTO.getFirstName() +
                "','" + customerTO.getLastName() + "','" + customerTO.getLogin() +
                "','" + customerTO.getPassword() + "','" + customerTO.getMail() +
                "','" + customerTO.getSexe() + "','" + customerTO.getBirthday() +
                "','" + customerTO.getPhone() + "','" + customerTO.getCellPhone() +
                "','" + "profession" + "','" + "company" + "','" + "1" + "');";


        insertAddress += valuesAddress;
        insertCustomer += valuesCustomer;
        System.out.println(insertCustomer);
    //Puis, tester dans phpMyAdmin
    }
}
