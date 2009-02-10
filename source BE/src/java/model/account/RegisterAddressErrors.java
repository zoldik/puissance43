package model.account;

import DAO.transfertObject.AddressTO;

/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
/**
 *
 * @author vincent
 */
public class RegisterAddressErrors {

    private int errorStreet;
    private int errorPostalCode;
    private int errorCity;
    private int errorCountry;

    //gestion type_address
    public RegisterAddressErrors() {
        this.errorStreet = 0;
        this.errorPostalCode = 0;
        this.errorCity = 0;
        this.errorCountry = 0;
    }
    //**********
    //GETTERS
    //**********
    public int getErrorCity() {
        return errorCity;
    }

    public int getErrorCountry() {
        return errorCountry;
    }

    public int getErrorPostalCode() {
        return errorPostalCode;
    }

    public int getErrorStreet() {
        return errorStreet;
    }    
    
    //**********
    //METHODS
    //**********

 /** Check if all the fields in the register's form is well filled
     * 
     * @param newUser
     * @return ErrorRegister
     */
    public boolean checkInfos(AddressTO addressTO) {
        
        //Return object
        boolean error = false;
        
        //obligatory field
        if (addressTO.getStreet() == "" || addressTO.getStreet().length() > 35) {
            this.errorStreet = 1;
            error = true;
        }
        
        //obligatory field
        if (addressTO.getPostalCode() == "" || addressTO.getPostalCode().length() > 15) {
            this.errorPostalCode = 1;
            error = true;
        }
        
        //obligatory field
        if (addressTO.getCity() == "" || addressTO.getCity().length() > 15) {
            this.errorCity = 1;
            error = true;
        }
        
        //obligatory field
        if (addressTO.getCountry() == "" || addressTO.getCountry().length() > 15) {
            this.errorCountry = 1;
            error = true;
        }
        
        //NOT obligatory field because you have not addressTO.get... == "";
        /*
        if (addressTO.get...().length() > 20) {
            this.errorPhone = 1;
            error = true;
        }
        */
                
        return error;
    }


}
