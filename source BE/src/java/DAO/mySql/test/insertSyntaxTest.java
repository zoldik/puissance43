/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package DAO.mySql.test;

import DAO.transfertObject.CustomerTO;

/**
 *
 * @author vincent
 */
public class insertSyntaxTest {

    public static void main(String[] args) {

        CustomerTO customerTO = new CustomerTO();

        customerTO.setFirstName("Jean");
        customerTO.setLastName("Dujardin");
        customerTO.setLogin("OSS117");
        customerTO.setPassword("OSS117");
        customerTO.setMail("jean.dujardin@gmail.com");
        customerTO.setSexe("M");
        customerTO.setBirthday("19/03/1979");
        customerTO.setPhone("03 20 00 56 12");
        customerTO.setCellPhone("06 68 97 12 32");

        String insert = "INSERT INTO `customer` ( `id_address` , `first_name` , " +
                "`last_name` , `login` , `password`, `mail` , `sexe` , `birthday` , `phone` , `cell_phone` , `profession` , " +
                "`company` , `account_level` ) ";

        String values = " VALUES ( " + "\"" + "5" + "\",\"" + customerTO.getFirstName() +
                "\",\"" + customerTO.getLastName() + "\",\"" + customerTO.getLogin() +
                "\",\"" + customerTO.getPassword() + "\",\"" + customerTO.getMail() +
                "\",\"" + customerTO.getSexe() + "\",\"" + customerTO.getBirthday() +
                "\",\"" + customerTO.getPhone() + "\",\"" + customerTO.getCellPhone() +
                "\",\"" + "profession" + "\",\"" + "company" + "\",\"" + "1" + "\");";

        insert += values;

        System.out.println(insert);
    //Puis, tester dans phpMyAdmin
    }
}
