<%-- 
    Document   : accueil
    Created on : 13 janv. 2009, 11:04:53
    Author     : francois
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" href="./design/accueil.css">
    </head>
    <body>
              
        <table align="center">

	<tr>
            <td>
		<div id="compte" class="box" onclick="javascript:location.href='./compte/compte.jsp'">
			<h3>Compte</h3>
			<ul>
                                <li><a href="CreateCustomerAccount.jsp">CrÃ©ation</a></li>
				<li><a href="SubscribesDisconnect.jsp">Abonnement</a></li>
                                <li><a href="./ViewBill">Factures</a></li>
				<li><a href="#">Resiliation</a></li>
			</ul>
		</div>
            </td>
            <td>
		<div id="voip" class="box" onclick="javascript:location.href='./voip/voip.jsp'">
			<h3>Telephonie</h3>
			<ul>
                                <li><a href="SubscribesDisconnect.jsp">Abonnement</a></li>
                                <li><a href="./voip/moncompte.jsp">Mon compte</a></li>
                                <li><a href="./voip/annuaire.jsp">Annuaire</a></li>
                                <li><a href="./voip/rss.jsp">Flux RSS</a></li>
				<li><a href="./voip/support.jsp">Support</a></li>
                                <li><a href="./voip/admin/admin.jsp">Administration</a></li>
			</ul>
		</div>
            </td>
        </tr>
	<tr>
            <td>
		<div id="vod" class="box" onclick="javascript:location.href='./vod/vod.jsp'">
			<h3>Video a la demande</h3>
			<ul>
                                <li><a href="SubscribesDisconnect.jsp">Abonnement</a></li>
			</ul>
		</div>
            </td>
            <td>
                <div id="equipement" class="box" onclick="javascript:location.href='./Search.jsp'">
			<h3>Magasin</h3>
			<ul>
				<li><a href="Search.jsp">Search</a></li>
				<li><a href="AdvancedSearch.jsp">AdvancedSearch</a></li>
				<li><a href="DisplayCart.jsp">Cart</a></li>                                
				<li><a href="Order.jsp">Order</a></li>
			</ul>
            
		</div>
            </td>    
          </tr>

	</table>
      
    </body>
</html>
