/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package model.authentification;

/**
 *
 * @author orthank
 */
public class Option {
    String name;
    String price;
    String quantity;
    String description;
    
    public Option(String name, String price, String quantity, String description){
        this.name=name;
        this.price=price;
        this.quantity=quantity;
        this.description=description;
    }
}
