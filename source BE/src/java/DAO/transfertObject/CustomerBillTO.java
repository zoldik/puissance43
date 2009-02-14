/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package DAO.transfertObject;

/**
 *
 * @author orthank
 */
public class CustomerBillTO {
    private int billId;
    private float faiAmount;
    private float voipAmount;
    private float vodAmount;
    private float amount;
    
    public CustomerBillTO(){
        this.billId=0;
        this.faiAmount=0;
        this.voipAmount=0;
        this.vodAmount=0;
        this.amount=0;
    }
    
    public CustomerBillTO(int id, float fai, float voip, float vod, float price){
        this.billId=id;
        this.faiAmount=fai;
        this.voipAmount=voip;
        this.vodAmount=vod;
        this.amount=price;
    }

    public int getBillId() {
        return billId;
    }

    public void setBillId(int billId) {
        this.billId = billId;
    }

    public float getFaiAmount() {
        return faiAmount;
    }

    public void setFaiAmount(int faiAmount) {
        this.faiAmount = faiAmount;
    }

    public float getVoipAmount() {
        return voipAmount;
    }

    public void setVoipAmount(int voipAmount) {
        this.voipAmount = voipAmount;
    }

    public float getVodAmount() {
        return vodAmount;
    }

    public void setVodAmount(int vodAmount) {
        this.vodAmount = vodAmount;
    }

    public float getAmount() {
        return amount;
    }

    public void setAmount(int amount) {
        this.amount = amount;
    }
}
