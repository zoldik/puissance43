/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package model.authentification;

import java.util.ArrayList;

/**
 *
 * @author orthank
 */
public class Bill {
    private String id;
    private String amount;
    private String date;
    private ArrayList options;
    
    public Bill(String id, String amount, String date, ArrayList options){
        this.id=id;
        this.amount=amount;
        this.date=date;
        this.options=options;
    }
}
