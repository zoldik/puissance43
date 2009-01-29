/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package model.voip;

/**
 *
 * @author francois
 */

public class VoipLigne {
    
      private String id;
      private String name;
      private String host;
      private String nat;
      private String type;
      private String accountcode;
      private String amaflags;
      private String calllimit;
      private String callgroup;
      private String callerid;
      private String cancallforward;
      private String canreinvite;
      private String context;
      private String defaultip;
      private String dtmfmode;
      private String fromuser;
      private String fromdomain;
      private String insecure;
      private String language;
      private String mailbox;
      private String md5secret;
      private String deny;
      private String permit;
      private String mask;
      private String musiconhold;
      private String pickupgroup;
      private String qualify;
      private String regexten;
      private String restrictcid;
      private String rtptimeout;
      private String rtpholdtimeout;
      private String secret;
      private String setvar;
      private String disallow;
      private String allow;
      private String fullcontact;
      private String ipaddr;
      private String port;
      private String regserver;
      private String regseconds;
      private String username;
      private String defaultuser;
      private String subsribecontext;
      private Boolean visible;

      
      public VoipLigne(){
          
        this.id="";  
        this.name="";
        this.host="";
        this.nat="";
        this.type="";
        this.accountcode="";
        this.amaflags="";
        this.calllimit="";
        this.callgroup="";
        this.callerid="";
        this.cancallforward="";
        this.canreinvite="";
        this.context="";
        this.defaultip="";
        this.dtmfmode="";
        this.fromuser="";
        this.fromdomain="";
        this.insecure="";
        this.language="";
        this.mailbox="";
        this.md5secret="";
        this.deny="";
        this.permit="";
        this.mask="";
        this.musiconhold="";
        this.pickupgroup="";
        this.qualify="";
        this.regexten="";
        this.restrictcid="";
        this.rtptimeout="";
        this.rtpholdtimeout="";
        this.secret="";
        this.setvar="";
        this.disallow="";
        this.allow="";
        this.fullcontact="";
        this.ipaddr="";
        this.port="";
        this.regserver="";
        this.regseconds="";
        this.username="";
        this.defaultuser="";
        this.subsribecontext="";
        this.visible=false;
     }
      
      /**
      * 
      * @param id
      * @param name
      * @param host (optional)
      * @param nat
      * @param type
      * @param accountcode
      * @param amaflags
      * @param call-limit
      * @param callgroup
      * @param callerid
      * @param cancallforward
      * @param canreinvite
      * @param context
      * @param defaultip
      * @param dtmfmode
      * @param fromuser
      * @param fromdomain
      * @param insecure
      * @param language
      * @param mailbox
      * @param md5secret
      * @param deny
      * @param permit
      * @param mask
      * @param musiconhold
      * @param pickupgroup
      * @param qualify
      * @param regexten
      * @param restrictcid
      * @param rtptimeout
      * @param rtpholdtimeout
      * @param secret
      * @param setvar
      * @param disallow
      * @param allow
      * @param fullcontact
      * @param ipaddr
      * @param port
      * @param regserver
      * @param regseconds
      * @param username
      * @param defaultuser
      * @param subsribecontext
      * @param visible
      */
      public VoipLigne(String id,String name,String host,String nat,String type,String accountcode,String amaflags,String calllimit,String callgroup,String callerid,String cancallforward,String canreinvite,String context,String defaultip,String dtmfmode,String fromuser,String fromdomain,String insecure,String language,String mailbox,String md5secret,String deny,String permit,String mask,String musiconhold,String pickupgroup,String qualify,String regexten,String restrictcid,String rtptimeout,String rtpholdtimeout,String secret,String setvar,String disallow,String allow,String fullcontact,String ipaddr,String port,String regserver,String regseconds,String username,String defaultuser,String subsribecontext,Boolean visible){
          
        this.id=id;  
        this.name=name;
        this.host=host;
        this.nat=nat;
        this.type=type;
        this.accountcode=accountcode;
        this.amaflags=amaflags;
        this.calllimit=calllimit;
        this.callgroup=callgroup;
        this.callerid=callerid;
        this.cancallforward=cancallforward;
        this.canreinvite=canreinvite;
        this.context=context;
        this.defaultip=defaultip;
        this.dtmfmode=dtmfmode;
        this.fromuser=fromuser;
        this.fromdomain=fromdomain;
        this.insecure=insecure;
        this.language=language;
        this.mailbox=mailbox;
        this.md5secret=md5secret;
        this.deny=deny;
        this.permit=permit;
        this.mask=mask;
        this.musiconhold=musiconhold;
        this.pickupgroup=pickupgroup;
        this.qualify=qualify;
        this.regexten=regexten;
        this.restrictcid=restrictcid;
        this.rtptimeout=rtptimeout;
        this.rtpholdtimeout=rtpholdtimeout;
        this.secret=secret;
        this.setvar=setvar;
        this.disallow=disallow;
        this.allow=allow;
        this.fullcontact=fullcontact;
        this.ipaddr=ipaddr;
        this.port=port;
        this.regserver=regserver;
        this.regseconds=regseconds;
        this.username=username;
        this.defaultuser=defaultuser;
        this.subsribecontext=subsribecontext;
        this.visible=visible;
   
     }
      
    //*****************
    //Getter
    //*****************
    
     public String getid (){
         return this.id;
     } 
      
     public String getname (){
         return this.name;
     }
     
     public String gethost (){
         return this.host;
     }
    
     public String getnat (){
         return this.nat;
     }
    
     public String gettype (){
         return this.type;
     }
    
     public String getaccountcode (){
         return this.accountcode;
     }
    
     public String getamaflags (){
         return this.amaflags;
     }
    
     public String getcalllimit (){
         return this.calllimit;
     }
    
     public String getcallgroup (){
         return this.callgroup;
     }
    
     public String getcallerid (){
         return this.callerid;
     }
    
     public String getcancallforward (){
         return this.cancallforward;
     }
    
     public String getcanreinvite (){
         return this.canreinvite;
     }
    
     public String getcontext (){
         return this.context;
     }
    
     public String getdefaultip (){
         return this.defaultip;
     }
    
     public String getdtmfmode (){
         return this.dtmfmode;
     }
    
     public String getfromuser (){
         return this.fromuser;
     }
    
     public String getfromdomain (){
         return this.fromdomain;
     }
    
     public String getinsecure (){
         return this.insecure;
     }
    
     public String getlanguage (){
         return this.language;
     }
    
     public String getmailbox (){
         return this.mailbox;
     }
    
     public String getmd5secret (){
         return this.md5secret;
     }
    
     public String getdeny (){
         return this.deny;
     }
     
     public String getpermit (){
         return this.permit;
     }
     
     public String getmask (){
         return this.mask;
     }
     
     public String getmusiconhold (){
         return this.musiconhold;
     }
     
     public String getpickupgroup (){
         return this.pickupgroup;
     }
     
     public String getqualify (){
         return this.qualify;
     }
     
     public String getregexten (){
         return this.regexten;
     }
     
     public String getrestrictcid (){
         return this.restrictcid;
     }
     
     public String getrtptimeout (){
         return this.rtptimeout;
     }
     
     public String getrtpholdtimeout (){
         return this.rtpholdtimeout;
     }
     
     public String getsecret (){
         return this.secret;
     }
     
     public String getsetvar (){
         return this.setvar;
     }
     
     public String getdisallow (){
         return this.disallow;
     }
     
     public String getallow (){
         return this.allow;
     }
     
     public String getfullcontact (){
         return this.fullcontact;
     }
     
     public String getipaddr (){
         return this.ipaddr;
     }
     
     public String getport (){
         return this.port;
     }
     
     public String getregserver (){
         return this.regserver;
     }
     
     public String getregseconds (){
         return this.regseconds;
     }
     
     public String getusername (){
         return this.username;
     }
     
     public String getdefaultuser (){
         return this.defaultuser;
     }
     
     public String getsubsribecontext (){
         return this.subsribecontext;
     }
     
     public boolean getvisible (){
         return this.visible;
     }
     
    //*****************
    //Setter
    //*****************    

     public void setid (String id){
         this.id=id;
     }     
     
     public void setname (String name){
         this.name=name;
     }
     
     public void sethost (String host){
         this.host=host;
     }
    
     public void setnat (String nat){
         this.nat=nat;
     }
    
     public void settype (String type){
         this.type=type;
     }
    
     public void setaccountcode (String accountcode){
         this.accountcode=accountcode;
     }
    
     public void setamaflags (String amaflags){
         this.amaflags=amaflags;
     }
    
     public void setcalllimit (String calllimit){
         this.calllimit=calllimit;
     }
    
     public void setcallgroup (String callgroup){
         this.callgroup=callgroup;
     }
    
     public void setcallerid (String callerid){
         this.callerid=callerid;
     }
    
     public void setcancallforward (String cancallforward){
         this.cancallforward=cancallforward;
     }
    
     public void setcanreinvite (String canreinvite){
         this.canreinvite=canreinvite;
     }
    
     public void setcontext (String context){
         this.context=context;
     }
    
     public void setdefaultip (String defaultip){
         this.defaultip=defaultip;
     }
    
     public void setdtmfmode (String dtmfmode){
         this.dtmfmode=dtmfmode;
     }
    
     public void setfromuser (String fromuser){
         this.fromuser=fromuser;
     }
    
     public void setfromdomain (String fromdomain){
         this.fromdomain=fromdomain;
     }
    
     public void setinsecure (String insecure){
         this.insecure=insecure;
     }
    
     public void setlanguage (String language){
         this.language=language;
     }
    
     public void setmailbox (String mailbox){
         this.mailbox=mailbox;
     }
    
     public void setmd5secret (String md5secret){
         this.md5secret=md5secret;
     }
    
     public void setdeny (String deny){
         this.deny=deny;
     }
     
     public void setpermit (String permit){
         this.permit=permit;
     }
     
     public void setmask (String mask){
         this.mask=mask;
     }
     
     public void setmusiconhold (String musiconhold){
         this.musiconhold=musiconhold;
     }
     
     public void setpickupgroup (String pickupgroup){
         this.pickupgroup=pickupgroup;
     }
     
     public void setqualify (String qualify){
         this.qualify=qualify;
     }
     
     public void setregexten (String regexten){
         this.regexten=regexten;
     }
     
     public void setrestrictcid (String restrictcid){
         this.restrictcid=restrictcid;
     }
     
     public void setrtptimeout (String rtptimeout){
         this.rtptimeout=rtptimeout;
     }
     
     public void setrtpholdtimeout (String rtpholdtimeout){
         this.rtpholdtimeout=rtpholdtimeout;
     }
     
     public void setsecret (String secret){
         this.secret=secret;
     }
     
     public void setsetvar (String setvar){
         this.setvar=setvar;
     }
     
     public void setdisallow (String disallow){
         this.disallow=disallow;
     }
     
     public void setallow (String allow){
         this.allow=allow;
     }
     
     public void setfullcontact (String fullcontact){
         this.fullcontact=fullcontact;
     }
     
     public void setipaddr (String ipaddr){
         this.ipaddr=ipaddr;
     }
     
     public void setport (String port){
         this.port=port;
     }
     
     public void setregserver (String regserver){
         this.regserver=regserver;
     }
     
     public void setregseconds (String regseconds){
         this.regseconds=regseconds;
     }
     
     public void setusername (String username){
         this.username=username;
     }
     
     public void setdefaultuser (String defaultuser){
         this.defaultuser=defaultuser;
     }
     
     public void setsubsribecontext (String subsribecontext){
         this.subsribecontext=subsribecontext;
     }
     
     public void setvisible (Boolean visible){
         this.visible=visible;
     }
          
    
    
    
}
