/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package model.bill;

/**
 * Classe de gestion des abonnements (affiche site + facturation)
 * @author orthank
 */
public class Abonnement {
    String name;
    String price;
    String overload;
    String description;

    /**
     * Constructor Abonnement
     * @param name
     * @param price
     * @param overload : sert pour la partie facturation
     * @param description : sert pour le site afin de décrire l'Abonnement
     */
    public Abonnement(String name, String price, String overload, String description){
        this.name=name;
        this.price=price;
        this.overload=overload;
        this.description=description;
    }
}
