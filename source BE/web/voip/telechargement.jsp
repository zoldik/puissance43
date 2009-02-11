<%-- 
    Document   : telechargement
    Created on : 13 janv. 2009, 19:07:33
    Author     : francois
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
<P STYLE="margin-bottom: 0.2in"><U><B>IAX2 Accounts Management</B></U></P>
<P STYLE="margin-bottom: 0.2in"><B>Accessing Options Form</B><BR><BR>The
creation of an IAX2 account goes through the configuration form of
Zoiper. In order to access it you can right-click on Zoiper’s
interface and click on the <I>Options</I>.<BR><BR><IMG SRC="http://www.asteriskguru.com/tutorials/zoiper_image275540.png" NAME="graphics1" ALT="zz2.png" ALIGN=BOTTOM HSPACE=20 VSPACE=10 WIDTH=283 HEIGHT=183 BORDER=0><BR><BR>There
is an <B>Options</B> button on the Zoiper’s interface. You can
start configuration form from there too.<BR><BR><IMG SRC="http://www.asteriskguru.com/tutorials/zoiper_image275476.png" NAME="graphics2" ALT="z11.png" ALIGN=BOTTOM HSPACE=20 VSPACE=10 WIDTH=480 HEIGHT=73 BORDER=0><BR><BR>You
can press &quot;<B>Alt+O</B>&quot; to access the <B>Options screen</B>
too.</P>
<P STYLE="margin-bottom: 0in">&nbsp;</P>
<P STYLE="margin-bottom: 0in"><BR><B>Adding IAX2 account</B></P>
<P STYLE="margin-bottom: 0in">When the form starts you should click
on the &quot;<I>Add new IAX account</I>&quot; label in the navigation
menu to the left.<BR><IMG SRC="http://www.asteriskguru.com/tutorials/zoiper_image275541.png" NAME="graphics3" ALT="zz3.png" HSPACE=20 VSPACE=10 WIDTH=410 HEIGHT=429 BORDER=0><BR><BR>A
new sub-form will prompt you for name for this account.<BR><BR><A HREF="http://www.asteriskguru.com/tutorials/zoiper_image275542.png" TARGET="_blank"><FONT COLOR="#000080"><IMG SRC="http://www.asteriskguru.com/tutorials/zoiper_image275663.png" NAME="graphics4" ALT="zz4.png" HSPACE=20 VSPACE=10 WIDTH=572 HEIGHT=182 BORDER=2></FONT></A><BR><BR>Type
a name and click on the <B>OK </B>button to create the account.<BR><BR>The
new entry will appear in the navigation menu to the left. Click on it
to continue the configuration.<BR><BR><IMG SRC="http://www.asteriskguru.com/tutorials/zoiper_image275543.png" NAME="graphics5" ALT="zz5.png" ALIGN=BOTTOM HSPACE=20 VSPACE=10 WIDTH=418 HEIGHT=483 BORDER=0><BR><BR>On
the right side of the navigation menu you will be able to specify the
options for the account. You’ll have to enter the hostname or the
IP address of the Asterisk server (or other VoIP server) that you are
going to use. In our case this is <I>172.16.10.2</I> After that enter
the <I>account name</I> and <I>secret</I> that we put on the IAX2
account (<I>iax.zoiper2</I> &amp; <I>my_pass123</I>).<BR><BR><A HREF="http://www.asteriskguru.com/tutorials/zoiper_image275544.png" TARGET="_blank"><FONT COLOR="#000080"><IMG SRC="http://www.asteriskguru.com/tutorials/zoiper_image275664.png" NAME="graphics6" ALT="zz6.png" HSPACE=20 VSPACE=10 WIDTH=532 HEIGHT=262 BORDER=2></FONT></A><BR><BR>Enter
a caller id and name and click on the Apply button to activate the
changes.<BR><BR>There are additional options that you might want to
configure. In order to view the advanced options for the current
account you should enable the checkbox with label <B>&quot;</B><I><B>Show
advanced options</B></I><B>&quot; </B>which is located on the bottom
left corner.<BR><BR><IMG SRC="http://www.asteriskguru.com/tutorials/zoiper_image275545.png" NAME="graphics7" ALT="zz7.png" ALIGN=BOTTOM HSPACE=20 VSPACE=10 WIDTH=249 HEIGHT=76 BORDER=0><BR><BR>When
you do this you will be able to set the advanced options. Set the
context and the voicemail extension. You will be able to select if
Zoiper should register this account upon application’s
start-up.<BR><BR><A HREF="http://www.asteriskguru.com/tutorials/zoiper_image275546.png" TARGET="_blank"><FONT COLOR="#000080"><IMG SRC="http://www.asteriskguru.com/tutorials/zoiper_image275665.png" NAME="graphics8" ALT="zz8.png" ALIGN=BOTTOM HSPACE=20 VSPACE=10 WIDTH=633 HEIGHT=266 BORDER=2></FONT></A><BR><BR>When
you are ready click on the <B>Apply</B> button.</P>
<P STYLE="margin-bottom: 0in"><BR>
</P>
<P STYLE="margin-bottom: 0in">&nbsp;</P>
<P STYLE="margin-bottom: 0.2in"><BR><B>Registering IAX2 account</B></P>
<P STYLE="margin-bottom: 0in">You should select the proper account
from the drop down menu in the bottom of Zoiper’s
interface.<BR><BR><IMG SRC="http://www.asteriskguru.com/tutorials/zoiper_image275547.png" NAME="graphics9" ALT="zz9.png" ALIGN=BOTTOM HSPACE=20 VSPACE=10 WIDTH=572 HEIGHT=150 BORDER=0><BR><BR>When
you are ready with this click on <B>Register</B> button.</P>
<P STYLE="margin-bottom: 0in"><BR>
</P>
<P STYLE="margin-bottom: 0in">&nbsp;</P>
<P STYLE="margin-bottom: 0in"><BR><B>Deleting IAX2 account</B></P>
<P STYLE="margin-bottom: 0in">You should go to the Options form. From
the navigation menu select the account that you want to
delete.<BR><BR><IMG SRC="http://www.asteriskguru.com/tutorials/zoiper_image275548.png" NAME="graphics10" ALT="zz10.png" ALIGN=BOTTOM HSPACE=20 VSPACE=10 WIDTH=519 HEIGHT=207 BORDER=0><BR><BR>Press
the delete button of your keyboard and confirm the deletion on the
Confirmation dialog.</P>
<P STYLE="margin-bottom: 0in"><BR>
</P>
<P STYLE="margin-bottom: 0in">&nbsp;</P>
<P STYLE="margin-bottom: 0in"><BR><U><B>SIP Accounts
Management</B></U><BR><BR><B>Accessing Options Form</B></P>
<P STYLE="margin-bottom: 0in">The creation of a SIP account goes
through the configuration form of Zoiper. In order to access it you
can right-click on Zoiper’s interface and click on the
<I>Options</I>.<BR><BR><IMG SRC="http://www.asteriskguru.com/tutorials/zoiper_image275549.png" NAME="graphics11" ALT="zz2.png" ALIGN=BOTTOM HSPACE=20 VSPACE=10 WIDTH=322 HEIGHT=254 BORDER=0><BR><BR>There
is an Options button on the Zoiper’s interface. You can start
configuration form from there too.<BR><BR><IMG SRC="http://www.asteriskguru.com/tutorials/zoiper_image275486.png" NAME="graphics12" ALT="z11.png" ALIGN=BOTTOM HSPACE=20 VSPACE=10 WIDTH=517 HEIGHT=64 BORDER=0><BR><BR>You
can press &quot;<B>Alt+O</B>&quot; to access the <B>Options screen</B>
too.</P>
<P STYLE="margin-bottom: 0in"><BR>
</P>
<P STYLE="margin-bottom: 0in">&nbsp;</P>
<P STYLE="margin-bottom: 0.2in"><BR><B>Adding SIP account</B></P>
<P STYLE="margin-bottom: 0in">You should go to the Options form. When
the form starts you should click on the &quot;<I>Add new SIP account</I>&quot;
label in the navigation menu to the left.<BR><BR><IMG SRC="http://www.asteriskguru.com/tutorials/zoiper_image275550.png" NAME="graphics13" ALT="zz11.png" ALIGN=BOTTOM HSPACE=20 VSPACE=10 WIDTH=404 HEIGHT=451 BORDER=0><BR><BR>A
new sub-form will prompt you for name for this account.<BR><BR><A HREF="http://www.asteriskguru.com/tutorials/zoiper_image275551.png" TARGET="_blank"><FONT COLOR="#000080"><IMG SRC="http://www.asteriskguru.com/tutorials/zoiper_image275666.png" NAME="graphics14" ALT="zz12.png" ALIGN=BOTTOM HSPACE=20 VSPACE=10 WIDTH=576 HEIGHT=128 BORDER=2></FONT></A><BR><BR>Type
a name and click on the &quot;<B>OK</B>&quot; button to create the
account.<BR><BR>The new entry will appear in the navigation menu to
the left. <BR>Click on it to continue the configuration.<BR><BR><IMG SRC="http://www.asteriskguru.com/tutorials/zoiper_image275552.png" NAME="graphics15" ALT="zz13.png" ALIGN=BOTTOM HSPACE=20 VSPACE=10 WIDTH=368 HEIGHT=467 BORDER=0><BR><BR>On
the right side of the navigation menu you will be able to specify the
options for the account. You’ll have to enter the hostname or the
IP address of the Asterisk server (or other VoIP server) that you are
going to use. In our case this is <I>172.16.20.2</I> After that enter
the <I>account name</I> and <I>secret</I> that we put on the SIP
account (<I>sip.zoiper2</I> &amp; <I>my_pass234</I>). Enter a caller
id and name and click on the Apply button to activate the
changes.<BR><BR><A HREF="http://www.asteriskguru.com/tutorials/zoiper_image275553.png" TARGET="_blank"><FONT COLOR="#000080"><IMG SRC="http://www.asteriskguru.com/tutorials/zoiper_image275667.png" NAME="graphics16" ALT="zz14.png" ALIGN=BOTTOM HSPACE=20 VSPACE=10 WIDTH=649 HEIGHT=257 BORDER=2></FONT></A><BR><BR>There
are additional options that you might want to configure. In order to
view the advanced options for the current account you should enable
the checkbox with label &quot;<I>Show advanced options</I>&quot;
which is located on the bottom left corner.<BR><BR><IMG SRC="http://www.asteriskguru.com/tutorials/zoiper_image275554.png" NAME="graphics17" ALT="zz7.png" ALIGN=BOTTOM HSPACE=20 VSPACE=10 WIDTH=286 HEIGHT=55 BORDER=0><BR><BR>When
you do this you will be able to set the advanced options. Set
outbound proxy, if necessary, or the voicemail extension. You will be
able to select if Zoiper should register this account upon
application’s start-up. Check if you need to use a STUN
server.<BR><BR><A HREF="http://www.asteriskguru.com/tutorials/zoiper_image275555.png" TARGET="_blank"><FONT COLOR="#000080"><IMG SRC="http://www.asteriskguru.com/tutorials/zoiper_image275668.png" NAME="graphics18" ALT="zz15.png" ALIGN=BOTTOM HSPACE=20 VSPACE=10 WIDTH=652 HEIGHT=303 BORDER=2></FONT></A><BR><BR>When
you are ready click on the <B>Apply</B> button.</P>
<P STYLE="margin-bottom: 0in"><BR>
</P>
<P STYLE="margin-bottom: 0in">&nbsp;</P>
<P STYLE="margin-bottom: 0.2in"><BR><B>Registering SIP accounts</B></P>
<P STYLE="margin-bottom: 0in">You should select the proper account
from the drop down menu in the bottom of Zoiper’s interface. When
you are ready with this click on <B>Register</B> button.<BR><BR><IMG SRC="http://www.asteriskguru.com/tutorials/zoiper_image275556.png" NAME="graphics19" ALT="zz16.png" ALIGN=BOTTOM HSPACE=20 VSPACE=10 WIDTH=548 HEIGHT=89 BORDER=0></P>
<P STYLE="margin-bottom: 0in"><BR>
</P>
<P STYLE="margin-bottom: 0in">&nbsp;</P>
<P STYLE="margin-bottom: 0.2in"><BR><B>Deleting SIP account</B></P>
<P STYLE="margin-bottom: 0in">You should go to the Options form. From
the navigation menu select the account that you want to delete.<BR>Press
the delete button of your keyboard and confirm the deletion on the
Confirmation dialog.<BR><BR><IMG SRC="http://www.asteriskguru.com/tutorials/zoiper_image275557.png" NAME="graphics20" ALT="zz17.png" ALIGN=BOTTOM HSPACE=20 VSPACE=10 WIDTH=681 HEIGHT=164 BORDER=0></P>
<P STYLE="margin-bottom: 0in"><BR>
</P>
<P STYLE="margin-bottom: 0in">&nbsp;</P>
<P STYLE="margin-bottom: 0.2in"><BR><U><B>Audio configuration</B></U></P>
<P STYLE="margin-bottom: 0in">Before making any calls it is
recommended to reconfigure your audio options. To do this you should
enter the configuration form.</P>
<P STYLE="margin-bottom: 0in"><BR>
</P>
<P STYLE="margin-bottom: 0in">&nbsp;</P>
<P STYLE="margin-bottom: 0.2in"><BR><B>Accessing Options Form</B></P>
<P STYLE="margin-bottom: 0in">In order to access the <B>Options Form</B>
you can right-click on Zoiper’s interface and click on the
<I>Options</I>.<BR><BR><IMG SRC="http://www.asteriskguru.com/tutorials/zoiper_image275558.png" NAME="graphics21" ALT="zz2.png" ALIGN=BOTTOM HSPACE=20 VSPACE=10 WIDTH=333 HEIGHT=226 BORDER=0><BR><BR>There
is an Options button on the Zoiper’s interface. You can start
configuration form from there too.<BR><BR><IMG SRC="http://www.asteriskguru.com/tutorials/zoiper_image275495.png" NAME="graphics22" ALT="z11.png" ALIGN=BOTTOM HSPACE=20 VSPACE=10 WIDTH=562 HEIGHT=62 BORDER=0><BR><BR>You
can press &quot; <B>Alt+O</B>&quot; to access the <B>Options screen</B>
too.</P>
<P STYLE="margin-bottom: 0in"><BR>
</P>
<P STYLE="margin-bottom: 0in">&nbsp;</P>
<P STYLE="margin-bottom: 0.2in"><BR><B>Configuring Audio Settings</B></P>
<P STYLE="margin-bottom: 0in">Select “<B>Audio Devices</B>” label
from the navigation menu located in the left.<BR><BR><IMG SRC="http://www.asteriskguru.com/tutorials/zoiper_image275559.png" NAME="graphics23" ALT="zz18.png" ALIGN=BOTTOM HSPACE=20 VSPACE=10 WIDTH=411 HEIGHT=456 BORDER=0><BR><BR>Select
the devices that you are going to use for audio input and output. On
my computer I’m using Microsoft Sound Mapper, so I’ll select it.
When you are ready with this choose if you want to enable the <I>Echo
Cancellation</I>...<BR><BR><A HREF="http://www.asteriskguru.com/tutorials/zoiper_image275560.png" TARGET="_blank"><FONT COLOR="#000080"><IMG SRC="http://www.asteriskguru.com/tutorials/zoiper_image275669.png" NAME="graphics24" ALT="zz19.png" ALIGN=BOTTOM HSPACE=20 VSPACE=10 WIDTH=576 HEIGHT=279 BORDER=2></FONT></A><BR>...
and click on <B>Apply</B> button.</P>
<P STYLE="margin-bottom: 0in"><BR>
</P>
<P STYLE="margin-bottom: 0in">&nbsp;</P>
<P STYLE="margin-bottom: 0.2in"><BR><U><B>Protocol’s configuration</B></U></P>
<P STYLE="margin-bottom: 0in">Concerning the protocols there are some
simple configuration options. Most of them are about the
communication port on which the protocol works. To reconfigure these
you should enter the configuration form and enable the advanced
options.</P>
<P STYLE="margin-bottom: 0in"><BR>
</P>
<P STYLE="margin-bottom: 0in">&nbsp;</P>
<P STYLE="margin-bottom: 0.2in"><BR><B>Accessing Options Form</B></P>
<P STYLE="margin-bottom: 0in">Right-click on Zoiper’s interface and
click on the <I>Options</I>.<BR><BR><IMG SRC="http://www.asteriskguru.com/tutorials/zoiper_image275561.png" NAME="graphics25" ALT="zz2.png" ALIGN=BOTTOM HSPACE=20 VSPACE=10 WIDTH=273 HEIGHT=214 BORDER=0><BR><BR>There
is an Options button on the Zoiper’s interface. You can start
configuration form from there too.<BR><BR><IMG SRC="http://www.asteriskguru.com/tutorials/zoiper_image275499.png" NAME="graphics26" ALT="z11.png" ALIGN=BOTTOM HSPACE=20 VSPACE=10 WIDTH=591 HEIGHT=63 BORDER=0><BR><BR>You
can press &quot;<B>AltO</B>&quot; to access the <B>Options screen</B>
too.</P>
<P STYLE="margin-bottom: 0in"><BR>
</P>
<P STYLE="margin-bottom: 0in">&nbsp;</P>
<P STYLE="margin-bottom: 0.2in"><BR><B>IAX2 configuration</B></P>
<P STYLE="margin-bottom: 0in">Click on the &quot;<B>IAX options</B>&quot;
label in the navigation menu.<BR><BR><IMG SRC="http://www.asteriskguru.com/tutorials/zoiper_image275562.png" NAME="graphics27" ALT="zz20.png" ALIGN=BOTTOM HSPACE=20 VSPACE=10 WIDTH=452 HEIGHT=466 BORDER=0><BR><BR>Now
you will be able to specify different IAX2 port.<BR><BR><A HREF="http://www.asteriskguru.com/tutorials/zoiper_image275563.png" TARGET="_blank"><FONT COLOR="#000080"><IMG SRC="http://www.asteriskguru.com/tutorials/zoiper_image275670.png" NAME="graphics28" ALT="zz21.png" ALIGN=BOTTOM HSPACE=20 VSPACE=10 WIDTH=664 HEIGHT=115 BORDER=2></FONT></A></P>
<P STYLE="margin-bottom: 0in"><BR>
</P>
<P STYLE="margin-bottom: 0in">&nbsp;</P>
<P STYLE="margin-bottom: 0.2in"><BR><B>SIP configuration</B></P>
<P STYLE="margin-bottom: 0in">Click on the &quot;<B>SIP options</B>&quot;
label in the navigation menu.<BR><BR><IMG SRC="http://www.asteriskguru.com/tutorials/zoiper_image275564.png" NAME="graphics29" ALT="zz22.png" ALIGN=BOTTOM HSPACE=20 VSPACE=10 WIDTH=280 HEIGHT=446 BORDER=0><BR><BR>Now
you will be able to specify different SIP port.<BR><BR><A HREF="http://www.asteriskguru.com/tutorials/zoiper_image275565.png" TARGET="_blank"><FONT COLOR="#000080"><IMG SRC="http://www.asteriskguru.com/tutorials/zoiper_image275671.png" NAME="graphics30" ALT="zz23.png" ALIGN=BOTTOM HSPACE=20 VSPACE=10 WIDTH=605 HEIGHT=108 BORDER=2></FONT></A></P>
<P STYLE="margin-bottom: 0in"><BR>
</P>
<P STYLE="margin-bottom: 0in">&nbsp;</P>
<P STYLE="margin-bottom: 0.2in"><BR><B>RTP configuration</B></P>
<P STYLE="margin-bottom: 0in">Click on the &quot;<B>RTP options</B>&quot;
label in the navigation menu.<BR><BR><IMG SRC="http://www.asteriskguru.com/tutorials/zoiper_image275566.png" NAME="graphics31" ALT="zz24.png" ALIGN=BOTTOM HSPACE=20 VSPACE=10 WIDTH=299 HEIGHT=439 BORDER=0><BR><BR>Now
you will be able to specify different RTP port.<BR><BR><A HREF="http://www.asteriskguru.com/tutorials/zoiper_image275567.png" TARGET="_blank"><FONT COLOR="#000080"><IMG SRC="http://www.asteriskguru.com/tutorials/zoiper_image275672.png" NAME="graphics32" ALT="zz25.png" ALIGN=BOTTOM HSPACE=20 VSPACE=10 WIDTH=614 HEIGHT=133 BORDER=2></FONT></A><BR><BR>There
are also &quot;<I>Advanced RTP options</I>&quot;<BR><BR><A HREF="http://www.asteriskguru.com/tutorials/zoiper_image275568.png" TARGET="_blank"><FONT COLOR="#000080"><IMG SRC="http://www.asteriskguru.com/tutorials/zoiper_image275673.png" NAME="graphics33" ALT="zz26.png" ALIGN=BOTTOM HSPACE=20 VSPACE=10 WIDTH=661 HEIGHT=218 BORDER=2></FONT></A></P>
<P STYLE="margin-bottom: 0in"><BR>
</P>
<P STYLE="margin-bottom: 0in">&nbsp;</P>
<P STYLE="margin-bottom: 0.2in"><BR><B>STUN configuration</B></P>
<P STYLE="margin-bottom: 0in">Click on the &quot;<B>STUN options</B>&quot;
label in the navigation menu.<BR><BR><IMG SRC="http://www.asteriskguru.com/tutorials/zoiper_image275569.png" NAME="graphics34" ALT="zz27.png" ALIGN=BOTTOM HSPACE=20 VSPACE=10 WIDTH=302 HEIGHT=466 BORDER=0><BR><BR>If
your computer is behind NAT it is recommended to use a STUN server.
To do these first enable STUN support. Then you should specify the
hostname or the IP address of the STUN server. You may change the
default STUN port too.<BR><BR><A HREF="http://www.asteriskguru.com/tutorials/zoiper_image275570.png" TARGET="_blank"><FONT COLOR="#000080"><IMG SRC="http://www.asteriskguru.com/tutorials/zoiper_image275674.png" NAME="graphics35" ALT="zz27-1.png" ALIGN=BOTTOM HSPACE=20 VSPACE=10 WIDTH=634 HEIGHT=167 BORDER=2></FONT></A><BR><BR>You
can specify custom refresh period for your STUN server. To do this
edit this setting.<BR><BR><A HREF="http://www.asteriskguru.com/tutorials/zoiper_image275571.png" TARGET="_blank"><FONT COLOR="#000080"><IMG SRC="http://www.asteriskguru.com/tutorials/zoiper_image275675.png" NAME="graphics36" ALT="zz28.png" ALIGN=BOTTOM HSPACE=20 VSPACE=10 WIDTH=606 HEIGHT=122 BORDER=2></FONT></A></P>
<P STYLE="margin-bottom: 0in"><BR>
</P>
<P STYLE="margin-bottom: 0in">&nbsp;</P>
<P STYLE="margin-bottom: 0in"><BR><U><B>Usage</B></U></P>
<P STYLE="margin-bottom: 0in">In order to dial a number from your
Zoiper you just have to type it in and press enter or the <B>Dial</B>
button.<BR><BR><IMG SRC="http://www.asteriskguru.com/tutorials/zoiper_image275510.png" NAME="graphics37" ALT="z39.png" ALIGN=BOTTOM HSPACE=20 VSPACE=10 WIDTH=552 HEIGHT=55 BORDER=0><BR><BR>The
other way of dialing is through the <B>numpad</B>. After dialing the
number press enter or the <B>Dial</B> button.<BR><BR><IMG SRC="http://www.asteriskguru.com/tutorials/zoiper_image275511.png" NAME="graphics38" ALT="z40.png" ALIGN=BOTTOM HSPACE=20 VSPACE=10 WIDTH=337 HEIGHT=266 BORDER=0><BR><BR>In
order to hang-up a call you can simply click on the <B>Hang-up</B>
button.<BR><IMG SRC="http://www.asteriskguru.com/tutorials/zoiper_image275512.png" NAME="graphics39" ALT="z41.png" ALIGN=BOTTOM HSPACE=20 VSPACE=10 WIDTH=519 HEIGHT=52 BORDER=0><BR><BR>In
order to hold the call for a moment <I>(the other party won’t hear
you)</I> just push the <B>Hold</B> button.<BR><BR><IMG SRC="http://www.asteriskguru.com/tutorials/zoiper_image275513.png" NAME="graphics40" ALT="z42.png" ALIGN=BOTTOM HSPACE=20 VSPACE=10 WIDTH=519 HEIGHT=51 BORDER=0><BR><BR>If
you are already in a call you can transfer the call to another
number. To do this you should press the <B>Transfer</B>
button.<BR><IMG SRC="http://www.asteriskguru.com/tutorials/zoiper_image275514.png" NAME="graphics41" ALT="z43.png" ALIGN=BOTTOM HSPACE=20 VSPACE=10 WIDTH=522 HEIGHT=53 BORDER=0><BR><BR>When
you do this the Transfer dialog will prompt you for the extension to
which you want to transfer your call. When ready with typing, press
<B>OK</B> to finish the transaction.<BR><BR><IMG SRC="http://www.asteriskguru.com/tutorials/zoiper_image275515.png" NAME="graphics42" ALT="z44.png" ALIGN=BOTTOM HSPACE=20 VSPACE=10 WIDTH=654 HEIGHT=159 BORDER=0><BR><BR>When
someone ring on your extension an incoming call dialog will appear on
your screen. You can <B>Accept</B>, <B>Ignore</B> or <B>Reject</B>
the call by pressing the appropriate button.<BR><BR><IMG SRC="http://www.asteriskguru.com/tutorials/zoiper_image275516.png" NAME="graphics43" ALT="z45.png" ALIGN=BOTTOM HSPACE=20 VSPACE=10 WIDTH=586 HEIGHT=166 BORDER=0></P>
<P STYLE="margin-bottom: 0in"><BR>
</P>
<P STYLE="margin-bottom: 0in">&nbsp;</P>
<P STYLE="margin-bottom: 0.2in"><BR><U><B>Address Book Management</B></U></P>
<P STYLE="margin-bottom: 0in">It is useful to use the integrated
Address Book. It supports quick dial and more. To start the address
book click its button on the Zoiper’s interface.<BR><BR><IMG SRC="http://www.asteriskguru.com/tutorials/zoiper_image275517.png" NAME="graphics44" ALT="z46.png" ALIGN=BOTTOM HSPACE=20 VSPACE=10 WIDTH=522 HEIGHT=66 BORDER=0><BR><BR>Once
it starts you will see the current entries in the book.<BR><BR><A HREF="http://www.asteriskguru.com/tutorials/zoiper_image275572.png" TARGET="_blank"><FONT COLOR="#000080"><IMG SRC="http://www.asteriskguru.com/tutorials/zoiper_image275676.png" NAME="graphics45" ALT="zz29.png" ALIGN=BOTTOM HSPACE=20 VSPACE=10 WIDTH=623 HEIGHT=513 BORDER=2></FONT></A><BR><BR>If
you want to add new entry just click on <B>New</B> button and the <B>New
Entry</B> form will be started. Just fill the data you want and click
on OK. You can choose if this entry should be visible in the quick
dial list.<BR><BR><A HREF="http://www.asteriskguru.com/tutorials/zoiper_image275573.png" TARGET="_blank"><FONT COLOR="#000080"><IMG SRC="http://www.asteriskguru.com/tutorials/zoiper_image275677.png" NAME="graphics46" ALT="zz30.png" ALIGN=BOTTOM HSPACE=20 VSPACE=10 WIDTH=640 HEIGHT=376 BORDER=2></FONT></A><BR><BR>After
you add the new entry you will be able to edit it. To do this you
should select the entry and click on the <B>Edit</B> button.<BR><BR><IMG SRC="http://www.asteriskguru.com/tutorials/zoiper_image275574.png" NAME="graphics47" ALT="edit.png" ALIGN=BOTTOM HSPACE=20 VSPACE=10 WIDTH=173 HEIGHT=48 BORDER=0><BR><BR>You
can always use the quick dial function of Zoiper. There you will see
all entries that are in your Address Book and enabled into the quick
dial.<BR><BR><IMG SRC="http://www.asteriskguru.com/tutorials/zoiper_image275575.png" NAME="graphics48" ALT="zz31.png" ALIGN=BOTTOM HSPACE=20 VSPACE=10 WIDTH=243 HEIGHT=304 BORDER=0></P>
<P STYLE="margin-bottom: 0in"><BR>
</P>


        <div>
       </div>
    </body>
</html>
