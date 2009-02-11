package DAO.transfertObject;


/**
 *
 * @author vincent
 */
public class VodSubscribeTO {
    
    private String name ;
    private String description ;
    //per month
    private String price ;
    
    //private String overload;
    
    //type : particulier ou professionnel
    private String type;
 
    //**********************************
    //GETTERS
    //**********************************
     public String getDescription() {
        return description;
    }

    public String getName() {
        return name;
    }

    public String getPrice() {
        return price;
    }

    public String getType() {
        return type;
    }
    
    //**********************************
    //SETTERS
    //**********************************
            
    public void setDescription(String description) {
        this.description = description;
    }

    public void setName(String name) {
        this.name = name;
    }

    public void setPrice(String price) {
        this.price = price;
    }

    public void setType(String type) {
        this.type = type;
    }

}
