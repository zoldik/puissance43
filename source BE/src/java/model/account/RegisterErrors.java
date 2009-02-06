package model.account;

import DAO.transfertObject.CustomerTO;

/** Classe de test permettant la validation d'un compte à la création
 * @author Baudet Aurélien
 */
public class RegisterErrors {

    private int errorFirstName;
    private int errorLastName;
    private int errorLogin;
    private int errorPassword;
    private int errorMail;
    private int errorSexe;
    private int errorBirthday;
    private int errorPhone;
    private int errorCellPhone;
    private int errorProfession;
    private int errorCompany;

    //gestion de l'account_level ?
    
    /**Constructor
     * 
     */
    public RegisterErrors() {
        this.errorFirstName = 0;
        this.errorLastName = 0;
        this.errorLogin = 0;
        this.errorPw = 0;
        this.errormail = 0;
        this.errorsexe = 0;
        this.errorborn = 0;
        this.errorfixe = 0;
        this.errorgsm = 0;
        this.errorprotect = 0;
        this.error = 0;
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
    public RegisterErrors checkInfos(CustomerTO newCustomer) {
        if (newCustomer.getFirstName() == "" || newCustomer.getFirstName().length() > 15) {
            this.errorFirstName = 1;
            this.error = 1;
        }
        if (newCustomer.getLastName() == "" || newCustomer.getLastName().length() > 15) {
            this.errorLastName = 1;
            this.error = 1;
        }
        if (newCustomer.getLogin() == "" || newCustomer.getLogin().length() > 15) {
            this.errorLogin = 1;
            this.error = 1;
        }
        if (newCustomer.getPassword() == "" || newCustomer.getPassword().length() > 15 || newCustomer.getPassword().length() < 8) {
            this.errorPw = 1;
            this.error = 1;
        }
        if (newCustomer.getMail() == "" || newCustomer.getMail().length() > 30 || newCustomer.getMail().indexOf("@") == -1 || newCustomer.getMail().indexOf(".") == -1) {
            this.errormail = 1;
            this.error = 1;
        }
        if (newCustomer.getSexe() == "" || newCustomer.getSexe().length() > 1 || (newCustomer.getSexe().indexOf("M") == -1 && newCustomer.getSexe().indexOf("F") == -1 && newCustomer.getSexe().indexOf("X") == -1)) {
            this.errorsexe = 1;
            this.error = 1;
        }
        if (newCustomer.getBirthday() == "" || newCustomer.getBirthday().length() > 10) {
            this.errorborn = 1;
            this.error = 1;
        }
        if (newCustomer.getPhone().length() > 20) {
            this.errorfixe = 1;
            this.error = 1;
        }
        if (newCustomer.getCellPhone().length() > 20) {
            this.errorgsm = 1;
            this.error = 1;
        }
        /*
        if (Integer.parseInt(newCustomer.getProtectAccount()) != (Integer.parseInt(newCustomer.getKey1()) + Integer.parseInt(newCustomer.getKey2())) || newCustomer.getProtectAccount() == "0") {
        this.errorprotect = 1;
        this.error = 1;
        }
         */
        return this;
    }

   
}
