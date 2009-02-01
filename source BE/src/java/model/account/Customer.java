/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package model.account;

/**Customer is a model class.
 * contains name,surname,log,pw,mail,sexe,born,fixe,gsm,protect,key1,key2
 * @author Baudet Aurélien
 */
public class Customer {
    //******************
    // ATTRIBUTES
    //******************
    private String firstName;
    private String lastName;
    private String login;
    private String password;
    private String mail;
    private String birthday;
    private String sexe;
    private String phone;
    private String cellPhone;
    private String protectAccount;
    private String key1;
    private String key2;
    //******************
    // CONSTRUCTORS
    //******************
    /**
     * Constructor User
     * @param nom
     * @param prenom
     * @param login
     * @param mdp
     * @param mail
     * @param sexe
     * @param naissance
     * @param fixe
     * @param gsm
     * @param protect
     * @param key1
     * @param key2
     */
    public Customer(String firstName, String lastName, String login, String password, String mail, String birthday, String sexe,
            String phone, String cellPhone, String protectAccount, String key1, String key2) {
        this.firstName = firstName;
        this.lastName = lastName;
        this.login = login;
        this.password = password;
        this.mail = mail;
        this.birthday = birthday;
        this.sexe = sexe;
        this.phone = phone;
        this.cellPhone = cellPhone;
        if (protectAccount == "") {
            this.protectAccount = "0";
        } else {
            this.protectAccount = protectAccount;
        }
        this.key1 = key1;
        this.key2 = key2;
    }

    //******************
    //GETTERS
    //******************
    public String getFirstName() {
        return firstName;
    }

    public String getLastName() {
        return lastName;
    }

    public String getLogin() {
        return login;
    }

    public String getPassword() {
        return password;
    }

    public String getMail() {
        return mail;
    }

    public String getBirthday() {
        return birthday;
    }

    public String getSexe() {
        return sexe;
    }

    public String getPhone() {
        return phone;
    }

    public String getCellPhone() {
        return cellPhone;
    }

    public String getProtectAccount() {
        return protectAccount;
    }

    public String getKey1() {
        return key1;
    }

    public String getKey2() {
        return key2;
    }
}
