/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package DAO.transfertObject;

/**Customer is a model class.
 * contains name,surname,log,pw,mail,sexe,born,fixe,gsm,protect,key1,key2
 * @author Baudet Aurélien, Philippe Lardennois
 */
public class CustomerTO {
    //******************
    // ATTRIBUTES
    //******************    
    private int id;
    private int idInternetSubscribe;
    private int idVoipSubscribe;
    private int idVodSubscribe;   
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
    private int accountLevel;
    private boolean valid;
    private int stateInternetSubscribe;
    private int stateVoipSubscribe;
    private int stateVodSubscribe;
    
    public CustomerTO() {
        this.id=0;
        this.firstName="";
        this.lastName="";
        this.login="";
        this.password="";
        this.mail="";
        this.sexe="";
        this.birthday="";
        this.phone="";
        this.cellPhone="";
        this.profession="";
        this.company="";
        this.accountLevel=0;
        this.valid=false;
    }
    
    //******************
    //GETTERS
    //******************
    public int getAccountLevel() {
        return accountLevel;
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
    
    public boolean getValid() {
        return valid;
    }
    
    public int getIdInternetSubscribe() {
        return idInternetSubscribe;
    }

    public int getIdVodSubscribe() {
        return idVodSubscribe;
    }

    public int getIdVoipSubscribe() {
        return idVoipSubscribe;
    }

    public int getStateInternetSubscribe() {
        return stateInternetSubscribe;
    }

    public int getStateVodSubscribe() {
        return stateVodSubscribe;
    }

    public int getStateVoipSubscribe() {
        return stateVoipSubscribe;
    }

    //******************
    //SETTERS
    //******************
    public void setAccountLevel(int account_level) {
        this.accountLevel = account_level;
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
    
    public void setValid(boolean valid) {
        this.valid = valid;
    }

    public void setIdInternetSubscribe(int idInternetSubscribe) {
        this.idInternetSubscribe = idInternetSubscribe;
    }

    public void setIdVodSubscribe(int idVodSubscribe) {
        this.idVodSubscribe = idVodSubscribe;
    }

    public void setIdVoipSubscribe(int idVoipSubscribe) {
        this.idVoipSubscribe = idVoipSubscribe;
    }

    public void setStateInternetSubscribe(int stateInternetSubscribe) {
        this.stateInternetSubscribe = stateInternetSubscribe;
    }

    public void setStateVodSubscribe(int stateVodSubscribe) {
        this.stateVodSubscribe = stateVodSubscribe;
    }

    public void setStateVoipSubscribe(int stateVoipSubscribe) {
        this.stateVoipSubscribe = stateVoipSubscribe;
    }
    
    
}
