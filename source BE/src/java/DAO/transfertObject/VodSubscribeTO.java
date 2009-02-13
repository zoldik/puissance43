package DAO.transfertObject;

/**
 *
 * @author vincent
 */
public class VodSubscribeTO {

    private int id;
    private String name;
    private String description;
    //per month
    private float price;    //private String overload;
    //type : particulier ou professionnel
    private String type;

    //**********************************
    //GETTERS
    //**********************************
    public int getId() {
        return id;
    }

    public String getDescription() {
        return description;
    }

    public String getName() {
        return name;
    }

    public float getPrice() {
        return price;
    }

    public String getType() {
        return type;
    }
    //**********************************
    //SETTERS
    //**********************************
    public void setId(int id) {
        this.id = id;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public void setName(String name) {
        this.name = name;
    }

    public void setPrice(float price) {
        this.price = price;
    }

    public void setType(String type) {
        this.type = type;
    }
}
