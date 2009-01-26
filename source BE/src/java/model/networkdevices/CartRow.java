/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package model.networkdevices;

/**Ligne panier.
 * 
 * @author vincent
 */
public class CartRow {
    
    //*******
    //Attributs
    //*******
    
    private Item item; 
    private int quantity =1;
    
    //*******
    //Constructeur
    //*******
    
    public CartRow(Item item){
        setItem(item);
    }
 
    //*******
    //Getters
    //*******
    
    public Item getItem() {
        return item;
    }

    public int getQuantity() {
        return quantity;
    }    
     
    //*******
    //Setters
    //*******
    
    public void setItem(Item item) {
        this.item = item;
    }

    public void setQuantity(int quantity) {
        this.quantity = quantity;
    }   
    
    //*******
    //Comportements    
    //*******
    
    public double computeTotalPrice() {
        double amount = 0.0;
        
        amount += (getQuantity()*item.getPrice());
        
        return amount;
    }
    
    public void incrementQuantity() {
        quantity++;
    }

    public void decrementQuantity() {
        quantity--;
    }
    
    //*******
    //Comportements secondaires
    //*******
    
    private double roundOff(double x) {
        long val = Math.round(x * 100); // cents
        return val / 100.0;
    }   
    
}

