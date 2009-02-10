/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package model.account;

import model.database.*;

/**
 * Classe de gestion des accounts (inscription, identification, modification infos personnelles)
 * @author orthank
 */

public class Customer {
    private int id;
    private String login;
    private String password;
    private String first_name;
    private String last_name;
    private String mail;
    private String sexe;
    private String birthday;
    private String phone;
    private String cell_phone;
    private String profession;
    private String company;
    private String account_level;
    private boolean valid;
    private boolean allowed;
    
    //******************
    // CONSTRUCTORS
    //******************
           
    /**
     * Constructeur par défaut Account
     */
    public Customer() {
        this.id=0;
        this.login="";
        this.password="";
        this.first_name="";
        this.last_name="";
        this.mail="";
        this.sexe="";
        this.birthday="";
        this.phone="";
        this.cell_phone="";
        this.profession="";
        this.company="";
        this.account_level="";
        this.valid=false;
        this.allowed=false;
    }
    
    /**
     * Sert à l'authentification d'un utilisateur à partir du login & mdp passés en argument
     * @param login
     * @param password
     * @throws java.lang.Exception
     */
    public Customer(String login, String password) throws Exception {
        this.id=0;
        this.login=login;
        this.password=password;
        this.first_name="";
        this.last_name="";
        this.mail="";
        this.sexe="";
        this.birthday="";
        this.phone="";
        this.cell_phone="";
        this.profession="";
        this.company="";
        this.account_level="";
        this.valid=false;
        boolean tmp_allowed = false;
        tmp_allowed = SQLCustomer.isAllowed(login,password);
        this.allowed=tmp_allowed;
        if (this.allowed) {
            this.id=SQLCustomer.getID(login, password);
            this.first_name=SQLCustomer.getFirstName(login, password);
            this.last_name=SQLCustomer.getLastName(login, password);
        }
    }
    
    public int getId() {
        return id;
    }

    public String getLogin() {
        return login;
    }

    public String getPassword() {
        return password;
    }

    public String getFirstName() {
        return first_name;
    }

    public String getLastName() {
        return last_name;
    }

    public String getMail() {
        return mail;
    }

    public String getSexe() {
        return sexe;
    }

    public String getBirthday() {
        return birthday;
    }
    
    public String getPhone() {
        return phone;
    }

    public String getCellPhone() {
        return cell_phone;
    }    
    
    public String getProfession() {
        return profession;
    } 
    
    public String getCompany() {
        return company;
    }
    
    public String getAccountLevel() {
        return account_level;
    }    
    
    public boolean isValid() {
        return valid;
    }
    
    public boolean isAllowed() {
        return allowed;
    }
}