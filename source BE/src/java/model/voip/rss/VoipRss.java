/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package model.voip.rss;

import java.io.*;
import java.util.*;
import org.w3c.dom.*;
import javax.xml.parsers.*;
import org.xml.sax.SAXException;

        
/**
 *
 * @author isen
 */

public class VoipRss {
    
    private String version;
    private VoipRssChannel channel;
    
    
    
    public VoipRss() {
        this.version = new String();
        this.channel = new VoipRssChannel();
    }
    
    public VoipRss(String version, VoipRssChannel channel) {
        this.version = version;
        this.channel = channel;
    }
    
    
    
    public VoipRss parse(String filename) throws SAXException, IllegalArgumentException {
        VoipRss rss = new VoipRss();
        
        String version="";
        VoipRssChannel channel = new VoipRssChannel();
        
        String title="";
        String link="";
        String description="";
        String language="";
        String copyright="";
        String generator="";
        String docs="";
    
        LinkedList<VoipRssChannelItem> itemList = new LinkedList<VoipRssChannelItem>();
        
        try {
            Document doc = DocumentBuilderFactory.newInstance().newDocumentBuilder().parse(filename);
           
            NodeList rssNodeList = doc.getElementsByTagName("rss");
            for (int i=0; i < rssNodeList.getLength(); i++) {
                Node rssNode = rssNodeList.item(i);
                if ((rssNode.getNodeName() == "#text") || (rssNode.getNodeName() == null))
                    continue;
                
                NamedNodeMap nodeMap = rssNode.getAttributes();
                version=nodeMap.getNamedItem("version").getNodeValue();
                if (version.compareTo("2.0")==0) {
                    NodeList channelNodeList = rssNode.getChildNodes();
                    for (int j=0; j < channelNodeList.getLength(); j++) {
                        Node channelNode = channelNodeList.item(j);
                        if ((channelNode.getNodeName() == "#text") || (channelNode.getNodeName() == null))
                            continue;
                
                        NodeList channelDetailsList = channelNode.getChildNodes();
                        for (int k=0; k < channelDetailsList.getLength(); k++) {
                            Node channelDetail = channelDetailsList.item(k);
                            if ((channelDetail.getNodeName() == "#text") || (channelDetail.getNodeName() == null))
                                continue;
                            
                            if (channelDetail.getNodeName().compareTo("item") != 0) {
                                if (channelDetail.getNodeName().compareTo("title") == 0) {
                                    title = channelDetail.getTextContent();
                                }
                                if (channelDetail.getNodeName().compareTo("link") == 0) {
                                    link = channelDetail.getTextContent();
                                }
                                if (channelDetail.getNodeName().compareTo("description") == 0) {
                                    description = channelDetail.getTextContent();
                                }
                                if (channelDetail.getNodeName().compareTo("language") == 0) {
                                    language = channelDetail.getTextContent();
                                }
                                if (channelDetail.getNodeName().compareTo("copyright") == 0) {
                                    copyright = channelDetail.getTextContent();
                                }
                                if (channelDetail.getNodeName().compareTo("generator") == 0) {
                                    generator = channelDetail.getTextContent();
                                }
                                if (channelDetail.getNodeName().compareTo("docs") == 0) {
                                    docs = channelDetail.getTextContent();
                                }
                            } if (channelDetail.getNodeName().compareTo("item") == 0) {
                                NodeList itemNodeList = channelDetail.getChildNodes();
                                VoipRssChannelItem tmpRssChannelItem = new VoipRssChannelItem();
                                String itemTitle="";
                                String itemLink="";
                                String itemDescription="";
                                String itemAuthor="";

                                String itemGuid="";
                                String itemPubDate="";
                                String itemSource="";
                                for (int l=0; l < itemNodeList.getLength(); l++) {
                                    Node itemNode = itemNodeList.item(l);
                                    if ((itemNode.getNodeName() == "#text") || (itemNode.getNodeName() == null))
                                        continue;

                                    if (itemNode.getNodeName().compareTo("title") == 0) {
                                        itemTitle = itemNode.getTextContent();
                                    }
                                    if (itemNode.getNodeName().compareTo("link") == 0) {
                                        itemLink = itemNode.getTextContent();
                                    }
                                    if (itemNode.getNodeName().compareTo("description") == 0) {
                                        itemDescription = itemNode.getTextContent();
                                    }
                                    if (itemNode.getNodeName().compareTo("author") == 0) {
                                        itemAuthor = itemNode.getTextContent();
                                    }
                                    if (itemNode.getNodeName().compareTo("guid") == 0) {
                                        itemGuid = itemNode.getTextContent();
                                    }
                                    if (itemNode.getNodeName().compareTo("pubDate") == 0) {
                                        itemPubDate = itemNode.getTextContent();
                                    }
                                    if (itemNode.getNodeName().compareTo("source") == 0) {
                                        itemSource = itemNode.getTextContent();
                                    }
                                }
                                tmpRssChannelItem = new VoipRssChannelItem(itemTitle,itemLink,itemDescription,itemAuthor,itemGuid,itemPubDate,itemSource);                            
                                itemList.add(tmpRssChannelItem);
                            }
                        }
                       
                        
                        channel= new VoipRssChannel(title,link,description,language,copyright,generator,docs,itemList);
                    }
                    
                    rss = new VoipRss(version,channel);

                } else {
                    //Version != "2.0"
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return rss;
    }
    
    
    
    
    public String getVersion() {
        return this.version;
    }
    
    public VoipRssChannel getRssChannel() {
        return this.channel;
    }
    
    
    
    public void setVersion(String version) {
        this.version=version;
    }
  
    public void setRssChannel(VoipRssChannel channel) {
        this.channel=channel;
    }
    
}
