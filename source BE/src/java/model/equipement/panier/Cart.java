package model.equipement.panier;

import java.util.ArrayList;
import java.util.Iterator;

/**
 * Cart simulate a shopping cart of the real life.
 * Cart is a public class. With it, we can have the same behaviours that
 * the ones you have when you process your shopping with a real cart :
 * <ul>
 * <li>add an item
 * <li>remove an item
 * </ul>
 * <p>
 * Moreover, with other behaviours, you can determine the number of items 
 * and the price of the all.
 * <p>
 * A Cart object encapsulates the state information of the contain 
 * of the cart. For that, a arraylist of CartRow is used.
 *  * 
 * @author Vincent Destailleur
 */
public class Cart {
    
    //*******
    //Attributs
    //*******
    
    private ArrayList<CartRow> cartRows = new ArrayList<CartRow>();
    //Attributs calculés : prix total calculé dans computeTotalPrice;    
    //nombre d'items calculé calculé dans computeNumberOfItem;
    
    //*******
    //Constructeur
    //*******
    
    public Cart() {
    }

    //*******
    //Getters
    //*******
    
    public ArrayList<CartRow> getCartRows() {
        return cartRows;
    }
    
    //*******
    //Setters
    //*******
    
    public void setCartRows(ArrayList<CartRow> cartRows) {
        this.cartRows = cartRows;
    }
    
    //*******
    //Comportements
    //*******
    
    /**
     * Return an object <code>CartRow</code> matching with the argument id.
     * The id argument must specify an int. 
     * <p>
     * This method search the good {@link CartRow} in the property's arrayList cartRows.
     * This method always returns immediately.
     *  
     * @param id an int 
     * @return an object {@link CartRow}
     * @see CartRow 
     */
    public CartRow extractCartRowFrom(int id) {
        CartRow cartRow = null;
        Iterator it = cartRows.iterator();
        while (it.hasNext()) {
            CartRow row = (CartRow) it.next();
            int idRow = row.getItem().getId();
            if (idRow == id) {
                cartRow = row;
                break;
            }
        }
        return cartRow;
    }

    /** Ajoute un objet au panier.
     * 
     * @param item
     */
    public synchronized void addRow(Item item) {

        //Not adding row if it's already exist one for the item
        Iterator it = cartRows.iterator();
        while (it.hasNext()) {
            CartRow row = (CartRow) it.next();
            int idRow = row.getItem().getId();
            if (idRow == item.getId()) {
                row.incrementQuantity();
                return;
            }
        }
        cartRows.add(new CartRow(item));
    }

    /**Enlève un objet au panier.
     * 
     * @param id
     */
    public synchronized void deleteRow(int id) {
        Iterator it = cartRows.iterator();
        while (it.hasNext()) {
            CartRow row = (CartRow) it.next();
            int idRow = row.getItem().getId();
            if (idRow == id) {
                it.remove();
                break;
            }
        }
    }

    /**Vide le panier de ses lignes.
     * 
     */
    public synchronized void emptyCart() {
        cartRows.clear();
    }

    /**Calcule le prix total du panier
     * 
     * @return double
     */
    public synchronized double computeTotalPrice() {
        double amount = 0.0;

        for (Iterator i = getCartRows().iterator(); i.hasNext();) {
            CartRow row = (CartRow) i.next();

            amount += (row.computeTotalPrice());
        }

        return roundOff(amount);
    }

    /**Calcul le nombre total d'objets contenus dans le panier
     * 
     * @return int
     */
    public synchronized int computeNumberOfItems() {
        int numberOfItems = 0;

        for (Iterator i = getCartRows().iterator(); i.hasNext();) {
            CartRow row = (CartRow) i.next();

            numberOfItems += row.getQuantity();
        }

        return numberOfItems;
    }
    //*******
    //Comportements secondaires
    //*******
    /**Arrondi les prix 
     * 
     * @param x
     * @return double
     */
    private double roundOff(double x) {
        long val = Math.round(x * 100); // cents
        return val / 100.0;
    }
}
