/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package DAO.interfaces;
import DAO.transfertObject.ContactVoipTO;
import java.util.LinkedList;

/**
 *
 * @author thomas
 */
public interface ContactVoipDAOInterface {
    
public boolean insert(int voip_contact_id, int voip_line_id,String titre, String categorie, String nom, String prenom, String telephone, String mail, int id_voip);
public boolean insertContact(ContactVoipTO contact);
public int getlastId();
public ContactVoipTO selectbyId(String id);
public LinkedList <ContactVoipTO> getContactbyVoipId(int id);
public boolean deletebyId(int id);
public LinkedList <ContactVoipTO> selectbyCategorie (String categorie);
public boolean updateContactInfo(int id, ContactVoipTO contact);

    
    
    
}
