/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package model.networkdevices;

/**Classe entité représentant un objet
 * 
 * @author vincent
 */
public class Item {

    private int id;
    private String name;
    private String type;
    private String description;
    private double unit_price;
    private int stock;
    //*****************
    //Constructor
    //*****************
    //*****************
    //Getter
    //*****************
    public int getId() {
        return id;
    }

    public String getName() {
        return name;
    }

    public String getType() {
        return type;
    }

    public String getDescription() {
        return description;
    }

    public double getUnitPrice() {
        return unit_price;
    }

    public int getStock() {
        return stock;
    }

    //*****************
    //Setter
    //*****************    
    public void setId(int id) {
        this.id = id;
    }

    public void setName(String name) {
        this.name = name;
    }

    public void setType(String type) {
        this.type = type;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public void setUnitPrice(double price) {
        this.unit_price = price;
    }

    public void setStock(int stock) {
        this.stock = stock;
    }
    //*****************
    //Comportement
    //*****************    
    public String getDetails(int i) {
        String details = new String("Item " + i + " =   ID=" + getId() + "   NAME=" + getName() + "   TYPE=" + getType() + "   DESCRIPTION=" + getDescription() + "   PRICE=" + getUnitPrice());
        return details;
    }

    public String getDetails() {
        String details = new String("Item =   ID=" + getId() + "   NAME=" + getName() + "   TYPE=" + getType() + "   DESCRIPTION=" + getDescription() + "   PRICE=" + getUnitPrice());
        return details;
    }
}
