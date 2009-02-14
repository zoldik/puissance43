<%-- 
    Document   : Bills
    Created on : 14 févr. 2009, 18:22:56
    Author     : orthank
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h2>Hello World!</h2>
    </body>
    
    <form name="billdownload" action="./billtopdf" method="POST">
      <div id="register">  
        <table>
            <tr>
                <td align="center">
                    <input type="submit" value="Download" name="Connexion" />
                </td>
            </tr>
        </table>
     </div>
    </form>
</html>
