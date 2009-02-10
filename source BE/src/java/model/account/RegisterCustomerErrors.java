package model.account;

import DAO.transfertObject.CustomerTO;

/** Classe de test permettant la validation d'un compte à la création
 * @author Baudet Aurélien
 */
public class RegisterCustomerErrors {

    private int errorFirstName = 0;
    private int errorLastName = 0;
    private int errorLogin = 0;
    private int errorPassword = 0;
    private int errorMail = 0;
    private int errorSexe = 0;
    private int errorBirthday = 0;
    private int errorPhone = 0;
    private int errorCellPhone = 0;
    private int errorProfession = 0;
    private int errorCompany = 0;

    //gestion de l'account_level ?
    /**Constructor
     * 
     */
    public RegisterCustomerErrors() {
        this.errorFirstName = 0;
        this.errorLastName = 0;
        this.errorLogin = 0;
        this.errorPassword = 0;
        this.errorMail = 0;
        this.errorSexe = 0;
        this.errorBirthday = 0;
        this.errorPhone = 0;
        this.errorCellPhone = 0;
        this.errorProfession = 0;
        this.errorCompany = 0;
    }
    //**********
    //GETTERS
    //**********
    public int getErrorBirthday() {
        return errorBirthday;
    }

    public int getErrorCellPhone() {
        return errorCellPhone;
    }

    public int getErrorCompany() {
        return errorCompany;
    }

    public int getErrorFirstName() {
        return errorFirstName;
    }

    public int getErrorLastName() {
        return errorLastName;
    }

    public int getErrorLogin() {
        return errorLogin;
    }

    public int getErrorMail() {
        return errorMail;
    }

    public int getErrorPassword() {
        return errorPassword;
    }

    public int getErrorPhone() {
        return errorPhone;
    }

    public int getErrorProfession() {
        return errorProfession;
    }

    public int getErrorSexe() {
        return errorSexe;
    }
    //**********
    //METHODS
    //**********
    /** Check if all the fields in the register's form is well filled
     * 
     * @param newUser
     * @return ErrorRegister
     */
    public boolean checkInfos(CustomerTO customerTO) {

        //Return object
        boolean error = false;

        //obligatory field
        if (customerTO.getFirstName() == "" || customerTO.getFirstName().length() > 15) {
            this.errorFirstName = 1;
            error = true;
        }

        //obligatory field
        if (customerTO.getLastName() == "" || customerTO.getLastName().length() > 15) {
            this.errorLastName = 1;
            error = true;
        }

        //obligatory field
        if (customerTO.getLogin() == "" || customerTO.getLogin().length() > 15) {
            this.errorLogin = 1;
            error = true;
        }

        //obligatory field
        if (customerTO.getPassword() == "" || customerTO.getPassword().length() > 15 || customerTO.getPassword().length() < 8) {
            this.errorPassword = 1;
            error = true;
        }

        //obligatory field
        if (customerTO.getMail() == "" || customerTO.getMail().length() > 30 || customerTO.getMail().indexOf("@") == -1 || customerTO.getMail().indexOf(".") == -1) {
            this.errorMail = 1;
            error = true;
        }

        //obligatory field
        if (customerTO.getSexe() == "" || customerTO.getSexe().length() > 1 || (customerTO.getSexe().indexOf("M") == -1 && customerTO.getSexe().indexOf("F") == -1 && customerTO.getSexe().indexOf("X") == -1)) {
            this.errorSexe = 1;
            error = true;
        }

        //obligatory field
        if (customerTO.getBirthday() == "" || customerTO.getBirthday().length() > 10) {
            this.errorBirthday = 1;
            error = true;
        }

        //NOT obligatory field because you have not customer.get... == "" in the predicat;
        if (customerTO.getPhone().length() > 20) {
            this.errorPhone = 1;
            error = true;
        }

        //NOT obligatory field because you have not customer.get... == "" in the predicat;
        if (customerTO.getCellPhone().length() > 20) {
            this.errorCellPhone = 1;
            error = true;
        }

        /*
        if (Integer.parseInt(newCustomer.getProtectAccount()) != (Integer.parseInt(newCustomer.getKey1()) + Integer.parseInt(newCustomer.getKey2())) || newCustomer.getProtectAccount() == "0") {
        this.errorprotect = 1;
        this.error = 1;
        }
         */
        return error;
    }
}
