/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package model.voip;

/**
 * Classe de gestion des UserVoip ()
 * @author thomas, francois
 */
public class UserVoip {
    private int id;
    private String login;
    private String password;
    
    private String nom;
    private String prenom;
    private String telephone;
    private String mail;
    private boolean hasRepertoire;

/**
 *Constructeur par défaut de l'objet UserVoip
 * @author thomas
 */ 
public UserVoip() {
    this.id=0;
    this.login="";
    this.password="";
    
    this.nom="";
    this.prenom="";
    this.telephone="";
    this.mail="";
    this.hasRepertoire=false;
}







}
