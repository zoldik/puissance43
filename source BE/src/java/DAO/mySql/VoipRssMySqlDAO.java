package DAO.mySql;

import DAO.factory.MySqlDAOFactory;
import DAO.interfaces.VoipRssDAOInterface;
import DAO.transfertObject.VoipRssTO;

import model.voip.rss.*;
import java.util.Date;
import java.text.SimpleDateFormat;

import java.io.File;
import java.io.IOException;
import java.io.Writer;
import java.io.FileWriter;
import java.io.BufferedWriter;

import java.text.ParsePosition;
import java.util.LinkedList;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;


/** 
 * @author Philippe Lardennois
 */
public class VoipRssMySqlDAO extends MySqlGeneralObjectDAO implements VoipRssDAOInterface {

    public VoipRssMySqlDAO() {
        //initialization
    }
    
        public VoipRssTO getVoipRss(int id_voip_line) {
        
        VoipRssTO item = new VoipRssTO();
        
        //Connexion to the database with JNDI 
        Connection conn = (Connection) getConnectionWithJNDI();

        Statement st = null;
        
        //result of the queries
        ResultSet rs = null;
        
        

        try {
            st = conn.createStatement();
            rs = st.executeQuery("select * from voip_rss where id_voip_line=\""+id_voip_line+"\"");
            if (rs.next()) {
                    
                
                item.setIdVoipRss(rs.getInt("id_voip_rss"));
                item.setIdVoipLine(rs.getInt("id_voip_line"));
                item.setUrl(rs.getString("url"));
            }
                
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            closeRsAndSt(rs, st);
        }
        closeConnection(conn);
        return item;
    }
    
    
    public LinkedList<VoipRssTO> getVoipRssToUpdated() {
        
        //Returned object
        LinkedList<VoipRssTO> items = new LinkedList<VoipRssTO>();
        
        //Connexion to the database with JNDI 
        Connection conn = (Connection) getConnectionWithJNDI();

        Statement st = null;
        
        //result of the queries
        ResultSet rs = null;

        try {
            st = conn.createStatement();
            rs = st.executeQuery("select * from voip_rss where update_rss = 1");
            while (rs.next()) {
                VoipRssTO item = new VoipRssTO();
                item.setIdVoipRss(rs.getInt("id_voip_rss"));
                item.setIdVoipLine(rs.getInt("id_voip_line"));
                item.setUrl(rs.getString("url"));
                //item.setRss(item.getRss().parse("./voip/rss/"+item.getUrl()));
                items.add(item);
            }
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            closeRsAndSt(rs, st);
        }
        closeConnection(conn);
        return items;
    }
    
    
    
    public boolean buildVoipRss(VoipRssTO rss) {
        
        boolean okay=false;
        //Connexion to the database with JNDI 
        Connection conn = (Connection) getConnectionWithJNDI();
        
        Statement st = null;

        //result of the queries
        ResultSet rs = null;
        
        String callerid = getCallerId(rss);
        String hostname = "redneck.fr";
        String answer = "";
        
        String dateFormat1 = "yyyy-MM-dd HH:mm:ss";
        String dateFormat2 = "yyyy-MM-dd HH:mm:ss Z";
        //"dd MMMMM yyyy" / "yyyyMMdd" / "dd.MM.yy" / "MM/dd/yy" / "yyyy.MM.dd G 'at' hh:mm:ss z" / "EEE, MMM d, ''yy" / "h:mm a" / "H:mm:ss:SSS" / "K:mm a,z" / "yyyy.MMMMM.dd GGG hh:mm aaa"));

        SimpleDateFormat sdf1 = new SimpleDateFormat(dateFormat1);
        SimpleDateFormat sdf2 = new SimpleDateFormat(dateFormat2);
        
        LinkedList<VoipRssChannelItem> listItem = new LinkedList<VoipRssChannelItem>();
        
        boolean suite=false;
        try {            
            st=conn.createStatement();
            rs = st.executeQuery("select * from cdr where dst=\""+callerid+"\" and ( lastapp=\"VoiceMail\" OR disposition=\"BUSY\" OR disposition=\"NO ANSWER\" ) order by calldate desc;");
            
            for (int i=0; i<10; i++ ) {
                String calldate = "";
                String callerSource = "";
                String callDateStringForRss = "";
                Date callDate = new Date();
                ParsePosition pos = new ParsePosition(0);
                VoipRssChannelItem channelItem = new VoipRssChannelItem();
                if (rs.next()) {
                    suite=true;
                    calldate = rs.getString("calldate");
                    callerSource = rs.getString("src");
                    
                    callDate = sdf1.parse(calldate,pos);
                    callDateStringForRss=sdf2.format(callDate);
                    
                    channelItem.setTitle("Appel manqué du "+callerSource);
                    channelItem.setLink("http://www."+hostname+"/index.jsp?Connexion=");
                    channelItem.setDescription("L'utilisateur du numéro "+callerSource+" a essayé de vous joindre sans succès. Il vous a peut-être laissé un message, consultez votre messagerie.");
                    channelItem.setAuthor("voip@"+hostname);
                    channelItem.setGuid("http://www."+hostname);
                    channelItem.setPubDate(callDateStringForRss);
                    channelItem.setSource("http://www."+hostname);
                    listItem.add(channelItem);
                } else {
                    i=10;
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            closeRsAndSt(rs, st);
        }
        closeConnection(conn);
        
        if (suite) {
            VoipRss tempRss = new VoipRss();
            VoipRssChannel tempChan = new VoipRssChannel();
            
            tempChan.setTitle("VoIP RedNeck - Ligne "+callerid);
            tempChan.setLink("http://www."+hostname);
            tempChan.setDescription("Flux RSS des derniers événements correspondant à la ligne "+callerid);
            tempChan.setCopyright(hostname);
            tempChan.setGenerator("RSS 2.0 generation class");
            tempChan.setLanguage("fr");
            tempChan.setItemList(listItem);
            tempRss = new VoipRss("2.0",tempChan);
            rss.setRss(tempRss);
        }
        
        String textXML ="";
        if (rss.getRss().getVersion()!="") {
            VoipRss tmpRss=rss.getRss();
            VoipRssChannel tmpChan = tmpRss.getRssChannel();
            textXML="<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n"+
            "<rss version=\""+tmpRss.getVersion()+"\">\n"+
               "\t<channel>\n"+
                  "\t\t<title>"+tmpChan.getTitle()+"</title>\n" +
                  "\t\t<link>"+tmpChan.getLink()+"</link>\n" +
                  "\t\t<description>"+tmpChan.getDescription()+"</description>\n" +
                  "\t\t<language>"+tmpChan.getLanguage()+"</language>\n" +
                  "\t\t<copyright>"+tmpChan.getCopyright()+"</copyright>\n" +
                  "\t\t<generator>"+tmpChan.getGenerator()+"</generator>\n";
            LinkedList<VoipRssChannelItem> tmpItemList = tmpChan.getItemList();
            VoipRssChannelItem tempItem = new VoipRssChannelItem();
            
            for (int j=0; j<tmpItemList.size(); j++) {
                tempItem=tmpItemList.get(j);
                textXML+="\t\t<item>\n"+
                     "\t\t\t<title>"+tempItem.getTitle()+"</title>\n"+
                     "\t\t\t<link>"+tempItem.getLink()+"</link>\n"+
                     "\t\t\t<description>"+tempItem.getDescription()+"</description>\n"+
                     "\t\t\t<author>"+tempItem.getAuthor()+"</author>\n"+
                     "\t\t\t<guid>"+tempItem.getGuid()+"</guid>\n"+
                     "\t\t\t<pubDate>"+tempItem.getPubDate()+"</pubDate>\n"+
                     "\t\t\t<source url=\"\">"+hostname+"</source>\n"+
               "\t\t</item>\n";
            }
            textXML+="\t</channel>\n"+
                "</rss>\n";
        }
        
        String filename = "";
        if (textXML!="") {
            //LinkedList<VoipRssChannelItem> tmpItemList = tempRss.getRssChannel().getItemList();
            //VoipRssChannelItem tempItem = new VoipRssChannelItem();
            //tempItem=tmpItemList.get(0);
            try {
                filename = rss.getUrl();
                File tmpFile = new File(filename);
                String pathFile = tmpFile.getAbsolutePath();
                //FileOutputStream(tmpFile);
                Writer output = new BufferedWriter(new FileWriter(tmpFile));
                try {
                  //FileWriter always assumes default encoding is OK!
                  output.write(textXML);
                  okay=true;
                }
                finally {
                  output.close();
                }
            } catch (IOException e) {
                e.printStackTrace();
            }
        }
        return okay;
    }
    
    
    
    public boolean setUpdatedVoipRss(VoipRssTO rss) {
        
        boolean okay=false;

        //Connexion to the database with JNDI 
        Connection conn = (Connection) getConnectionWithJNDI();
        
        Statement st = null;

        //result of the queries
        ResultSet rs = null;

        int id_voip_rss=0;
        
        try {
            id_voip_rss=rss.getIdVoipRss();
            st=conn.createStatement();
            st.executeUpdate("update voip_rss set update_rss=0 where id_voip_rss=\""+id_voip_rss+"\";");
            
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            closeRsAndSt(rs, st);
        }
        closeConnection(conn);

        return okay;
    }
    
    
    
    public String getCallerId(VoipRssTO rss) {
        
        int id_voip_line = rss.getIdVoipLine();
        
        //Connexion to the database with JNDI 
        Connection conn = (Connection) getConnectionWithJNDI();
        
        Statement st = null;

        //result of the queries
        ResultSet rs = null;
        
        String callerid = "";
        try {
            st=conn.createStatement();
            rs = st.executeQuery("select * from voip_line where id_voip_line=\""+id_voip_line+"\";");
            if (rs.next()) {
                callerid=rs.getString("name");
            }
            
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            closeRsAndSt(rs, st);
        }
        closeConnection(conn);
        
        return callerid;
    }
    
    public LinkedList<String> getName(int id_customer) {
        
        LinkedList<String> names = new LinkedList<String>();
        //Connexion to the database with JNDI 
        Connection conn = (Connection) getConnectionWithJNDI();
        
        Statement st = null;

        //result of the queries
        ResultSet rs = null;
        
        String name = "";
        try {
            st=conn.createStatement();
            rs = st.executeQuery("select * from voip_line where id_customer=\""+id_customer+"\";");
            while (rs.next()) {
                name=rs.getString("name");
                names.add(name);
            }
            
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            closeRsAndSt(rs, st);
        }
        closeConnection(conn);
        
        return names;
    }
    
    
}
