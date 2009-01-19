/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package model.equipement.panier;

/**Classe entité représentant un objet
 * 
 * @author vincent
 */
public class Item {
    
    private int id ;
    private String name;
    private String type;
    private String description;
    private double price;
    
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

    public double getPrice() {
        return price;
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

    public void setPrice(double price) {
        this.price = price;
    } 
    
    //*****************
    //Comportement
    //*****************    
    
    public String getDetails(int i){
               String details = new String("Item "+i+" =   ID="+getId()+"   NAME="+getName()+"   TYPE="+getType()+"   DESCRIPTION="+getDescription()+"   PRICE="+getPrice());         
               return details;
    }
    
    public String getDetails(){
               String details = new String("Item =   ID="+getId()+"   NAME="+getName()+"   TYPE="+getType()+"   DESCRIPTION="+getDescription()+"   PRICE="+getPrice());         
               return details;
    }
    

}
