<%-- 
    Document   : AddSubscribes
    Created on : 13 févr. 2009, 16:51:05
    Author     : vincent
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page language="Java" import="java.util.*" %>

<%@ page import="DAO.factory.*, DAO.transfertObject.InternetSubscribeTO, DAO.interfaces.InternetSubscribeDAOInterface" %>
<%@ page import="DAO.transfertObject.VoipSubscribeTO, DAO.interfaces.VoipSubscribeDAOInterface" %>
<%@ page import="DAO.transfertObject.VodSubscribeTO, DAO.interfaces.VodSubscribeDAOInterface" %>
<%@ page import="DAO.transfertObject.CustomerTO, DAO.interfaces.CustomerDAOInterface" %>

<html>
    <head>
        
        <script language="JavaScript" src="javascripts/ajax_register_core.js"></script>
        
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        
        <!---zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz-->
        <!---zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz-->
        <!---zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz-->
              
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
                            <input type="submit" name="AddInternetSubscribe" value="Ajouter" />
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
                            <input type="submit" name="AddVoipSubscribe" value="Ajouter"/>
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
                            <input type="submit" name="AddVodSubscribe" value="Ajouter"/>
                            <input type="hidden" name="addSubscribe" value="vod" />
                        </td>                 
                    </tr>
                    
                </table>
            </form>
        </div>     
        
        <!---zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz-->
        <!---zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz-->
        <!---zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz-->
        
        <center>Suppression d'un abonnement internet</center><hr> 
        
        <input type="submit" name="DelInternetSubscribe" value="Supprimer un abonnement internet" onclick="formDelInternet.style.visibility = 'visible'"/>
        
        <div id='formDelInternet' style='visibility: hidden'>
            
            <table width="100%" border="1">
                
                <tr style="color:white">
                    <tr>
                        <th>N°</th>
                        <th>Nom</th>
                        <th>Description</th>          
                        <th>Prix (parMois)</th>
                        <th>Debit</th>                
                        <th>Supprimer</th>
                    </tr>          
                </tr>                     
                
                <%
            DAOFactory daoFactory = DAOFactory.getDAOFactory(DAOFactory.MYSQL);
            InternetSubscribeDAOInterface internetSubscribeDAO = daoFactory.getInternetSubscribeDAO();

            ArrayList<InternetSubscribeTO> internetSubscribeTOs = internetSubscribeDAO.selectAllInternetSubscribeTOs();

            Iterator it = internetSubscribeTOs.iterator();

            while (it.hasNext()) {
                InternetSubscribeTO internetSubscribeTO = (InternetSubscribeTO) it.next();
                %>
                
                <tr><td><%=internetSubscribeTO.getId()%></td>
                    <td><%=internetSubscribeTO.getNameSubscribe()%></td>
                    <td><%=internetSubscribeTO.getDescriptionSubscribe()%></td>            
                    <td><%=internetSubscribeTO.getPrice()%></td>
                    <td><%=internetSubscribeTO.getRate()%></td>
                    <td><form method='post' action="CtrSubscribe">
                            <input type='submit' value="Supprimer">
                            <input type="hidden" name="delSubscribe" value="internet" />
                            <input type='hidden' name='idInternet' value='<%=internetSubscribeTO.getId()%>'>                        
                    </form></td>
                    
                    <%
            }//Fin du while                         
%>        
                </tr>                
            </table>  
            <br><br><br><br> 
        </div>        
        
        <!---zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz-->
        
        <center>Suppression d'un abonnement voip</center><hr> 
        
        <input type="submit" name="DelVoipSubscribe" value="Supprimer un abonnement voip" onclick="formDelVoip.style.visibility = 'visible'"/>
        
        <div id='formDelVoip' style='visibility: hidden'>
            
            <table width="100%" border="1">
                
                <tr style="color:white">
                    <tr>
                        <th>N°</th>
                        <th>Nom</th>
                        <th>Description</th> 
                        <th>Type</th> 
                        <th>Prix (parMois)</th>                                       
                        <th>Supprimer</th>
                    </tr>          
                </tr>                     
                
                <%

            VoipSubscribeDAOInterface voipSubscribeDAO = daoFactory.getVoipSubscribeDAO();

            LinkedList<VoipSubscribeTO> voipSubscribeTOs = voipSubscribeDAO.selectAllVoipSubscribeTOs();

            Iterator itVoip = voipSubscribeTOs.iterator();

            while (itVoip.hasNext()) {
                VoipSubscribeTO voipSubscribeTO = (VoipSubscribeTO) itVoip.next();
                %>
                
                <tr><td><%=voipSubscribeTO.getId()%></td>
                    <td><%=voipSubscribeTO.getName()%></td>
                    <td><%=voipSubscribeTO.getDescription()%></td>            
                    <td><%=voipSubscribeTO.getType()%></td>
                    <td><%=voipSubscribeTO.getPrice()%></td>                    
                    <td><form method='post' action="CtrSubscribe">
                            <input type='submit' value="Supprimer">
                            <input type="hidden" name="delSubscribe" value="voip" />
                            <input type='hidden' name='idVoip' value='<%=voipSubscribeTO.getId()%>'>                        
                    </form></td>
                    
                    <%
            }//Fin du while                         
%>        
                </tr>                
            </table>  
            <br><br><br><br>
        </div>
        
        
        
        <!---zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz-->
        
        <center>Suppression d'un abonnement vod</center><hr> 
        
        <input type="submit" name="DelVodSubscribe" value="Supprimer un abonnement vod" onclick="formDelVod.style.visibility = 'visible'"/>
        
        <div id='formDelVod' style='visibility: hidden'>
            
            <table width="100%" border="1">
                
                <tr style="color:white">
                    <tr>
                        <th>N°</th>
                        <th>Nom</th>
                        <th>Description</th> 
                        <th>Type</th> 
                        <th>Prix (parMois)</th>                                       
                        <th>Supprimer</th>
                    </tr>          
                </tr>                     
                
                <%

            VodSubscribeDAOInterface vodSubscribeDAO = daoFactory.getVodSubscribeDAO();

            LinkedList<VodSubscribeTO> vodSubscribeTOs = vodSubscribeDAO.selectAllVodSubscribeTOs();

            Iterator itVod = vodSubscribeTOs.iterator();

            while (itVod.hasNext()) {
                VodSubscribeTO vodSubscribeTO = (VodSubscribeTO) itVod.next();
                %>
                
                <tr><td><%=vodSubscribeTO.getId()%></td>
                    <td><%=vodSubscribeTO.getName()%></td>
                    <td><%=vodSubscribeTO.getDescription()%></td>            
                    <td><%=vodSubscribeTO.getType()%></td>
                    <td><%=vodSubscribeTO.getPrice()%></td>                    
                    <td><form method='post' action="CtrSubscribe">
                            <input type='submit' value="Supprimer">
                            <input type="hidden" name="delSubscribe" value="vod" />
                            <input type='hidden' name='idVod' value='<%=vodSubscribeTO.getId()%>'>                        
                    </form></td>
                    
                    <%
            }//Fin du while                         
%>        
                </tr>                
            </table>  
            <br><br><br><br> 
        </div>
        
        <!---zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz-->        
        <!---zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz-->
        <!---zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz-->
        
        
        <center>Validation d'un abonnement internet</center><hr> 
        
        <input type="submit" name="ValInternetSubscribe" value="Valider un abonnement internet" onclick="formValInternet.style.visibility = 'visible'"/>
        
        <div id='formValInternet' style='visibility: hidden'>
            
            <table width="100%" border="1">
                
                <tr style="color:white">
                    <tr>
                        <th>N°</th>
                        <th>Prénom</th>
                        <th>Nom</th>          
                        <th>State</th> 
                        <th>Abonnement</th>
                        <th>Valider</th>
                    </tr>          
                </tr>                     
                
                <%

            CustomerDAOInterface customerDAO = daoFactory.getCustomerDAO();

            LinkedList<CustomerTO> customerTOs = customerDAO.selectAllCustomersInInternetState0();

            Iterator itVal = customerTOs.iterator();
            while (itVal.hasNext()) {
                CustomerTO customerTO = (CustomerTO) itVal.next();
                %>
                
                <tr><td><%=customerTO.getId()%></td>
                    <td><%=customerTO.getFirstName()%></td>
                    <td><%=customerTO.getLastName()%></td>            
                    <td><%=customerTO.getStateInternetSubscribe()%></td>
                    <td><%=customerTO.getIdInternetSubscribe()%></td>                    
                    <td><form method='post' action="CtrSubscribe">
                            <input type='submit' value="Valider">
                            <input type="hidden" name="valSubscribe" value="internet" />
                            <input type='hidden' name='idInternet' value='<%=customerTO.getId()%>'>                        
                    </form></td>
                    
                    <%
            }//Fin du while                         
%>        
                </tr>                
            </table>  
            <br><br><br><br> 
        </div>        
        
        <!---zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz-->
        
        <center>Validation d'un abonnement voip</center><hr> 
        
        <input type="submit" name="ValVoipSubscribe" value="Valider un abonnement voip" onclick="formValVoip.style.visibility = 'visible'"/>
        
        <div id='formValVoip' style='visibility: hidden'>
            
            <table width="100%" border="1">
                
                <tr style="color:white">
                    <tr>
                        <th>N°</th>
                        <th>Prénom</th>
                        <th>Nom</th>          
                        <th>State</th> 
                        <th>Abonnement</th>
                        <th>Valider</th>
                    </tr>          
                </tr>                     
                
                <%           

            customerTOs = customerDAO.selectAllCustomersInVoipState0();

            Iterator itValVoip = customerTOs.iterator();
            while (itValVoip.hasNext()) {
                CustomerTO customerTO = (CustomerTO) itValVoip.next();
                %>
                
                <tr><td><%=customerTO.getId()%></td>
                    <td><%=customerTO.getFirstName()%></td>
                    <td><%=customerTO.getLastName()%></td>            
                    <td><%=customerTO.getStateVoipSubscribe()%></td>
                    <td><%=customerTO.getIdVoipSubscribe()%></td>                    
                    <td><form method='post' action="CtrSubscribe">
                            <input type='submit' value="Valider">
                            <input type="hidden" name="valSubscribe" value="voip" />
                            <input type='hidden' name='idInternet' value='<%=customerTO.getId()%>'>                        
                    </form></td>
                    
                    <%
            }//Fin du while                         
%>        
                </tr>                
            </table>  
            <br><br><br><br>
        </div>
        
        
        
        <!---zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz-->
        
        <center>Validation d'un abonnement vod</center><hr> 
        
        <input type="submit" name="ValVodSubscribe" value="Valider un abonnement vod" onclick="formValVod.style.visibility = 'visible'"/>
        
        <div id='formValVod' style='visibility: hidden'>
            
             <table width="100%" border="1">
                
                <tr style="color:white">
                    <tr>
                        <th>N°</th>
                        <th>Prénom</th>
                        <th>Nom</th>          
                        <th>State</th> 
                        <th>Abonnement</th>
                        <th>Valider</th>
                    </tr>          
                </tr>                     
                
                <%           

            customerTOs = customerDAO.selectAllCustomersInVodState0();

            Iterator itValVod = customerTOs.iterator();
            while (itValVod.hasNext()) {
                CustomerTO customerTO = (CustomerTO) itValVod.next();
                %>
                
                <tr><td><%=customerTO.getId()%></td>
                    <td><%=customerTO.getFirstName()%></td>
                    <td><%=customerTO.getLastName()%></td>            
                    <td><%=customerTO.getStateVodSubscribe()%></td>
                    <td><%=customerTO.getIdVodSubscribe()%></td>                    
                    <td><form method='post' action="CtrSubscribe">
                            <input type='submit' value="Valider">
                            <input type="hidden" name="valSubscribe" value="vod" />
                            <input type='hidden' name='idInternet' value='<%=customerTO.getId()%>'>                        
                    </form></td>
                    
                    <%
            }//Fin du while                         
%>        
                </tr>                
            </table>  
            <br><br><br><br> 
        </div>
        
    </body>
</html>
