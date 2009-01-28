/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package model.voip;

/**
 * Classe de gestion des VoipUser ()
 * @author thomas, francois
 */
public class VoipUser {
    private int id;
    private String login;
    private String password;
    

    /**
    *Constructeur par défaut de l'objet VoipUser
    * @author thomas
    */ 
    public VoipUser() {
        this.id=0;
        this.login="";
        this.password="";
    }
    
    public int getid(){
        return id;
    }
    
    public String getlogin(){
        return login;
    }
    
    public boolean comparePasswordTo(String pass){
        
        if (this.password.compareTo(pass) == 0) {
            return true;
        }else{
            return false;
        }
        
    }
        
    public void setid(int id){
        this.id = id;
    }
        
    public void setlogin(String log){
        this.login = log;
    }
    
    public void setpassword(String pass){
        this.password = pass;
    }
        
}