/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package model.authentification;

import java.util.ArrayList;

/**
 * Classe gestion des factures (récupère arraylist des abonnements & options)
 * @author orthank
 */
public class Bill {
    private String id;
    private String amount;
    private String date;
    private ArrayList abonnements;
    private ArrayList options;
    
    /**
     * Constructor Bill
     * @param id
     * @param amount
     * @param date
     * @param abo
     * @param options
     */
    public Bill(String id, String amount, String date, ArrayList abo, ArrayList options){
        this.id=id;
        this.amount=amount;
        this.date=date;
        this.abonnements=abo;
        this.options=options;
    }
}
