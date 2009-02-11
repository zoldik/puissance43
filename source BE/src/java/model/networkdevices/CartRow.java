/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package model.networkdevices;

import DAO.transfertObject.ItemTO;

/**Ligne panier.
 * 
 * @author vincent
 */
public class CartRow {
    
    //*******
    //Attributs
    //*******
    
    private ItemTO item; 
    private int quantity =1;
    
    //*******
    //Constructeur
    //*******
    
    public CartRow(ItemTO item){
        setItem(item);
    }
 
    //*******
    //Getters
    //*******
    
    public ItemTO getItem() {
        return item;
    }

    public int getQuantity() {
        return quantity;
    }    
     
    //*******
    //Setters
    //*******
    
    public void setItem(ItemTO item) {
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
        
        amount += (getQuantity()*item.getUnitPrice());
        
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

