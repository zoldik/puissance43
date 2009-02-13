/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package DAO.transfertObject;

import model.voip.rss.*;

/**VoipRss is a model class.
 * contains id_voip_rss,id_voip_line,url,pw
 * @author Philippe Lardennois
 */
public class VoipRssTO {
    //******************
    // ATTRIBUTES
    //******************    
    private int id_voip_rss;
    private int id_voip_line;
    private String url;
    private VoipRss rss;

    
    public VoipRssTO() {
        this.id_voip_rss=0;
        this.id_voip_line=0;
        this.url="";
        this.rss= new VoipRss();
    }
    
    //******************
    //GETTERS
    //******************
    public int getIdVoipRss() {
        return id_voip_rss;
    }

    public int getIdVoipLine() {
        return id_voip_line;
    }

    public String getUrl() {
        return url;
    }

    public VoipRss getRss() {
        return rss;
    }

    
    //******************
    //SETTERS
    //******************
    public void setIdVoipRss(int id_voip_rss) {
        this.id_voip_rss = id_voip_rss;
    }

    public void setIdVoipLine(int id_voip_line) {
        this.id_voip_line = id_voip_line;
    }

    public void setUrl(String url) {
        this.url = url;
    }

    public void setRss(VoipRss rss) {
        this.rss = rss;
    }

}
