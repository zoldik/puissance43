/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package model.voip;

import java.util.LinkedList;
import DAO.transfertObject.LineTO;

/**
 *
 * @author francois
 */
public class RowListUser {

    private Integer customerId;
    private String login;
    private int accountLevel;
    private boolean isActivate;
    private LinkedList<LineTO> numbers;
    
    public RowListUser(){
        this.customerId=0;
        this.login="";
        this.accountLevel=0;
        this.isActivate=false;
        this.numbers=new LinkedList<LineTO>();
    } 
    
    public RowListUser(Integer customerId,String login,int accountLevel,boolean isActivate, LinkedList<LineTO> numbers){
        this.customerId=customerId;
        this.login=login;
        this.accountLevel=accountLevel;
        this.isActivate=isActivate;
        this.numbers=numbers;
    }
    
    /*
     *GETTER FUNCTION 
     */
    
    public Integer getCustomerId(){
        return this.customerId;
    }
    public String getLogin(){
        return this.login;
    }
    public int getAccountLevel(){
        return this.accountLevel;
    }    
    public LinkedList<LineTO> getNumbers(){
        return this.numbers;
    }
    public LineTO getNumber(int index){
        return this.numbers.get(index);
    }
    
    
    /*
     *SETTER FUNCTION
     */
    public void setCustomerId(Integer id){
        this.customerId = id;
    }
    public void setLogin(String login ){
        this.login = login;
    }
    public void setAccountLevel(int lvl ){
        this.accountLevel = lvl;
    }
    public void setNumber(LinkedList<LineTO> num){
        this.numbers=num;
    }
    public void addNumber(LineTO num){
        this.numbers.add(num);
    }
    
    
    
}
