/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package DAO.transfertObject;

/**
 *
 * @author vincent
 */
public class AddressTO {    
    //******************
    // ATTRIBUTES
    //******************  
    private int id;
    
    //number+name
    private String street;
    private String postalCode;
    private String city;
    private String country;
    
    //If it's a customer's address or a delivery address
    private String type_address;   
    
    //******************
    //GETTERS
    //******************
    public String getCity() {
        return city;
    }

    public String getCountry() {
        return country;
    }

    public int getId() {
        return id;
    }

    public String getPostalCode() {
        return postalCode;
    }

    public String getStreet() {
        return street;
    }

    public String getType_address() {
        return type_address;
    }   
    
    //******************
    //SETTERS
    //******************    
     public void setCity(String city) {
        this.city = city;
    }

    public void setCountry(String country) {
        this.country = country;
    }

    public void setId(int id) {
        this.id = id;
    }

    public void setPostalCode(String postalCode) {
        this.postalCode = postalCode;
    }

    public void setStreet(String street) {
        this.street = street;
    }

    public void setType_address(String type_address) {
        this.type_address = type_address;
    }    
    
}
