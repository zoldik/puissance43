/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package DAO.transfertObject;

/**
 *
 * @author vincent
 */
public class OrderTO {
    
    private int id;
    private int idAddress;

    private float amountOrder;
    private int numberOfItems;
    private int stateOfProcess;
    private String dateCommand;
    private String dateShipping;

    //*********************************
    // SETTERS
    //*********************************   
    public void setAmountOrder(float amountOrder) {
        this.amountOrder = amountOrder;
    }

    public void setDateCommand(String dateCommand) {
        this.dateCommand = dateCommand;
    }

    public void setDateShipping(String dateShipping) {
        this.dateShipping = dateShipping;
    }

    public void setId(int id) {
        this.id = id;
    }

    public void setIdAddress(int idAddress) {
        this.idAddress = idAddress;
    }

    public void setNumberOfItems(int numberOfItems) {
        this.numberOfItems = numberOfItems;
    }

    public void setStateOfProcess(int stateOfProcess) {
        this.stateOfProcess = stateOfProcess;
    }
    
    //*********************************
    // GETTERS
    //*********************************   
    public float getAmountOrder() {
        return amountOrder;
    }

    public String getDateCommand() {
        return dateCommand;
    }

    public String getDateShipping() {
        return dateShipping;
    }

    public int getId() {
        return id;
    }

    public int getIdAddress() {
        return idAddress;
    }

    public int getNumberOfItems() {
        return numberOfItems;
    }

    public int getStateOfProcess() {
        return stateOfProcess;
    }
    
            

}
