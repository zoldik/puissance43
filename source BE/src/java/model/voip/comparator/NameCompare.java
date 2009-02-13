/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package model.voip.comparator;

import java.util.Comparator;

/**
 *
 * @author francois
 */
public class NameCompare implements Comparator {

      // A comparator for comparing objects of type WordData
      // according to their counts.  This is used for
      // sorting the list of words by frequency.
    
      public int compare(Object obj1, Object obj2) {
         String str1 = (String)obj1;
         String str2 = (String)obj2;
         
         return str1.compareTo(str2);
    
      }
}

    
    
    

