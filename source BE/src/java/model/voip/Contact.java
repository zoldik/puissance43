/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package model.voip;

import model.database.*;

/**
 * Classe de gestion des contacts (id, titre, categorie,nom,prenom,telephone,mail)
 * @author thomas
 */
public class Contact {
    private int id;
    private String titre;
    private String categorie;
    private String nom;
    private String prenom;
    private String telephone;
    private String mail;

/**
 *Constructeur par défaut de l'objet Contact
 * @author thomas
 */ 
public Contact() {
    this.id=0;
    this.categorie="";
    this.nom="";
    this.prenom="";
    this.telephone="";
    this.mail=""; }
                
 /**
  * Constructeur Contact
  * @param id
  * @param categorie
  * @param nom
  * @param prenom
  * @param telephone
  * @param mail
  */
public Contact (int id,String titre,String categorie,String nom,String prenom,String telephone,String mail) {
    this.id=id;
    this.categorie=categorie;
    this.nom=nom;
    this.prenom=prenom;
    this.telephone=telephone;
    this.mail=mail;
               }

    public String getCategorie() {
        return categorie;
    }

    public int getId() {
        return id;
    }

    public String getMail() {
        return mail;
    }

    public String getNom() {
        return nom;
    }

    public String getPrenom() {
        return prenom;
    }

    public String getTelephone() {
        return telephone;
    }

    public String getTitre() {
        return titre;
    }

    public void setCategorie(String categorie) {
        this.categorie = categorie;
    }

    public void setId(int id) {
        this.id = id;
    }

    public void setMail(String mail) {
        this.mail = mail;
    }

    public void setNom(String nom) {
        this.nom = nom;
    }

    public void setPrenom(String prenom) {
        this.prenom = prenom;
    }

    public void setTelephone(String telephone) {
        this.telephone = telephone;
    }

    public void setTitre(String titre) {
        this.titre = titre;
    }


    
    
}
