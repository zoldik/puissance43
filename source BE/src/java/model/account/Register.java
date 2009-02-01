package model.account;

import model.database.CustomerDAO;
import model.database.FactoryDAO;



/**Classe Register
 * @param nom,prenom,login,mdp,mail,sexe,age,fixe,gsm,id,used
 * @author Baudet Aurélien
 */
public class Register {
    private String firstName;
    private String lastName;    
    private String login;
    private String mdp;
    private String mail;
    private String sexe;
    private String age;
    private String fixe;
    private String gsm;
    private int id;
    private boolean used;
    
     /**Constructor
     * 
     */
    public Register ()
    {
        this.firstName="";
        this.lastName="";        
        this.login="";
        this.mdp="";
        this.mail="";
        this.sexe="";
        this.age="";
        this.fixe="";
        this.gsm="";
        this.id=0;
        this.used=false;
        
    }
    
     /** Créate an account in the DB
      * @param newUser
      * @throws java.lang.Exception
      */
    public Register(Customer newCustomer) throws Exception
    {
        this.login=newCustomer.getLogin();
        this.mdp=newCustomer.getPassword();
        this.mail=newCustomer.getMail();
        
        CustomerDAO customerDAO = FactoryDAO.getCustomerDAO();
        
        this.used=customerDAO.isUsed(newCustomer.getLogin());
        if (!this.used){
            //customerDAO.insertCustomer
            this.id=customerDAO.getID(newCustomer.getLogin(),newCustomer.getPassword());
        } else {
            this.id=0;
        }
    }
    
    public boolean getUsed() {
        return used;
    }
    
    /** Récupération d'un ID à partir du login & mdp
     * 
     * @param login
     * @param mdp
     * @return int
     * @throws java.lang.Exception
     */
    public int getID(String login, String mdp) throws Exception {
        this.id=CustomerDAO.getID(login,mdp);
        return getId();
    }

    public String getLogin() {
        return login;
    }

    public String getMdp() {
        return mdp;
    }

    public String getMail() {
        return mail;
    } 

    public int getId() {
        return id;
    }
}
