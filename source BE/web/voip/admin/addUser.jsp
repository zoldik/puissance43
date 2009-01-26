<%-- 
    Document   : addUser
    Created on : 26 janv. 2009, 01:20:08
    Author     : francois
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Voip - Add User</title>
    </head>
    <body>
        <h2>VoIP admin - Add user</h2>
        
        <form method="post" action="source_BE/addLigne">
        <table>
        <tr>
            <td>Name</td><td><input type="text" name="name" ></td>
        </tr>
        <tr>
            <td>Username</td><td><input type="text" name="username"></td>
        </tr>
        <tr>
            <td>Mailbox</td><td><input type="text" name="mailbox"></td>
        </tr>
        <tr>
            <td>Context</td><td><input type="text" name="context"></td>
        </tr>
        <tr>
            <td>Type</td><td><input type="text" name="type"></td>
        </tr>
        <tr>
            <td>Host</td><td><input type="text" name="host"></td>
        </tr>
        
        </table>
        <input type="submit" value="submit" name="submit"/>
        
        </form>
        
    </body>
</html>
