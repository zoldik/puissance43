/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package model.voip.rss;

import java.io.*;
import java.util.*;

/**
 *
 * @author isen
 */

public class VoipRssChannel {

    private String title;
    private String link;
    private String description;
    private String language;
    private String copyright;
    private String generator;
    private String docs;
    
    private LinkedList<VoipRssChannelItem> itemList;
    
//    private String lastBuildDate;
//    private int ttl;



    
    public VoipRssChannel() {
        this.title = new String();
        this.link = new String();
        this.description = new String();
        this.language = new String();
        this.copyright = new String();
        this.generator = new String();
        this.docs = new String();
        
        this.itemList = new LinkedList<VoipRssChannelItem>();
    }
    
    public VoipRssChannel(String title, String link, String description, String language, String copyright, String generator, String docs, LinkedList<VoipRssChannelItem> itemList) {
        this.title = title;
        this.link = link;
        this.description = description;
        this.language = language;
        this.copyright = copyright;
        this.generator = generator;
        this.docs = docs;
        
        this.itemList = itemList;
    }
    
    
    
    public String getTitle() {
        return this.title;
    }
    
    public String getLink() {
        return this.link;
    }    
    
    public String getDescription() {
        return this.description;
    }
    
    public String getLanguage() {
        return this.language;
    }    
    
    public String getCopyright() {
        return this.copyright;
    }
    
    public String getGenerator() {
        return this.generator;
    }    
    
    public String getDocs() {
        return this.docs;
    }
    
    public LinkedList<VoipRssChannelItem> getItemList() {
        return this.itemList;
    }
    

    
    
    public void setTitle(String title) {
        this.title=title;
    }

    public void setLink(String link) {
        this.link=link;
    }

    public void setDescription(String description) {
        this.description=description;
    }

    public void setLanguage(String language) {
        this.language=language;
    }

    public void setCopyright(String copyright) {
        this.copyright=copyright;
    }

    public void setGenerator(String generator) {
        this.generator=generator;
    }

    public void setDocs(String docs) {
        this.docs=docs;
    }

    public void setItemList(LinkedList<VoipRssChannelItem> itemList) {
        this.itemList=itemList;
    }

    
}
