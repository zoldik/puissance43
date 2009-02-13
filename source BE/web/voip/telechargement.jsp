<%-- 
    Document   : telechargement
    Created on : 13 janv. 2009, 19:07:33
    Author     : francois, thomas
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
"http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Téléchargements</title>
    </head>
    <body>
        <h3>Pour le téléchargement cliquer sur l'icone correspondant à votre système d'exploitation</h3> 
        <table>
            <thead>
                <tr>
                    <th>Windows</th>
                    <th>Linux</th>
                    <th>MacOsX</th>
                </tr>
            </thead>
            <tbody>
                <tr>
                    <td><a href="http://www.zoiper.com/downloads/free/win/Zoiper_2.18_Free_Installer.exe"><img src="telechargement/images/win_logo.gif" border="0"></a> </td>
                    <td><a href="http://www.zoiper.com/downloads/free/linux/zoiper209-linux.tar.gz"><img src="telechargement/images/linux_logo.gif" border="0"></a></td>
                    <td><a href="http://www.zoiper.com/downloads/free/mac/zoiper209_installer.dmg"><img src="telechargement/images/MacOS.gif" border="0"></a></td>
                </tr>
            </tbody>
        </table>
        <h3>Tutoriels</h3>        
<a href="#Gestion_des_comptes_IAX2">Gestion des comptes IAX2</a><br>
<a href="#Gestion_des_comptes_SIP">Gestion des comptes SIP<br></a>
<a href="#Configuration_audio">Configuration Audio<br></a>
<a href="#Configuration_des_protocoles">Configuration des protocoles<br></a>
<a href="#Utilisations">Utilisations<br></a>
<a href="#Gestion_du_repertoire">Gestion du répertoire<br></a>
<P STYLE="margin-bottom: 0.2in"><U><a name="Gestion_des_comptes_IAX2"><B>Gestion des comptes IAX2</B></a></U></P>
<P STYLE="margin-bottom: 0.2in"><B>Accés au menu des Options</B><BR><BR>Pour
créer un compte IAX2, il faut accéder au menu de configuration de
Zoiper. Pour cela, vous pouvez faire un clic droit sur l'interface de
Zoiper et cliquer sur <I>Options</I>.<BR><BR><IMG SRC="./img_tutorials/zoiper_image275540.png" NAME="graphics1" ALT="zz2.png" ALIGN=BOTTOM HSPACE=20 VSPACE=10 WIDTH=182 HEIGHT=126 BORDER=0><BR><BR>Il
existe un bouton <B>Options</B> sur l'interface de Zoiper qui vous
permet aussi de démarrer la configuration. <BR><BR><IMG SRC="./img_tutorials/zoiper_image275476.png" NAME="graphics2" ALT="z11.png" ALIGN=BOTTOM HSPACE=20 VSPACE=10 WIDTH=330 HEIGHT=35 BORDER=0><BR><BR>Vous
pouvez aussi faire un “<B>Alt+O</B>&quot; pour accéder au menu
<B>Options</B>.</P>
<P STYLE="margin-bottom: 0in">&nbsp;</P>
<P STYLE="margin-bottom: 0in"><BR><B>R</B><B>ajouter un compte IAX2</B></P>
<P STYLE="margin-bottom: 0in">Quand le menu apparait cliquer sur le
champ &quot;<I>Add new IAX account</I>&quot; à gauche.<BR><BR><IMG SRC="./img_tutorials/zoiper_image275541.png" NAME="graphics3" ALT="zz3.png" ALIGN=BOTTOM HSPACE=20 VSPACE=10 WIDTH=200 HEIGHT=260 BORDER=0><BR><BR>Un
autre formulaire apparait pour vous inviter à y entrer le nom de
votre compte.<BR><BR><FONT COLOR="#000080"><A HREF="zoiper_image275542.png" TARGET="_blank"><FONT COLOR="#000080"><IMG SRC="./img_tutorials/zoiper_image275663.png" NAME="graphics4" ALT="zz4.png" ALIGN=BOTTOM HSPACE=20 VSPACE=10 WIDTH=400 HEIGHT=90 BORDER=2></FONT></a></FONT><BR><BR>Rentrez
un nom et cliquez sur <B>OK </B>pour créer un compte.<BR>La nouvelle
entrée apparaitra dans le menu de navigation à gauche. Cliquer sur
celle-ci pour continuer la configuration.<BR><BR><IMG SRC="./img_tutorials/zoiper_image275543.png" NAME="graphics5" ALT="zz5.png" ALIGN=BOTTOM HSPACE=20 VSPACE=10 WIDTH=200 HEIGHT=260 BORDER=0><BR><BR>Sur
la partie doite de votre menu de navigation, vous avez la possibilité
de choisir les options de votre compte. Vous devrez ensuite rentrer
le nom ou l'adresse IP du serveur Voip que vous utilisez. Dans cette
exemple : <I>172.16.10.2.</I> Enfin entrer le <I>nom du compte</I> et
le <I>mot de passe</I> du compte IAX2 (<I>iax.zoiper2</I> &amp;
<I>my_pass123</I>).<BR><BR><FONT COLOR="#000080"><A HREF="zoiper_image275544.png" TARGET="_blank"><FONT COLOR="#000080"><IMG SRC="./img_tutorials/zoiper_image275664.png" NAME="graphics6" ALT="zz6.png" ALIGN=BOTTOM HSPACE=20 VSPACE=10 WIDTH=400 HEIGHT=150 BORDER=2></FONT></A></FONT><BR><BR>Complétez
le “caller id” et le nom et cliquez sur le bouton Apply pour
activer les changements.<BR><BR>Pour pouvoir accéder aux options
avancées de votre compte, il faut cocher la case <B>&quot;</B><I><B>Show
advanced options</B></I><B>&quot; </B>qui se trouve en bas à
gauche.<BR><BR><IMG SRC="./img_tutorials/zoiper_image275545.png" NAME="graphics7" ALT="zz7.png" ALIGN=BOTTOM HSPACE=20 VSPACE=10 WIDTH=150 HEIGHT=20 BORDER=0><BR><BR>Vous
pourrez ainsi configuré votre répondeur.<BR><BR><FONT COLOR="#000080"><A HREF="zoiper_image275546.png" TARGET="_blank"><FONT COLOR="#000080"><IMG SRC="./img_tutorials/zoiper_image275665.png" NAME="graphics8" ALT="zz8.png" ALIGN=BOTTOM HSPACE=20 VSPACE=10 WIDTH=400 HEIGHT=150 BORDER=2></FONT></A></FONT><BR><BR>Pour
confirmer cliquez sur le bouton <B>Apply</B>.</P>
<P STYLE="margin-bottom: 0in"><BR>
</P>
<P STYLE="margin-bottom: 0in">&nbsp;<BR><B>E</B><B>nregistrement d'un
compte IAX2 </B>
</P>
<P STYLE="margin-bottom: 0in">Sélectionnez le compte concerné dans
le menu déroulant en bas de l'interface Zoiper. Quand vous l'avez
sélectionné cliquer sur le bouton <B>Register</B><BR><BR><IMG SRC="./img_tutorials/zoiper_image275547.png" NAME="graphics9" ALT="zz9.png" ALIGN=BOTTOM HSPACE=20 VSPACE=10 WIDTH=300 HEIGHT=50 BORDER=0><BR><BR>S<B>uppression
d'un compte IAX2</B></P>
<P STYLE="margin-bottom: 0in">Allez dans dans le menu Options pour
supprimer le compte sélectionné à partir du menu de
navigation.<BR><BR><IMG SRC="./img_tutorials/zoiper_image275548.png" NAME="graphics10" ALT="zz10.png" ALIGN=BOTTOM HSPACE=20 VSPACE=10 WIDTH=390 HEIGHT=100 BORDER=0><BR><BR>Appuyez
sur le bouton delete de votre clavier et confirmez dans la boite de
dialogue.</P>
<P STYLE="margin-bottom: 0in"><BR>
</P>
<P STYLE="margin-bottom: 0in">&nbsp;</P>
<P STYLE="margin-bottom: 0in"><BR><U><a name="Gestion_des_comptes_SIP"><B>Gestion des comptes SIP</B></a></U><BR><BR><B>Accès au menu Options </B>
</P>
<P STYLE="margin-bottom: 0in">Pour créer un compte SIP, il faut
accéder au menu de configuration de Zoiper. Pour cela, vous pouvez
faire un clic droit sur l'interface de Zoiper et cliquer sur
<I>Options</I>.<BR><BR><IMG SRC="./img_tutorials/zoiper_image275549.png" NAME="graphics11" ALT="zz2.png" ALIGN=BOTTOM HSPACE=20 VSPACE=10 WIDTH=182 HEIGHT=126 BORDER=0><BR><BR>Il
existe un bouton <B>Options</B> sur l'interface de Zoiper qui vous
permet aussi de démarrer la configuration.<BR><BR><IMG SRC="./img_tutorials/zoiper_image275486.png" NAME="graphics12" ALT="z11.png" ALIGN=BOTTOM HSPACE=20 VSPACE=10 WIDTH=325 HEIGHT=35 BORDER=0><BR><BR>Vous
pouvez aussi faire un “<B>Alt+O</B>&quot; pour accéder au menu
<B>Options</B>.</P>
<P STYLE="margin-bottom: 0in"><BR>
</P>
<P STYLE="margin-bottom: 0in">&nbsp;</P>
<P STYLE="margin-bottom: 0.2in"><BR><B>R</B><B>ajouter un compte SIP</B></P>
<P STYLE="margin-bottom: 0in"><SPAN STYLE="font-weight: normal">Quand
le menu apparait cliquer sur le champ &quot;</SPAN><I><SPAN STYLE="font-weight: normal">Add
new SIP account</SPAN></I><SPAN STYLE="font-weight: normal">&quot; à
gauche.</SPAN><BR><BR><IMG SRC="./img_tutorials/zoiper_image275550.png" NAME="graphics13" ALT="zz11.png" ALIGN=BOTTOM HSPACE=20 VSPACE=10 WIDTH=200 HEIGHT=250 BORDER=0><BR><BR>Un
autre formulaire apparait pour vous inviter à y entrer le nom de
votre compte.<BR><BR><FONT COLOR="#000080"><A HREF="zoiper_image275551.png" TARGET="_blank"><FONT COLOR="#000080"><IMG SRC="./img_tutorials/zoiper_image275666.png" NAME="graphics14" ALT="zz12.png" ALIGN=BOTTOM HSPACE=20 VSPACE=10 WIDTH=400 HEIGHT=90 BORDER=2></FONT></A></FONT><BR><BR>Rentrez
un nom et cliquez sur <B>OK </B>pour créer un compte.</P>
<P STYLE="margin-bottom: 0in"><BR>La nouvelle entrée apparaitra dans
le menu de navigation à gauche. 
</P>
<P STYLE="margin-bottom: 0in">Cliquer sur celle-ci pour continuer la
configuration.<BR><BR><IMG SRC="./img_tutorials/zoiper_image275552.png" NAME="graphics15" ALT="zz13.png" ALIGN=BOTTOM HSPACE=20 VSPACE=10 WIDTH=200 HEIGHT=250 BORDER=0><BR><BR>Sur
la partie doite de votre menu de navigation, vous avez la possibilité
de choisir les options de votre compte. Vous devrez ensuite rentrer
le nom ou l'adresse IP du serveur Voip que vous utilisez. Dans cette
exemple : <I>172.16.10.2.</I> Enfin entrer le <I>nom du compte</I> et
le <I>mot de passe</I> du compte SIP (sip<I>.zoiper2</I> &amp;
<I>my_pass234</I>).<BR><BR><FONT COLOR="#000080"><A HREF="zoiper_image275553.png" TARGET="_blank"><FONT COLOR="#000080"><IMG SRC="./img_tutorials/zoiper_image275667.png" NAME="graphics16" ALT="zz14.png" ALIGN=BOTTOM HSPACE=20 VSPACE=10 WIDTH=400 HEIGHT=150 BORDER=2></FONT></A></FONT><BR><BR>Pour
pouvoir accéder aux options avancées de votre compte, il faut
cocher la case <B>&quot;</B><I><B>Show advanced options</B></I><B>&quot;
</B>qui se trouve en bas à gauche.<BR><BR><IMG SRC="./img_tutorials/zoiper_image275554.png" NAME="graphics17" ALT="zz7.png" ALIGN=BOTTOM HSPACE=20 VSPACE=10 WIDTH=150 HEIGHT=20 BORDER=0><BR><BR>Vous
pouvez ainsi avoir accès aux options avancées : configurer votre
proxy de sortie ou votre répondeur. Vérifiez si vous avez besoin
d'utiliser un serveur STUN.<BR><BR><FONT COLOR="#000080"><A HREF="zoiper_image275555.png" TARGET="_blank"><FONT COLOR="#000080"><IMG SRC="./img_tutorials/zoiper_image275668.png" NAME="graphics18" ALT="zz15.png" ALIGN=BOTTOM HSPACE=20 VSPACE=10 WIDTH=420 HEIGHT=180 BORDER=2></FONT></A></FONT><BR><BR>Pour
confirmer cliquez sur le bouton <B>Apply</B>.</P>
<P STYLE="margin-bottom: 0in"><BR>
</P>
<P STYLE="margin-bottom: 0in">&nbsp;</P>
<P STYLE="margin-bottom: 0.2in"><BR><B> </B><B>E</B><B>nregistrement
d'un compte SIP</B></P>
<P STYLE="margin-bottom: 0in">Sélectionnez le compte concerné dans
le menu déroulant en bas de l'interface Zoiper. Quand vous l'avez
choisi cliquer sur le bouton <B>Register</B><BR><BR><IMG SRC="./img_tutorials/zoiper_image275556.png" NAME="graphics19" ALT="zz16.png" ALIGN=BOTTOM HSPACE=20 VSPACE=10 WIDTH=290 HEIGHT=50 BORDER=0></P>
<P STYLE="margin-bottom: 0in"><BR>
</P>
<P STYLE="margin-bottom: 0in">&nbsp;</P>
<P STYLE="margin-bottom: 0.2in"><BR><B>Suppression d'un compte SIP</B></P>
<P STYLE="margin-bottom: 0in">Allez dans dans le menu Options pour
supprimer le compte sélectionné à partir du menu de
navigation.<BR>Appuyez sur le bouton delete de votre clavier et
confirmez dans la boite de dialogue.<BR><BR><IMG SRC="./img_tutorials/zoiper_image275557.png" NAME="graphics20" ALT="zz17.png" ALIGN=BOTTOM HSPACE=20 VSPACE=10 WIDTH=390 HEIGHT=100 BORDER=0></P>
<P STYLE="margin-bottom: 0in"><BR>
</P>
<P STYLE="margin-bottom: 0in">&nbsp;</P>
<a STYLE="margin-bottom: 0.2in"><BR><a name=Configuration_audio><U><B>Configuration audio</B></U></a></P>
<P STYLE="margin-bottom: 0in">Avant de passer un appel, il est
recommandé de reconfigurer vos options audio. Pour cela vous pouvez
aller dans le menu de configuration.</P>
<P STYLE="margin-bottom: 0in">&nbsp;</P>
<P STYLE="margin-bottom: 0.2in"><BR><B> Accès au menu Options</B></P>
<P STYLE="margin-bottom: 0.2in">Pour cela, faites un clic droit sur
l'interface de Zoiper et cliquer sur <I>Options</I>.<BR><BR><IMG SRC="./img_tutorials/zoiper_image275558.png" NAME="graphics21" ALT="zz2.png" ALIGN=BOTTOM HSPACE=20 VSPACE=10 WIDTH=182 HEIGHT=126 BORDER=0><BR><BR><BR><BR><IMG SRC="./img_tutorials/zoiper_image275495.png" NAME="graphics22" ALT="z11.png" ALIGN=BOTTOM HSPACE=20 VSPACE=10 WIDTH=330 HEIGHT=35 BORDER=0><BR><BR>Vous
pouvez aussi faire un “<B>Alt+O</B>&quot; pour accéder au menu
<B>Options</B>.</P>
<P STYLE="margin-bottom: 0.2in">Il existe un bouton <B>Options</B>
sur l'interface de Zoiper qui vous permet aussi de démarrer la
configuration.</P>
<P STYLE="margin-bottom: 0in">&nbsp;</P>
<P STYLE="margin-bottom: 0.2in"><BR><B>Configuration des Paramètres
Audio</B></P>
<P STYLE="margin-bottom: 0in">Selectionner le champ “<B>Audio
Devices</B>” dans le menu de navigation situé à
gauche.<BR><BR><IMG SRC="./img_tutorials/zoiper_image275559.png" NAME="graphics23" ALT="zz18.png" ALIGN=BOTTOM HSPACE=20 VSPACE=10 WIDTH=190 HEIGHT=250 BORDER=0><BR><BR>Choisissez
les dispositifs (devices) que vous allez utiliser pour vos entrées
et sorties audio. Par exemple, Microsoft Sound Mapper. Quand vous
êtes satisfaits de votre choix, vous pouvez activer l'annulateur
d'echo <I>Echo Cancellation </I><SPAN STYLE="font-style: normal">et
cliquez sur le bouton </SPAN><SPAN STYLE="font-style: normal"><B>Apply.</B></SPAN><BR><BR><FONT COLOR="#000080"><A HREF="zoiper_image275560.png" TARGET="_blank"><FONT COLOR="#000080"><IMG SRC="./img_tutorials/zoiper_image275669.png" NAME="graphics24" ALT="zz19.png" ALIGN=BOTTOM HSPACE=20 VSPACE=10 WIDTH=400 HEIGHT=160 BORDER=2></FONT></a></FONT><BR><BR>
</P>
<P STYLE="margin-bottom: 0in">&nbsp;</P>
<a STYLE="margin-bottom: 0.2in"><BR><a name=Configuration_des_protocoles><U><B>Configuration
des protocoles</B></U></a></P>
<P STYLE="margin-bottom: 0in">Pour chaque protocole, il existe des
options de configuration. La plupart concerne le port de
communication avec lequel le protocole fonctionne. Pour reconfigurer
cela il suffira de rentrer dans le menu de configuration et activé
les options avancées.</P>
<P STYLE="margin-bottom: 0in"><BR>
</P>
<P STYLE="margin-bottom: 0in">&nbsp;</P>
<P STYLE="margin-bottom: 0.2in"><BR><B>Accès au menu Options</B></P>
<P STYLE="margin-bottom: 0in"><SPAN STYLE="font-weight: normal">Pour
cela, faites un clic droit sur l'interface de Zoiper et cliquer sur
</SPAN><I><SPAN STYLE="font-weight: normal">Options</SPAN></I><SPAN STYLE="font-weight: normal">.</SPAN><B><BR></B><BR><IMG SRC="./img_tutorials/zoiper_image275561.png" NAME="graphics25" ALT="zz2.png" ALIGN=BOTTOM HSPACE=20 VSPACE=10 WIDTH=182 HEIGHT=126 BORDER=0><BR><BR>Il
existe un bouton <B>Options</B> sur l'interface de Zoiper qui vous
permet aussi de démarrer la configuration.<BR><BR><IMG SRC="./img_tutorials/zoiper_image275499.png" NAME="graphics26" ALT="z11.png" ALIGN=BOTTOM HSPACE=20 VSPACE=10 WIDTH=330 HEIGHT=35 BORDER=0><BR><BR>Vous
pouvez aussi faire un “<B>Alt+O</B>&quot; pour accéder au menu
<B>Options</B>.</P>
<P STYLE="margin-bottom: 0in"><BR>
</P>
<P STYLE="margin-bottom: 0in">&nbsp;</P>
<P STYLE="margin-bottom: 0.2in"><BR><B>Configuration IAX2 </B>
</P>
<P STYLE="margin-bottom: 0in">Cliquez sur le champ &quot;<B>IAX
options</B>&quot; dans le menu de navigation.<BR><BR><IMG SRC="./img_tutorials/zoiper_image275562.png" NAME="graphics27" ALT="zz20.png" ALIGN=BOTTOM HSPACE=20 VSPACE=10 WIDTH=200 HEIGHT=260 BORDER=0><BR><BR>Vous
pouvez maintenant spécifier un nouveau port IAX2 port.<BR><BR><FONT COLOR="#000080"><A HREF="zoiper_image275563.png" TARGET="_blank"><FONT COLOR="#000080"><IMG SRC="./img_tutorials/zoiper_image275670.png" NAME="graphics28" ALT="zz21.png" ALIGN=BOTTOM HSPACE=20 VSPACE=10 WIDTH=410 HEIGHT=60 BORDER=2></FONT></a></FONT></P>
<P STYLE="margin-bottom: 0in"><BR>
</P>
<P STYLE="margin-bottom: 0in">&nbsp;</P>
<P STYLE="margin-bottom: 0.2in"><BR><B>C</B><B>onfiguration SIP</B></P>
<P STYLE="margin-bottom: 0in">Cliquez sur le champ &quot;<B>SIP</B><B>
options</B>&quot; dans le menu de navigation.<BR><BR><IMG SRC="./img_tutorials/zoiper_image275564.png" NAME="graphics29" ALT="zz22.png" ALIGN=BOTTOM HSPACE=20 VSPACE=10 WIDTH=200 HEIGHT=260 BORDER=0><BR><BR>Vous
pouvez maintenant spécifier un nouveau port SIP port.<BR><BR><FONT COLOR="#000080"><A HREF="zoiper_image275565.png" TARGET="_blank"><FONT COLOR="#000080"><IMG SRC="./img_tutorials/zoiper_image275671.png" NAME="graphics30" ALT="zz23.png" ALIGN=BOTTOM HSPACE=20 VSPACE=10 WIDTH=410 HEIGHT=60 BORDER=2></FONT></A></FONT></P>
<P STYLE="margin-bottom: 0in"><BR>
</P>
<P STYLE="margin-bottom: 0in">&nbsp;</P>
<P STYLE="margin-bottom: 0.2in"><BR><B>C</B><B>onfiguration RTP</B></P>
<P STYLE="margin-bottom: 0in">Cliquez sur le champ &quot;<B>RTP</B><B>
options</B>&quot; dans le menu de navigation.<BR><BR><IMG SRC="./img_tutorials/zoiper_image275566.png" NAME="graphics31" ALT="zz24.png" ALIGN=BOTTOM HSPACE=20 VSPACE=10 WIDTH=200 HEIGHT=270 BORDER=0><BR><BR>Vous
pouvez maintenant spécifier un nouveau port RTP port.<BR><BR><FONT COLOR="#000080"><A HREF="zoiper_image275567.png" TARGET="_blank"><FONT COLOR="#000080"><IMG SRC="./img_tutorials/zoiper_image275672.png" NAME="graphics32" ALT="zz25.png" ALIGN=BOTTOM HSPACE=20 VSPACE=10 WIDTH=410 HEIGHT=60 BORDER=2></FONT></A></FONT><BR><BR>Il
existe des options avancées pour le protocole RTP &quot;<I>Advanced
RTP options</I>&quot;<BR><BR><FONT COLOR="#000080"><A HREF="zoiper_image275568.png" TARGET="_blank"><FONT COLOR="#000080"><IMG SRC="./img_tutorials/zoiper_image275673.png" NAME="graphics33" ALT="zz26.png" ALIGN=BOTTOM HSPACE=20 VSPACE=10 WIDTH=400 HEIGHT=150 BORDER=2></FONT></A></FONT></P>
<P STYLE="margin-bottom: 0in"><BR>
</P>
<P STYLE="margin-bottom: 0in">&nbsp;</P>
<P STYLE="margin-bottom: 0.2in"><BR><B>Configuration STUN</B></P>
<P STYLE="margin-bottom: 0in">Cliquez sur le champ &quot;<B>STUN</B><B>
options</B>&quot; dans le menu de navigation.<BR><BR><IMG SRC="./img_tutorials/zoiper_image275569.png" NAME="graphics34" ALT="zz27.png" ALIGN=BOTTOM HSPACE=20 VSPACE=10 WIDTH=200 HEIGHT=260 BORDER=0><BR><BR>Si
votre ordinateur fonctionne derrière un NAT il est recommandé
d'utiliser un serveur STUN. Pour cela, vous devez activer les support
STUN. Ensuite vous devez spécifier l'hostname et l'adresse IP du
derveur STUN. Vous devriez aussi changer le port STUN par
défaut.<BR><BR><FONT COLOR="#000080"><A HREF="zoiper_image275570.png" TARGET="_blank"><FONT COLOR="#000080"><IMG SRC="./img_tutorials/zoiper_image275674.png" NAME="graphics35" ALT="zz27-1.png" ALIGN=BOTTOM HSPACE=20 VSPACE=10 WIDTH=400 HEIGHT=110 BORDER=2></FONT></A></FONT><BR><BR>Vous
pouvez spécifier la période de rafraichissement du serveur STUN.
Pour cela, changer ce paramètre. <BR><BR><FONT COLOR="#000080"><A HREF="zoiper_image275571.png" TARGET="_blank"><FONT COLOR="#000080"><IMG SRC="./img_tutorials/zoiper_image275675.png" NAME="graphics36" ALT="zz28.png" ALIGN=BOTTOM HSPACE=20 VSPACE=10 WIDTH=400 HEIGHT=60 BORDER=2></FONT></A></FONT></P>
<P STYLE="margin-bottom: 0in"><BR>
</P>
<P STYLE="margin-bottom: 0in">&nbsp;</P>
<P STYLE="margin-bottom: 0in"><BR><a name=Utilisations><U><B>Utilisations</B></U></a></P>
<P STYLE="margin-bottom: 0in">Pour composer un numéro depuis Zoiper,
vous n'avez juste qu'à le taper puis appuyer sur le bouton
<B>Dial</B>.<BR><BR><IMG SRC="./img_tutorials/zoiper_image275510.png" NAME="graphics37" ALT="z39.png" ALIGN=BOTTOM HSPACE=20 VSPACE=10 WIDTH=330 HEIGHT=35 BORDER=0><BR><BR>L'autre
manière de composer un numéro est de le faire avec le <B>pavé
numérique</B><SPAN STYLE="font-weight: normal">. Après avoir
composer le numéro appuyer sur entrée ou sur le bouton
</SPAN><B>Dial</B>.<BR><BR><IMG SRC="./img_tutorials/zoiper_image275511.png" NAME="graphics38" ALT="z40.png" ALIGN=BOTTOM HSPACE=20 VSPACE=10 WIDTH=140 HEIGHT=140 BORDER=0><BR><BR>Pour
décrocher vous pouvez tout simplement cliquer sur le bouton
<B>Hang-up</B>.<BR><IMG SRC="./img_tutorials/zoiper_image275512.png" NAME="graphics39" ALT="z41.png" ALIGN=BOTTOM HSPACE=20 VSPACE=10 WIDTH=330 HEIGHT=35 BORDER=0><BR><BR>Pour
faire patienter un appel un moment appuyez sur le bouton <B>Hold</B>.<BR><BR><IMG SRC="./img_tutorials/zoiper_image275513.png" NAME="graphics40" ALT="z42.png" ALIGN=BOTTOM HSPACE=20 VSPACE=10 WIDTH=330 HEIGHT=35 BORDER=0><BR><BR>Si
vous êtes déjà en ligne avec quelqu'un vous pouvez le tranférer
vers un autre numéro pour cela appuyer sur le bouton
<B>Transfer</B>.<BR><IMG SRC="./img_tutorials/zoiper_image275514.png" NAME="graphics41" ALT="z43.png" ALIGN=BOTTOM HSPACE=20 VSPACE=10 WIDTH=330 HEIGHT=35 BORDER=0><BR><BR>Après
avoir fait cela une fenêtre vous permettra d'entrer le numéro vers
lequel vous voulez effectuer un transfert. Quand vous êtes prêts,
appuyez sur <B>OK</B> pour terminer la manipulation.<BR><BR><IMG SRC="./img_tutorials/zoiper_image275515.png" NAME="graphics42" ALT="z44.png" ALIGN=BOTTOM HSPACE=20 VSPACE=10 WIDTH=370 HEIGHT=100 BORDER=0><BR><BR>Quan
quelqu'un vous appelle, une fenêtre de l'appel entrant apparaît sur
votre écran. Vous pouvez accepter, ignorer ou rejeter (<B>Accept</B>,
<B>Ignore</B> or <B>Reject) </B> l'appel en appuyant sur le bon
bouton.<BR><BR><IMG SRC="./img_tutorials/zoiper_image275516.png" NAME="graphics43" ALT="z45.png" ALIGN=BOTTOM HSPACE=20 VSPACE=10 WIDTH=350 HEIGHT=100 BORDER=0></P>
<P STYLE="margin-bottom: 0in"><BR>
</P>
<P STYLE="margin-bottom: 0in">&nbsp;</P>
<P STYLE="margin-bottom: 0.2in"><BR><a name=Gestion_du_repertoire><U><B>Gestion du répertoire</B></U></a></P>
<P STYLE="margin-bottom: 0in">Il est intéressant d'utiliser le
répertoire intégré. Il permet des appels rapides voire plus. Pour
démarrer le répertoire cliquez sur son bouton sur l'interface de
Zoiper.<BR><BR><IMG SRC="./img_tutorials/zoiper_image275517.png" NAME="graphics44" ALT="z46.png" ALIGN=BOTTOM HSPACE=20 VSPACE=10 WIDTH=325 HEIGHT=35 BORDER=0><BR><BR>Une
fois démarré vous pourrez accéder aux entrées du
répertoire.<BR><BR><FONT COLOR="#000080"><A HREF="zoiper_image275572.png" TARGET="_blank"><FONT COLOR="#000080"><IMG SRC="./img_tutorials/zoiper_image275676.png" NAME="graphics45" ALT="zz29.png" ALIGN=BOTTOM HSPACE=20 VSPACE=10 WIDTH=400 HEIGHT=300 BORDER=2></FONT></a></FONT><BR><BR>Si
vous voulez ajouter une nouvelle entrée, il suffit de cliquer sur le
bouton <B>New</B> et le formulaire nouvelle entrée (<B>New Entry)</B>
démarera. Vous n'avez qu'à remplir les données que vous voulez et
cliquer sur OK. Vous pouvez choisir la visibilité de cette entrée
dans la liste d'appel rapide.<BR><BR><FONT COLOR="#000080"><A HREF="zoiper_image275573.png" TARGET="_blank"><FONT COLOR="#000080"><IMG SRC="./img_tutorials/zoiper_image275677.png" NAME="graphics46" ALT="zz30.png" ALIGN=BOTTOM HSPACE=20 VSPACE=10 WIDTH=440 HEIGHT=250 BORDER=2></FONT></A></FONT><BR><BR>Après
avoir ajouté votre nouvelle entrée, vous pourrez l'éditer à
n'importe quel moment en appuyant sur le bouton <B>Edit</B>.<BR><BR><IMG SRC="./img_tutorials/zoiper_image275574.png" NAME="graphics47" ALT="edit.png" ALIGN=BOTTOM HSPACE=20 VSPACE=10 WIDTH=80 HEIGHT=30 BORDER=0><BR><BR>Vous
pouvez à tout moment utiliser la fonction appel rapide de Zoiper.
Vous y trouverez toutes les entrées et les activer dans la fontion
appel rapide.<BR><BR><IMG SRC="./img_tutorials/zoiper_image275575.png" NAME="graphics48" ALT="zz31.png" ALIGN=BOTTOM HSPACE=20 VSPACE=10 WIDTH=150 HEIGHT=200 BORDER=0></P>
<P STYLE="margin-bottom: 0in"><BR>
</P>
    </body>
</html>
