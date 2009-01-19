package model.authentification;

//import fr.isen.jeen5_0809.group8.SQL.*;

/** Classe Authentification
 * Stocke les infos login/mdp/id & si l'utilisateur est allowed (session)
 * @author Lardennois Philippe
 */
public class Authentification {
    private String login;
    private String mdp;
    private int id;
    private boolean allowed;
    
    public Authentification() {
        this.login="";
        this.mdp="";
        this.id=0;
        this.allowed=false;
    }
    
   /** Sert à l'authentification d'un utilisateur à partir du login & mdp passés en argument
    * @param login
    * @param mdp
    * @throws java.lang.Exception
    */
    public Authentification(String login, String mdp) throws Exception {
        this.login=login;
        this.mdp=mdp;
        /*
        this.allowed=SQLUser.isAllowed(login,mdp);
        if (this.allowed){
            this.id=SQLUser.getID(login,mdp);
        } else {
            this.id=0;
        }*/
    }
    
    public boolean getAllowed() {
        return allowed;
    }
    
    public int getID() {
        return id;
    }
    
    
}
