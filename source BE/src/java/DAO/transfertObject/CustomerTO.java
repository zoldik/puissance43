/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package DAO.transfertObject;

/**Customer is a model class.
 * contains name,surname,log,pw,mail,sexe,born,fixe,gsm,protect,key1,key2
 * @author Baudet Aurélien
 */
public class CustomerTO {
    //******************
    // ATTRIBUTES
    //******************    
    private int id;
    private String firstName;
    private String lastName;
    private String login;
    private String password;
    private String mail;
    private String sexe;
    private String birthday;
    private String phone;
    private String cellPhone;
    private String profession;
    private String company;
    private String account_level;

    //******************
    //GETTERS
    //******************
    public String getAccount_level() {
        return account_level;
    }

    public String getBirthday() {
        return birthday;
    }

    public String getCellPhone() {
        return cellPhone;
    }

    public String getCompany() {
        return company;
    }

    public String getFirstName() {
        return firstName;
    }

    public int getId() {
        return id;
    }

    public String getLastName() {
        return lastName;
    }

    public String getLogin() {
        return login;
    }

    public String getMail() {
        return mail;
    }

    public String getPassword() {
        return password;
    }

    public String getPhone() {
        return phone;
    }

    public String getProfession() {
        return profession;
    }

    public String getSexe() {
        return sexe;
    }
    //******************
    //SETTERS
    //******************
    public void setAccount_level(String account_level) {
        this.account_level = account_level;
    }

    public void setBirthday(String birthday) {
        this.birthday = birthday;
    }

    public void setCellPhone(String cellPhone) {
        this.cellPhone = cellPhone;
    }

    public void setCompany(String company) {
        this.company = company;
    }

    public void setFirstName(String firstName) {
        this.firstName = firstName;
    }

    public void setId(int id) {
        this.id = id;
    }

    public void setLastName(String lastName) {
        this.lastName = lastName;
    }

    public void setLogin(String login) {
        this.login = login;
    }

    public void setMail(String mail) {
        this.mail = mail;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public void setProfession(String profession) {
        this.profession = profession;
    }

    public void setSexe(String sexe) {
        this.sexe = sexe;
    }
}
