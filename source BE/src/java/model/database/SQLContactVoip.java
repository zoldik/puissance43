/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package model.database;

import java.sql.*;
import java.lang.Object.*;
import model.voip.*;
import java.util.*;



/**
 *
 * @author thomas
 */
public class SQLContactVoip {
     
    
    /**Méthode d'insertion d'un contact dans la table ContactVoip
     *
     */
    public static boolean insert(int voip_contact_id, String titre, String categorie, String nom, String prenom, String telephone, String mail, int id_voip) throws SQLException {   
        boolean okay=true;
        Statement stmt;
        ConnectionDatabase connexion=new ConnectionDatabase();
        String insert = "INSERT INTO VOIP_CONTACT VALUES('" + voip_contact_id + "','" + titre + "','" + categorie + "', '" + nom + "', '" + prenom + "', '" + telephone + "', '" + mail + "', '" + id_voip + "')";
        try {   
            stmt=connexion.getConn().createStatement();
             stmt.executeUpdate(insert);		
            }
        catch (SQLException e2)
        {
            System.out.println("SqlException : "+e2);
            okay=false;
        }
        try {connexion.close();} catch (Exception e3) {System.out.println("Erreur fermeture"+e3);}
        return okay;
    }
    
   /**Méthode d'insertion d'un contact dans la table ContactVoip
     *
     */
    public static boolean insertContact(Contact contact) throws SQLException {   
        boolean okay=true;
        Statement stmt;
        ConnectionDatabase connexion=new ConnectionDatabase();
        String insert = "INSERT INTO VOIP_CONTACT VALUES('" + contact.id + "','" + contact.titre + "','" + contact.categorie + "', '" + contact.nom + "', '" + contact.prenom + "', '" + contact.telephone + "', '" + contact.mail + "', '" + contact.id_voip + "')";
        try {   
            stmt=connexion.getConn().createStatement();
             stmt.executeUpdate(insert);		
            } 
        catch (SQLException e2)
        {
            System.out.println("SqlException : "+e2);
            okay=false;
        }
        try {connexion.close();} catch (Exception e3) {System.out.println("Erreur fermeture"+e3);}
        return okay;
    }    
    
    
     /** Récupère le dernier id de libre 
      * 
      */
    static public int getlastId() throws SQLException  {
     
     ConnectionDatabase connexion=new ConnectionDatabase();
     Statement stmt=connexion.getConn().createStatement();
     int id = 0;


    String query = "SELECT MAX(VOIP_CONTACT_ID) FROM VOIP_CONTACT; ";
    ResultSet rs = stmt.executeQuery(query);

    try {
        rs.next();
        id = rs.getInt(1)+1;
        System.out.println(id );
        }
        catch(SQLException e2)
        {
            System.out.println("SqlException : "+e2);
        }
        try {connexion.close();} catch (Exception e3) {System.out.println("Erreur fermeture"+e3);}    return id;
    }

     /** Renvoie les informations concernant un contact en passant l'id en paramètre
      * 
      * @param id
      * @return ResultSet
      */
      public static Contact selectbyId(String id)throws SQLException {
        Statement stmt=null;
        ResultSet rs=null;
        
        Contact contact = new Contact();

        ConnectionDatabase connectionDatabase = new ConnectionDatabase();
        Connection conn = (Connection) connectionDatabase.getConn(); 

        try
        {   
            stmt=conn.createStatement();
            
            rs = stmt.executeQuery("SELECT * FROM VOIP_CONTACT WHERE (VOIP_CONTACT_ID="+id+");");
            rs.next();
            Contact tmp=new Contact();
            tmp.setId_voip(rs.getInt("VOIP_CONTACT_ID"));
            tmp.setTitre(rs.getString("TITRE"));
            tmp.setCategorie(rs.getString("CATEGORIE"));
            tmp.setNom(rs.getString("NOM"));
            tmp.setPrenom(rs.getString("PRENOM"));
            tmp.setMail(rs.getString("MAIL"));
            tmp.setTelephone(rs.getString("TELEPHONE"));
            tmp.setId_voip(rs.getInt("ID_VOIP"));
            contact=tmp;

        } 
            catch(SQLException e2)
        {
            System.out.println("SqlException"+e2);
        }
            try {conn.close();} catch (Exception e3) {System.out.println("Erreur fermeture"+e3);}
            return contact;
        }
            
 
   
      /** Renvoie les contacts d'un user_voip en passant son id en paramètre
       * 
       * @param id
       * @return ResultSet
       */
    static public LinkedList <Contact> getContactbyVoipId(int id)throws SQLException {
        Statement stmt;
        ConnectionDatabase connexion=new ConnectionDatabase();
        ResultSet rs=null;
        LinkedList listeContact = new LinkedList<Contact>();

        try
        {
            stmt=connexion.getConn().createStatement();
            rs = stmt.executeQuery("select * from VOIP_CONTACT where (ID_VOIP="+id+");");
            while (rs.next()){
            int IdContact = rs.getInt("VOIP_CONTACT_ID");   
            String Titre = rs.getString("TITRE");
            String Categorie = rs.getString("CATEGORIE");
            String Nom = rs.getString("NOM");
            String Prenom = rs.getString("PRENOM");
            String Email = rs.getString("MAIL");
            String Telephone = rs.getString("TELEPHONE");
            Contact contact = new Contact(IdContact,Titre,Categorie,Nom,Prenom,Email,Telephone,id);
            listeContact.add(contact);
                             }
                    }
        catch(SQLException e2)
        {
            System.out.println("SqlException"+e2);
        }
        try {connexion.close();} catch (Exception e3) {System.out.println("Erreur fermeture"+e3);}
        return listeContact;
    }    
  
     /** Supprime un contact en passant l'id en paramètre
      * 
      * 
      * 
      */
     static public boolean deletebyId(int id) throws SQLException {
        boolean okay=true;
        Statement stmt;
        ConnectionDatabase connexion=new ConnectionDatabase();
        //ResultSet rs=null;
        try
        {
            stmt=connexion.getConn().createStatement();
            //ResultSet rs = 
            stmt.executeUpdate("DELETE from VOIP_CONTACT where VOIP_CONTACT_ID="+id+";");
        }
        catch(SQLException e2)
        {
            System.out.println("SqlException"+e2);
            okay=false;
        }
        try {connexion.close();} catch (Exception e3) {System.out.println("Erreur fermeture"+e3);}
        return okay;
    }
        
         /** Renvoie les contacts d'une catégorie
      * 
      * @param categorie
      * @return ResultSet
      */
    public ResultSet selectbyCategorie(String categorie) throws SQLException {
        Statement stmt;
        ConnectionDatabase connexion=new ConnectionDatabase();
        ResultSet rs=null;
        try
        {
            stmt=connexion.getConn().createStatement();
            rs = stmt.executeQuery("select * from VOIP_CONTACT where CATEGORIE="+categorie+";");
        }
        catch(SQLException e2)
        {
            System.out.println("SqlException"+e2);
        }
        try {connexion.close();} catch (Exception e3) {System.out.println("Erreur fermeture"+e3);}
        return rs;
    } 
    
     /** Modifie les informations concernant un contact en passant l'id en paramètre (pas terminer)
      * 
      * @param id
      * @param contact
      * @return ResultSet
      */
        static public boolean updateContactInfo(int id, Contact contact) throws SQLException {
        boolean okay=true;
        
        try
        {
            deletebyId(id);
            insertContact(contact);
        }
        catch(SQLException e2)
        {
            okay=false;
            System.out.println("SqlException"+e2);
        }
        return okay;
    } 
    /** Modifie les informations concernant un contact en passant l'id en paramètre (pas terminer)
      * 
      * @param id
      * @return ResultSet
      */
    public boolean updatebyfield(int id, String field, String value) throws SQLException {
        boolean okay=true;
        Statement stmt;
        ConnectionDatabase connexion=new ConnectionDatabase();
        try
        {
            stmt=connexion.getConn().createStatement();
            stmt.executeUpdate("UPDATE  VOIP_CONTACT SET " + field + " = '" + value + "' WHERE VOIP_CONTACT_ID = '" + id + "'");
        }
        catch(SQLException e2)
        {
            okay=false;
            System.out.println("SqlException"+e2);
        }
        try {connexion.close();} catch (Exception e3) {System.out.println("Erreur fermeture"+e3);}
        return okay;
    }
    
    
    
  
}
