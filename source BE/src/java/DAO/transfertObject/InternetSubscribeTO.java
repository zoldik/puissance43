package DAO.transfertObject;

/**
 *
 * @author vincent
 */
public class InternetSubscribeTO {

    private String nameSubscribe ;
    private String descriptionSubscribe ;
    //per month
    private String price ;
    
    //private String overload;
    
    //debit
    private String rate;
 
    //**********************************
    //GETTERS
    //**********************************
    
     public String getDescriptionSubscribe() {
        return descriptionSubscribe;
    }

    public String getNameSubscribe() {
        return nameSubscribe;
    }

    public String getPrice() {
        return price;
    }

    public String getRate() {
        return rate;
    }
    
    //**********************************
    //SETTERS
    //**********************************
    
    public void setDescriptionSubscribe(String descriptionSubscribe) {
        this.descriptionSubscribe = descriptionSubscribe;
    }

    public void setNameSubscribe(String nameSubscribe) {
        this.nameSubscribe = nameSubscribe;
    }

    public void setPrice(String price) {
        this.price = price;
    }

    public void setRate(String rate) {
        this.rate = rate;
    }
    
}
