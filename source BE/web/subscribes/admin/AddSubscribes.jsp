<%-- 
    Document   : AddSubscribes
    Created on : 13 févr. 2009, 16:51:05
    Author     : vincent
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page language="Java" import="java.util.*" %>
<html>
    <head>
        
        <script language="JavaScript" src="javascripts/ajax_register_core.js"></script>
        
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        
        <center>Ajout d'un abonnement internet</center><hr> 
        
        <!--<input type="submit" name="Test" value="Test" onclick="myText.style.visibility = 'visible'"/>
        <div id='myText' style='visibility: hidden'>texte caché</div>
        pour l'afficher :  
        myText.style.visibility = 'visible';
        pour le cacher :
        myText.style.visibility = 'hidden';--> 
        
        <input type="submit" name="AddInternetSubscribe" value="Ajouter un abonnement internet" onclick="formInternet.style.visibility = 'visible'"/>
        
        
        <div id='formInternet' style='visibility: hidden'>
            <form name="AddInternetSubscribe" action="./CtrSubscribe" method="POST">
                <table>
                    
                    <tr align="left">
                        <td><a>nom</a></td>
                        <td><input type="text" name="name" value="internet" align="left"></td>                 
                    </tr>
                    
                    <tr align="left">
                        <td><a>description</a></td>
                        <td><input type="text" name="description" value="description" align="left"></td>                 
                    </tr>
                    
                    <tr align="left">
                        <td><a>prix (Euros)</a></td>
                        <td><input type="text" name="price" value="29.99" align="left"></td>                 
                    </tr>
                    
                    <tr align="left">
                        <td><a>débit</a></td>
                        <td><input type="text" name="rate" value="20" align="left"></td>                 
                    </tr>
                    
                    <tr align="left">
                        <td></td>
                        <td>
                            <input type="submit" name="AddInternetSubscribe" value="Créer" />
                            <input type="hidden" name="addSubscribe" value="internet"/>
                        </td>      
                        <!--<div id='formAddInternet'><td>Abonnement internet ajouté</td></div>-->
                    </tr>
                    
                </table>
            </form>   
        </div>
        
        <!---zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz-->
        
        <center>Ajout d'un abonnement voip</center><hr> 
        
        <input type="submit" name="AddVoipSubscribe" value="Ajouter un abonnement voip" onclick="formVoip.style.visibility = 'visible'"/>
        
        <div id='formVoip' style='visibility: hidden'>
            <form name="AddVoipSubscribe" action="./CtrSubscribe" method="POST">
                <table>
                    
                    <tr align="left">
                        <td><a>nom</a></td>
                        <td><input type="text" name="name" value="voip" align="left"></td>                 
                    </tr>
                    
                    <tr align="left">
                        <td><a>description</a></td>
                        <td><input type="text" name="description" value="description" align="left"></td>                 
                    </tr>
                    
                    <tr align="left">
                        <td><a>prix (Euros)</a></td>
                        <td><input type="text" name="price" value="12.99" align="left"></td>                 
                    </tr>
                    
                    <tr align="left">
                        <td><a>type</a></td>
                        <td><input type="text" name="type" value="pro" align="left"></td>                 
                    </tr>
                    
                    <tr align="left">
                        <td></td>
                        <td>
                            <input type="submit" name="AddVoipSubscribe" value="Créer"/>
                            <input type="hidden" name="addSubscribe" value="voip" />
                        </td>                 
                    </tr>
                </table>
            </form>
            
        </div>
        
        <!---zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz-->
        
        
        <center>Ajout d'un abonnement vod</center><hr> 
        
        <input type="submit" name="AddVodSubscribe" value="Ajouter un abonnement vod" onclick="formVod.style.visibility = 'visible'"/>
        
        <div id='formVod' style='visibility: hidden'>
            <form name="AddVodSubscribe" action="./CtrSubscribe" method="POST">
                <table>
                    
                    <tr align="left">
                        <td><a>nom</a></td>
                        <td><input type="text" name="name" value="vod" align="left"></td>                 
                    </tr>
                    
                    <tr align="left">
                        <td><a>description</a></td>
                        <td><input type="text" name="description" value="description" align="left"></td>                 
                    </tr>
                    
                    <tr align="left">
                        <td><a>prix (Euros)</a></td>
                        <td><input type="text" name="price" value="18.99" align="left"></td>                 
                    </tr>
                    
                    <tr align="left">
                        <td><a>type</a></td>
                        <td><input type="text" name="type" value="particulier" align="left"></td>                 
                    </tr>
                    
                    <tr align="left">
                        <td></td>
                        <td>
                            <input type="submit" name="AddVodSubscribe" value="Créer"/>
                            <input type="hidden" name="addSubscribe" value="vod" />
                        </td>                 
                    </tr>
                    
                </table>
            </form>
        </div>     
        
    </body>
</html>
