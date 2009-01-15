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
              <table >

	<tr>
            <td>
		<div id="compte" class="box" onclick="javascript:location.href='./compte/compte.jsp'">
			<h3>Compte</h3>
			<p> commentaire :</p>
			<ul>
				<li><a href="page1.html">Lien</li>
				<li><a href="page1.html">Lien</li>
				<li><a href="page1.html">Lien</li>
			</ul>

		</div>
            </td>
            <td>
		<div id="voip" class="box" onclick="javascript:location.href='./voip/voip.jsp'">
			<h3>Telephonie</h3>
			<p>  commentaire :</p>
			<ul>
				<li><a href="page1.html">Lien</li>
				<li><a href="page1.html">Lien</li>
				<li><a href="page1.html">Lien</li>
			</ul>
		</div>
            </td>
        </tr>
	<tr>
            <td>
		<div id="vod" class="box" onclick="javascript:location.href='./vod/vod.jsp'">
			<h3>Video</h3>
			<p>  commentaire :</p>
			<ul>
				<li><a href="page1.html">Lien</li>
				<li><a href="page1.html">Lien</li>
				<li><a href="page1.html">Lien</li>
			</ul>
		</div>
            </td>
            <td>
                <div id="equipement" class="box" onclick="javascript:location.href='./equipement/equipement.jsp'">
			<h3>Equipement</h3>
			<p>  commentaire :</p>
			<ul>
				<li><a href="page1.html">Lien</li>
				<li><a href="page1.html">Lien</li>
				<li><a href="page1.html">Lien</li>
			</ul>
            
		</div>
            </td>    
          </tr>

	</table>
      
    </body>
</html>
