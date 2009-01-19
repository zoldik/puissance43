/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package model.authentification;

/**
 * Classe de gestion des accounts (inscription, identification, modification infos personnelles)
 * @author orthank
 */
public class Account {
    private int id;
    private String log;
    private String pw;
    private String name;
    private String surname;
    private String societe;
    private String mail;
    private String sexe;
    private String user_type;
    private String account_level;
    private String type_user_vod;
    private String credit_vod;
    private String tel;
    private String gsm;
    private String born;
    private boolean allowed;
    
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
    public Account(int id, String login, String mdp, String nom, String prenom, String societe, String mail, String sexe, String user_type, String account_level, String typeUserVOD, String creditVOD, String tel, String gsm, String naissance) {
        this.id=id;
        this.log=login;
        this.pw=mdp;
        this.name=nom;
        this.surname=prenom;
        this.societe=societe;
        this.mail=mail;
        this.sexe=sexe;
        this.user_type=user_type;
        this.account_level=account_level;
        this.type_user_vod=typeUserVOD;
        this.credit_vod=creditVOD;
        this.tel=tel;
        this.gsm=gsm;
        this.born=naissance;
        this.allowed=false;    }

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

    public String getUser_type() {
        return user_type;
    }

    public String getAccount_level() {
        return account_level;
    }

    public String getType_user_vod() {
        return type_user_vod;
    }

    public String getCredit_vod() {
        return credit_vod;
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