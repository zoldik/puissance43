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

public class VoipRssChannelItem {


    private String title;
    private String link;
    private String description;
    private String author;
    private String guid;
    private String pubDate;
    private String source;
    
    
    
    public VoipRssChannelItem() {
        this.title = new String();
        this.link = new String();
        this.description = new String();
        this.author = new String();
        this.guid = new String();
        this.pubDate = new String();
        this.source = new String();
    }
    
    public VoipRssChannelItem(String title, String link, String description, String author, String guid, String pubDate, String source) {
        this.title = title;
        this.link = link;
        this.description = description;
        this.author = author;
        this.guid = guid;
        this.pubDate = pubDate;
        this.source = source;
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
    
    public String getAuthor() {
        return this.author;
    }
    
     public String getGuid() {
        return this.guid;
    }
    
    public String getPubDate() {
        return this.pubDate;
    }    
    
    public String getSource() {
        return this.source;
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

    public void setAuthor(String author) {
        this.author=author;
    }
    
    public void setGuid(String guid) {
        this.guid=guid;
    }
    
    public void setPubDate(String pubDate) {
        this.pubDate=pubDate;
    }

    public void setSource(String source) {
        this.source=source;
    }
    
}
