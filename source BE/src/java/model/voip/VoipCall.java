/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package model.voip;

/**
 *
 * @author francois
 */
public class VoipCall {

    private String calldate;
    private String clid;
    private String src;
    private String dst;
    private String dcontext;
    private String channel;
    private String dstchannel;
    private String lastapp;
    private String lastdata;
    private String duration;
    private String billsec;
    private String disposition;
    private String amaflags;
    private String accountcode;
    private String uniqueid;
    private String userfield;
    
    
    
    public VoipCall(){
 
        this.calldate="";
        this.clid="";
        this.src="";
        this.dst="";
        this.dcontext="";
        this.channel="";
        this.dstchannel="";
        this.lastapp="";
        this.lastdata="";
        this.duration="";
        this.billsec="";
        this.disposition="";
        this.amaflags="";
        this.accountcode="";
        this.uniqueid="";
        this.userfield="";
    }
    
    
    public VoipCall(String calldate,String clid,String src,String dst,String dcontext,String channel,String dstchannel,String lastapp,String lastdata,String duration,String billsec,String disposition,String amaflags,String accountcode,String uniqueid,String userfield){
 
        this.calldate=calldate;
        this.clid=clid;
        this.src=src;
        this.dst=dst;
        this.dcontext=dcontext;
        this.channel=channel;
        this.dstchannel=dstchannel;
        this.lastapp=lastapp;
        this.lastdata=lastdata;
        this.duration=duration;
        this.billsec=billsec;
        this.disposition=disposition;
        this.amaflags=amaflags;
        this.accountcode=accountcode;
        this.uniqueid=uniqueid;
        this.userfield=userfield;
    }

}
