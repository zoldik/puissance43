/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package model.database;

import java.sql.*;
/** Classe SQLCustomer.
 * Contient les requêtes pour la partie User du projet
 * @author Baudet Aurélien
 */
public class SQLCustomer {
       
    
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
        ConnectionDatabase connexion=new ConnectionDatabase();
        stmt=connexion.getConn().createStatement();
        ResultSet rs=null;
        try
        {
            rs=stmt.executeQuery("select * from customer where (login=\""+log+"\" and password=\""+pw+"\")");
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
        ConnectionDatabase connexion=new ConnectionDatabase();
        stmt=connexion.getConn().createStatement();
        ResultSet rs=null;
        try
        {
            rs=stmt.executeQuery("select * from customer where login=\""+log+"\"");
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
        ConnectionDatabase connexion=new ConnectionDatabase();
        stmt=connexion.getConn().createStatement();
        ResultSet rs=null;
        try
        {
            rs=stmt.executeQuery("select id_customer from customer where (login=\""+log+"\" and password=\""+pw+"\")");
            rs.next();
            id=Integer.parseInt(rs.getString("id_customer"));
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
        ConnectionDatabase connexion=new ConnectionDatabase();
        ResultSet rs=null;
        try
        {
            stmt=connexion.getConn().createStatement();
            rs = stmt.executeQuery("select id_customer from customer where (login=\""+log+"\" and password=\""+pw+"\")");
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
        ConnectionDatabase connexion=new ConnectionDatabase();
        try
        {
                stmt=connexion.getConn().createStatement();
                stmt.executeUpdate("update customer set valid=1 where id_customer=\""+id+"\";");
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
        ConnectionDatabase connexion=new ConnectionDatabase();
        try
        {
                stmt=connexion.getConn().createStatement();
                rs=stmt.executeQuery("select * from customer where id_customer=\""+id+"\" and valid=0;");
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

    
     /** Retourne la valeur du PRENOM à partir du login & mdp passés en arguments
      * 
      * @param log
      * @param pw
      * @return String
      * @throws java.lang.Exception
      */
    static public String getFirstName(String log, String pw) throws Exception
    {
        String result ="";
        Statement stmt;
        ConnectionDatabase connexion=new ConnectionDatabase();
        stmt=connexion.getConn().createStatement();
        ResultSet rs=null;
        try
        {
            rs=stmt.executeQuery("select first_name from customer where (login=\""+log+"\" and password=\""+pw+"\")");
            rs.next();
            result=rs.getString("first_name");
        }
        catch(Exception e2)
        {
            System.out.println("SQLException"+e2);
            result="";
        }
        try {connexion.close();} catch (Exception e3) {System.out.println("Erreur fermeture"+e3);}
        return result;
    }
    
         /** Retourne la valeur du NOM à partir du login & mdp passés en arguments
      * 
      * @param log
      * @param pw
      * @return String
      * @throws java.lang.Exception
      */
    static public String getLastName(String log, String pw) throws Exception
    {
        String result ="";
        Statement stmt;
        ConnectionDatabase connexion=new ConnectionDatabase();
        stmt=connexion.getConn().createStatement();
        ResultSet rs=null;
        try
        {
            rs=stmt.executeQuery("select last_name from customer where (login=\""+log+"\" and password=\""+pw+"\")");
            rs.next();
            result=rs.getString("last_name");
        }
        catch(Exception e2)
        {
            System.out.println("SQLException"+e2);
            result="";
        }
        try {connexion.close();} catch (Exception e3) {System.out.println("Erreur fermeture"+e3);}
        return result;
    }
    
         /** Vérifie qu'un email correspond à un login donné
      * @param login
      * @param login
      * @return email
      */
    static public boolean isValidEmail(String login, String email)
    {
        boolean okay=true;
        Statement stmt;
        ResultSet rs=null;
        ConnectionDatabase connexion=new ConnectionDatabase();
        try
        {
                stmt=connexion.getConn().createStatement();
                rs=stmt.executeQuery("select * from customer where (login=\""+login+"\" and mail=\""+email+"\");");
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