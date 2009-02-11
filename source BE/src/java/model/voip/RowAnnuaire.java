/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package model.voip;

/**
 *
 * @author francois
 */
public class RowAnnuaire {

    private String lastName;
    private String firstName;
    private String company;
    private String number;
    private String groupe;
    private String mail;
    
    public RowAnnuaire(){
        this.lastName="";
        this.firstName="";
        this.company="";
        this.number="";
        this.groupe="";
        this.mail="";
    }    
    
    public RowAnnuaire(String lastName,String firstName,String company,String number,String groupe,String mail){
        this.lastName=lastName;
        this.firstName=firstName;
        this.company=company;
        this.number=number;
        this.groupe=groupe;
        this.mail=mail;
    }
    
    public String getLastName(){
        return this.lastName;
    }
    public String getFirstName(){
        return this.firstName;
    }
    public String getCompany(){
        return this.company;
    }
    public String getNumber(){
        return this.number;
    }
    public String getGroupe(){
        return this.groupe;
    }
    public String getMail(){
        return this.mail;
    }
    
    
    
    public void setLastName(String lastname){
        this.lastName=lastname;
    }
    public void setFirstName(String firstname){
        this.firstName=firstname;
    }
    public void setCompany(String company){
        this.company=company;
    }
    public void setNumber(String number){
        this.number=number;
    }
    public void setGroupe(String groupe){
        this.groupe=groupe;
    }
    public void setMail(String mail){
        this.mail=mail;
    }
                    
    
}
