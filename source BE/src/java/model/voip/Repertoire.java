/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package model.voip;


import java.util.*;



/**
 * Classe de gestion du répertoire (inscription, identification, modification infos personnelles)
 * @author thomas
 */
public class Repertoire {
    private int id;
    private int user_id;
    private LinkedList <Contact> contactList;

/**
 * Constructeur par défaut Répertoire
 */
 public Repertoire() {
        this.id=0;
        this.user_id=0;
        this.contactList=null;
        
    }

/**
 * Constructeur avec l'user_id passée en param
 * @param user_id
 * @param contactList
 */ 
 public Repertoire(int user_id) {
        this.id=0;
        this.user_id=user_id;
        this.contactList=null;
        
    }
 
}
