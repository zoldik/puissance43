/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package model.account;

/**Customer is a model class.
 * contains name,surname,log,pw,mail,sexe,born,fixe,gsm,protect,key1,key2
 * @author Baudet Aurélien
 */
public class Customer2 {
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
     * Constructeur par défaut Account
     */
    /*public Customer() {
        this.id=0;
        this.log="";
        this.pw="";
        this.name="";
        this.surname="";
        this.societe="";
        this.mail="";
        this.sexe="";
        this.userType="";
        this.accountLevel="";
        this.typeUserVod="";
        this.creditVod="";
        this.tel="";
        this.gsm="";
        this.born="";
        this.allowed=false;
    }*/
    
    /**
     * Sert à l'authentification d'un utilisateur à partir du login & mdp passés en argument
     * @param login
     * @param password
     * @throws java.lang.Exception
     */
    /*public Customer(String login, String password) throws Exception {
        this.id=0;
        this.log=login;
        this.pw=password;
        this.name="";
        this.surname="";
        this.societe="";
        this.mail="";
        this.sexe="";
        this.userType="";
        this.accountLevel="";
        this.typeUserVod="";
        this.creditVod="";
        this.tel="";
        this.gsm="";
        this.born="";
        boolean tmp_allowed = false;
        tmp_allowed = SQLCustomer.isAllowed(login,password);
        this.allowed=tmp_allowed;
        if (this.allowed) {
            this.id=SQLCustomer.getID(login, password);
            this.name=SQLCustomer.getName(login, password);
            this.surname=SQLCustomer.getSurname(login, password);
        }
    }*/
    
    /**
     * Constructeur Account
     * @param id
     * @param login
     * @param mdp
     * @param nom
     * @param prenom
     * @param societe
     * @param mail
     * @param sexe
     * @param user_type
     * @param account_level
     * @param typeUserVOD
     * @param creditVOD
     * @param tel
     * @param gsm
     * @param naissance
     */
    /*public Customer(int id, String login, String mdp, String nom, String prenom, String societe, String mail, 
            String sexe, String user_type, String account_level, String typeUserVOD, String creditVOD, String tel, String gsm, String naissance) {
        this.id=id;
        this.log=login;
        this.pw=mdp;
        this.name=nom;
        this.surname=prenom;
        this.societe=societe;
        this.mail=mail;
        this.sexe=sexe;
        this.userType=user_type;
        this.accountLevel=account_level;
        this.typeUserVod=typeUserVOD;
        this.creditVod=creditVOD;
        this.tel=tel;
        this.gsm=gsm;
        this.born=naissance;
        this.allowed=false;    
    }*/

        
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
    public Customer2(String firstName, String lastName, String login, String password, String mail, String birthday, String sexe,
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
