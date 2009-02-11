/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package model.voip;

import java.util.*;
import java.util.Collections;
/**
 *
 * @author francois
 */
public class Annuaire {
    
    private LinkedList<RowAnnuaire> annuaire;
    
    public Annuaire(){
        this.annuaire=new LinkedList<RowAnnuaire>();
    }
    
    public RowAnnuaire getRow(int index){
        return  this.annuaire.get(index);
    }
    
    public int getSize(){
        return this.annuaire.size();
    }
    
    public void addRow(RowAnnuaire row){
        this.annuaire.add(row);
    }
    
    public void sortBy (String name){
        /*
        List l = annuaire;
        Comparator c = annuaire ;
        Collections.sort(l, );
        */
    }
    
}
