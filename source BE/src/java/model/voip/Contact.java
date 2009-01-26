/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package model.voip;


/**
 * Classe de gestion des contacts (id, titre, categorie,nom,prenom,telephone,mail)
 * @author thomas
 */
public class Contact {
    public int id;
    public String titre;
    public String categorie;
    public String nom;
    public String prenom;
    public String telephone;
    public String mail;
    public int id_voip;

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
    this.mail="";
    this.id_voip=0;}
                
 /**
  * Constructeur Contact
  * @param id
  * @param categorie
  * @param nom
  * @param prenom
  * @param telephone
  * @param mail
  * @param id_voip
  */
public Contact (int id,String titre,String categorie,String nom,String prenom,String telephone,String mail,int id_voip) {
    this.id=id;
    this.categorie=categorie;
    this.nom=nom;
    this.prenom=prenom;
    this.telephone=telephone;
    this.mail=mail;
    this.id_voip=id_voip;        
               }

public void showContact(){
    
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

    public int getId_voip() {
        return id_voip;
    }

    public void setId_voip(int id_voip) {
        this.id_voip = id_voip;
    }


    
    
}
