/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package model.database;

import java.sql.*;
/** Classe SQLUser.
 * Contient les requêtes pour la partie User du projet
 * @author Baudet Aurélien
 */
public class SQLCustomer {
       
     /**
      * Inscrit l'utilisateur dans la base de donnée.
      * 
      * Si absence de gsm, remplacer par le string null.
      * Si absence de fixe, remplacer par le string null.
      * Si absence de societe, remplacer par le string null.
      * Si absence de date de naissance, remplacer par le string null.
      * @param login
      * @param pw
      * @param prenom
      * @param nom
      * @param naissance
      * @param societe
      * @param mail
      * @param sexe
      * @param fixe
      * @param gsm
      * @param user_type
      * @param account_level
      * @param debit_vod
      * @return
      */
    public static boolean insert(String login, String pw, String prenom, String nom, String naissance, String societe ,String mail, String sexe, String fixe, String gsm, String user_type, String account_level, String debit_vod)
    {     
        boolean okay=true;
        Statement stmt;
        ObjectDAO connexion=new ObjectDAO();
        String insert="insert into CUSTOMER (LOGIN,PASSWORD,PRENOM,NOM,MAIL,SEXE,USER_TYPE,ACCOUNT_LEVEL,DEBIT_VOD";
        String values="values (\""+login+"\",\""+pw+"\",\""+prenom+"\",\""+nom+"\",\""+mail+"\",\""+sexe+"\",\""+user_type+"\",\""+account_level+"\",\""+debit_vod+"\"";
        if (fixe.compareTo("")!=0)
        {
            insert+=",TEL";
            values+=",\""+fixe+"\"";
        }
        if (gsm.compareTo("")!=0)
        {
            insert+=",GSM";
            values+=",\""+gsm+"\"";
        }
        if (societe.compareTo("")!=0)
        {
            insert+=",SOCIETE";
            values+=",\""+societe+"\"";
        }
        if (naissance.compareTo("")!=0)
        {
            insert+=",BORN";
            values+=",\""+naissance+"\"";
        }
        insert+=") "+values+");";
        try
        {
            stmt=connexion.getConn().createStatement();
            stmt.executeUpdate(insert);
            }
        catch(SQLException e2)
        {
            System.out.println("SqlException : "+e2);
            okay=false;
        }
        try {connexion.close();} catch (Exception e3) {System.out.println("Erreur fermeture"+e3);}
        return okay;
    }
    
    /*
    public static boolean insert(String login, String pw, String prenom, String nom, String naissance, String mail, String sexe, String fixe, String gsm)
    {
        boolean okay=true;
        Statement stmt;
        SQLObjet connexion=new SQLObjet();
        String insert="insert into group8_user (login,password,prenom,nom,naissance,mail,sexe";
        String values="values (\""+login+"\",\""+pw+"\",\""+prenom+"\",\""+nom+"\",\""+naissance+"\",\""+mail+"\",\""+sexe+"\"";
        if (fixe.compareTo("")!=0)
        {
            insert+=",tel_fixe";
            values+=",\""+fixe+"\"";
        }
        if (gsm.compareTo("")!=0)
        {
            insert+=",tel_gsm";
            values+=",\""+gsm+"\"";
        }
        insert+=") "+values+");";
        try
        {
            stmt=connexion.getConn().createStatement();
            stmt.executeUpdate(insert);
            }
        catch(SQLException e2)
        {
            System.out.println("SqlException : "+e2);
            okay=false;
        }
        try {connexion.close();} catch (Exception e3) {System.out.println("Erreur fermeture"+e3);}
        return okay;
    }
    */
    
     /** Verifie si l'utilisateur est autorisé
      * 
      * @param log
      * @param pw
      * @return boolean
      * @throws java.lang.Exception
      */
    static public boolean isAllowed(String log, String pw) throws Exception
    {
        boolean okay=true;
        Statement stmt;
        ObjectDAO connexion=new ObjectDAO();
        stmt=connexion.getConn().createStatement();
        ResultSet rs=null;
        try
        {
            rs=stmt.executeQuery("select * from CUSTOMER where (login=\""+log+"\" and password=\""+pw+"\")");
            if (rs.next()==true)
                {okay=true;}
            else 
                {okay=false;}
        }
        catch(Exception e2)
        {
            System.out.println("Exception"+e2);
            okay=false;
        }
        try {connexion.close();} catch (Exception e3) {System.out.println("Erreur fermeture"+e3);}
        return okay;
    }

     /** Verifie si l'utilisateur passé en argument existe dans la DB
      * 
      * @param log
      * @return boolean
      * @throws java.lang.Exception
      */
    static public boolean isUsed(String log) throws Exception
    {
        boolean okay=true;
        Statement stmt;
        ObjectDAO connexion=new ObjectDAO();
        stmt=connexion.getConn().createStatement();
        ResultSet rs=null;
        try
        {
            rs=stmt.executeQuery("select * from CUSTOMER where login=\""+log+"\"");
            if (rs.next()==true)
                {okay=true;}
            else 
                {okay=false;}
        }
        catch(Exception e2)
        {
            System.out.println("Exception"+e2);
            //okay=false;
        }
        try {connexion.close();} catch (Exception e3) {System.out.println("Erreur fermeture"+e3);}
        return okay;
    }
    
     /** Retourne la valeur de l'id_user à partir du login & mdp passés en arguments
      * 
      * @param log
      * @param pw
      * @return int
      * @throws java.lang.Exception
      */
    static public int getID(String log, String pw) throws Exception
    {
        int id;
        Statement stmt;
        ObjectDAO connexion=new ObjectDAO();
        stmt=connexion.getConn().createStatement();
        ResultSet rs=null;
        try
        {
            rs=stmt.executeQuery("select USER_ID from CUSTOMER where (login=\""+log+"\" and password=\""+pw+"\")");
            rs.next();
            id=Integer.parseInt(rs.getString("USER_ID"));
        }
        catch(Exception e2)
        {
            System.out.println("SQLException"+e2);
            id=0;
        }
        try {connexion.close();} catch (Exception e3) {System.out.println("Erreur fermeture"+e3);}
        return id;
    }
    
     /** Renvoie l'ensemble des caracteristiques d'un utilisateur à partir du login & mdp passés en argument
      * 
      * @param log
      * @param pw
      * @return ResultSet
      */
    public ResultSet select(String log, String pw)
    {
        Statement stmt;
        ObjectDAO connexion=new ObjectDAO();
        ResultSet rs=null;
        try
        {
            stmt=connexion.getConn().createStatement();
            rs = stmt.executeQuery("select id_user from CUSTOMER where (login=\""+log+"\" and password=\""+pw+"\")");
        }
        catch(SQLException e2)
        {
            System.out.println("SqlException"+e2);
        }
        try {connexion.close();} catch (Exception e3) {System.out.println("Erreur fermeture"+e3);}
        return rs;
    }
    
    
     /** Valide un compte créé à partir de l'ID (Validation.java)
      * Sert lorsque l'utilisateur clique sur le lien dans son mail
      * @param id
      * @return boolean
      */
    static public boolean validAccount(int id)
    {
        boolean okay=true;
        Statement stmt;
        ObjectDAO connexion=new ObjectDAO();
        try
        {
                stmt=connexion.getConn().createStatement();
                stmt.executeUpdate("update CUSTOMER set valide=1 where id_user=\""+id+"\";");
        }
        catch(SQLException e2)
        {
            System.out.println("SqlException"+e2);
            okay=false;
        }
        try {connexion.close();} catch (Exception e3) {System.out.println("Erreur fermeture"+e3);}
        return okay;
    }

     /** Vérifie que le compte existe et est inactif
      * Sert lorsque l'utilisateur clique sur le lien dans son mail (Validation.java)
      * @param id
      * @return boolean
      */
    static public boolean isValidAccountUnactive(int id)
    {
        boolean okay=true;
        Statement stmt;
        ResultSet rs=null;
        ObjectDAO connexion=new ObjectDAO();
        try
        {
                stmt=connexion.getConn().createStatement();
                rs=stmt.executeQuery("select * from CUSTOMER where id_user=\""+id+"\" and valide=0;");
                if (rs.next()==true)
                {okay=true;}
                else 
                {okay=false;}
        }
        catch(SQLException e2)
        {
            System.out.println("SqlException"+e2);
            okay=false;
        }
        try {connexion.close();} catch (Exception e3) {System.out.println("Erreur fermeture"+e3);}
        return okay;
    }

     /** Vérifie qu'un utilisateur est abonné à des flux RSS à partir de son id
      * @param id
      * @return boolean
      */
    static public boolean hasRssUrl(int id)
    {
        boolean okay=true;
        Statement stmt;
        ResultSet rs=null;
        ObjectDAO connexion=new ObjectDAO();
        try
        {
                stmt=connexion.getConn().createStatement();
                rs=stmt.executeQuery("select * from sabonne where id_user=\""+id+"\";");
                if (rs.next()==true)
                {okay=true;}
                else 
                {okay=false;}
        }
        catch(SQLException e2)
        {
            System.out.println("SqlException"+e2);
            okay=false;
        }
        try {connexion.close();} catch (Exception e3) {System.out.println("Erreur fermeture"+e3);}
        return okay;
    }
}