/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package model.bill;

/**
 * Class de gestion des options (infos sites + facturation mensuelle/annuelle)
 * @author orthank
 */
public class Option {
    String name;
    String price;
    String quantity;
    String paiement;
    String description;
    
    /**
     * Constructor option
     * @param name
     * @param price
     * @param quantity
     * @param paiement
     * @param description
     */
    public Option(String name, String price, String quantity, String paiement, String description){
        this.name=name;
        this.price=price;
        this.quantity=quantity;
        this.paiement=paiement;
        this.description=description;
    }
}
