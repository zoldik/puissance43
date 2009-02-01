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
    private String log;
    private String pw;
    private String name;
    private String surname;
    private String societe;
    private String mail;
    private String sexe;
    private String userType;
    private String accountLevel;
    private String typeUserVod;
    private String creditVod;
    private String tel;
    private String gsm;
    private String born;
    private boolean allowed;
    
        //******************
    // CONSTRUCTORS
    //******************
           
    /**
     * Constructeur par défaut Account
     */
    public Customer() {
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
    }
    
    /**
     * Sert à l'authentification d'un utilisateur à partir du login & mdp passés en argument
     * @param login
     * @param password
     * @throws java.lang.Exception
     */
    public Customer(String login, String password) throws Exception {
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
    }
    
    public int getId() {
        return id;
    }

    public String getLog() {
        return log;
    }

    public String getPw() {
        return pw;
    }

    public String getName() {
        return name;
    }

    public String getSurname() {
        return surname;
    }

    public String getSociete() {
        return societe;
    }

    public String getMail() {
        return mail;
    }

    public String getSexe() {
        return sexe;
    }

    public String getUserType() {
        return userType;
    }

    public String getAccountLevel() {
        return accountLevel;
    }

    public String getTypeUserVod() {
        return typeUserVod;
    }

    public String getCreditVod() {
        return creditVod;
    }

    public String getTel() {
        return tel;
    }

    public String getGsm() {
        return gsm;
    }

    public String getBorn() {
        return born;
    }

    public boolean isAllowed() {
        return allowed;
    }
}