/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package DAO.mySql;
import DAO.interfaces.ContactVoipDAOInterface;
import DAO.factory.MySqlDAOFactory;
import DAO.transfertObject.ContactVoipTO;
import java.util.LinkedList;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;

/**
 *
 * @author thomas
 */
public class ContactVoipMySqlDAO extends MySqlGeneralObjectDAO implements ContactVoipDAOInterface  {

 /**Méthode d'insertion d'un contact dans la table ContactVoip
     *
     */
    public boolean insert(int voip_contact_id, int voip_line_id, String titre, String categorie, String nom, String prenom, String telephone, String mail, int id_voip){   
        
        boolean okay=true;
        Statement stmt=null;
        
        Connection conn = (Connection) getConnectionWithJNDI();
        
        String insert = "INSERT INTO voip_contact VALUES('" + voip_contact_id + "','" + voip_line_id + "','" + titre + "','" + categorie + "', '" + nom + "', '" + prenom + "', '" + telephone + "', '" + mail + "', '" + id_voip + "')";
        
        try {   
             stmt = conn.createStatement();
             stmt.executeUpdate(insert);		
            }
       
        catch (Exception e2)
        {
            System.out.println("DAOException : "+e2);
            okay=false;
        }
        try {conn.close();}
        catch (Exception e3) {System.out.println("Erreur fermeture"+e3);}
        
        return okay;
    }
    
   /**Méthode d'insertion d'un contact dans la table ContactVoip
     *
     */
    public boolean insertContact(ContactVoipTO contact) {   
    
        boolean okay=true;
        Statement stmt=null;
        
        Connection conn = (Connection) getConnectionWithJNDI();
        
        String insert = "INSERT INTO voip_contact VALUES('" + contact.id + "','" + contact.id_line + "','" + contact.titre + "','" + contact.categorie + "', '" + contact.nom + "', '" + contact.prenom + "', '" + contact.telephone + "', '" + contact.mail + "', '" + contact.id_voip + "')";
        try {   
             stmt = conn.createStatement();
             stmt.executeUpdate(insert);		
            } 
        catch (Exception e2)
        {
            System.out.println("DAOException : "+e2);
            okay=false;
        }
        try {conn.close();} 
        catch (Exception e3) {System.out.println("Erreur fermeture"+e3);}
        
        return okay;
    }    
    
    
     /** Récupère le dernier id de libre 
      * 
      */
     public int getlastId() {
         
     Statement stmt=null;
     ResultSet rs=null;
     Connection conn = (Connection) getConnectionWithJNDI();
     
     
     int id = 0;


    

    try {
        stmt=conn.createStatement();
        String query = "SELECT MAX(id_voip_contact) FROM voip_contact; ";
        rs = stmt.executeQuery(query);
        rs.next();
        id = rs.getInt(1)+1;
        System.out.println(id );
        }
        catch(Exception e2)
        {
            System.out.println("DAOException : "+e2);
        }
        try {conn.close();} 
        catch (Exception e3) {System.out.println("Erreur fermeture"+e3);}    
        return id;
    }

     /** Renvoie les informations concernant un contact en passant l'id en paramètre
      * 
      * @param id
      * @return ResultSet
      */
      public ContactVoipTO selectbyId(String id){
          
        Statement stmt=null;
        ResultSet rs=null;
        
        ContactVoipTO contact = new ContactVoipTO();

        Connection conn = (Connection) getConnectionWithJNDI();

        try
        {   
            stmt=conn.createStatement();           
            rs = stmt.executeQuery("SELECT * FROM voip_contact WHERE (id_voip_contact="+id+");");
            rs.next();
            ContactVoipTO tmp=new ContactVoipTO();
            tmp.setId_voip(rs.getInt("id_voip_contact"));
            tmp.setId_voip(rs.getInt("id_voip_line"));
            tmp.setTitre(rs.getString("TITRE"));
            tmp.setCategorie(rs.getString("CATEGORIE"));
            tmp.setNom(rs.getString("NOM"));
            tmp.setPrenom(rs.getString("PRENOM"));
            tmp.setMail(rs.getString("MAIL"));
            tmp.setTelephone(rs.getString("TELEPHONE"));
            tmp.setId_voip(rs.getInt("user_voip"));
            contact=tmp;

        } 
            catch(Exception e2)
        {
            System.out.println("DAOException"+e2);
        }
            try {conn.close();} 
            catch (Exception e3) {System.out.println("Erreur fermeture"+e3);}
            return contact;
        }
            
 
   
      /** Renvoie les contacts d'un user_voip en passant son id en paramètre
       * 
       * @param id
       * @return ResultSet
       */
       public LinkedList <ContactVoipTO> getContactbyVoipId(int id) {
        
        Statement stmt=null;
        ResultSet rs=null;        
        Connection conn = (Connection) getConnectionWithJNDI();

        LinkedList listeContact = new LinkedList<ContactVoipTO>();

        try
        {
            stmt=conn.createStatement();           
            rs = stmt.executeQuery("select * from voip_contact where (user_voip="+id+");");
            while (rs.next()){
            int IdContact = rs.getInt("id_voip_contact");
            int IdLine = rs.getInt("id_voip_line");   
            String Titre = rs.getString("TITRE");
            String Categorie = rs.getString("CATEGORIE");
            String Nom = rs.getString("NOM");
            String Prenom = rs.getString("PRENOM");
            String Email = rs.getString("MAIL");
            String Telephone = rs.getString("TELEPHONE");
            ContactVoipTO contact = new ContactVoipTO(IdContact,IdLine,Titre,Categorie,Nom,Prenom,Email,Telephone,id);
            listeContact.add(contact);
                             }
                    }
        catch(Exception e2)
        {
            System.out.println("DAOException"+e2);
        }
        try {conn.close();} 
        catch (Exception e3) {System.out.println("Erreur fermeture"+e3);}
        return listeContact;
    }    
  
     /** Supprime un contact en passant l'id en paramètre
      * 
      * 
      * 
      */
      public boolean deletebyId(int id) {
          
        boolean okay=true;
        Statement stmt=null;
        
        Connection conn = (Connection) getConnectionWithJNDI();
        try
        {
            stmt=conn.createStatement();
            stmt.executeUpdate("DELETE from voip_contact where id_voip_contact="+id+";");
        }
        catch(Exception e2)
        {
            System.out.println("DAOException"+e2);
            okay=false;
        }
        try {conn.close();} 
        catch (Exception e3) {System.out.println("Erreur fermeture"+e3);}
        
        return okay;
    }
        
      /** Renvoie les contacts d'une catégorie
      * 
      * @param categorie
      * @return ResultSet
      */
        public LinkedList <ContactVoipTO> selectbyCategorie (String categorie) {
        
        Statement stmt=null;
        ResultSet rs=null;        
        Connection conn = (Connection) getConnectionWithJNDI();

        LinkedList listeContact = new LinkedList<ContactVoipTO>();

        try
        {
            stmt=conn.createStatement();
            rs = stmt.executeQuery("select * from voip_contact where CATEGORIE="+categorie+";");
            while (rs.next()){
            int IdContact = rs.getInt("id_voip_contact");
            int IdLine = rs.getInt("id_voip_line");   
            String Titre = rs.getString("TITRE");
            String Categorie = rs.getString("CATEGORIE");
            String Nom = rs.getString("NOM");
            String Prenom = rs.getString("PRENOM");
            String Email = rs.getString("MAIL");
            String Telephone = rs.getString("TELEPHONE");
            int id = rs.getInt("VOIP_ID");
            ContactVoipTO contact = new ContactVoipTO(IdContact,IdLine,Titre,Categorie,Nom,Prenom,Email,Telephone,id);
            listeContact.add(contact);
                            }
        }
        catch (Exception e2)
        {
            System.out.println("DAOException"+e2);
        }
        try {conn.close();} 
        catch (Exception e3) {System.out.println("Erreur fermeture"+e3);}
        
        return listeContact;
    } 
    
     /** Modifie les informations concernant un contact en passant l'id en paramètre (pas terminer)
      * 
      * @param id
      * @param contact
      * @return ResultSet
      */
        public boolean updateContactInfo(int id, ContactVoipTO contact) {
        boolean okay=true;
        
        try
        {
            deletebyId(id);
            insertContact(contact);
        }
        catch(Exception e2)
        {
            okay=false;
            System.out.println("Exception"+e2);
        }
        return okay;
        
    } 
    /** Modifie les informations concernant un contact en passant l'id en paramètre (pas terminer)
      * 
      * @param id
      * @return ResultSet
      */
    public boolean updatebyfield(int id, String field, String value) {
        boolean okay=true;
        Statement stmt=null;
        
        Connection conn = (Connection) getConnectionWithJNDI();
        try
        {
            stmt=conn.createStatement();
            stmt.executeUpdate("UPDATE  voip_contact SET " + field + " = '" + value + "' WHERE id_voip_contact = '" + id + "'");
        }
        catch(Exception e2)
        {
            okay=false;
            System.out.println("DAOException"+e2);
        }
        try {conn.close();} 
        catch (Exception e3) {System.out.println("Erreur fermeture"+e3);}
        return okay;
    }
    
    
    
  
}


