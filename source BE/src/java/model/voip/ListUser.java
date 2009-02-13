/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package model.voip;

import java.util.LinkedList;

/**
 *
 * @author francois
 */
public class ListUser {
    
    private LinkedList<RowListUser> listUser;
    
    public ListUser(){
        this.listUser=new LinkedList<RowListUser>();
    }
    
    public RowListUser getRow(int index){
        return  this.listUser.get(index);
    }
    
    public int getSize(){
        return this.listUser.size();
    }
    
    public void addRow(RowListUser row){
        this.listUser.add(row);
    }
    
    public void sortBy (String name){
        /*
        List l = listUser.;
        Collections.sort(l, );
        */
    }
    
    
    
}
