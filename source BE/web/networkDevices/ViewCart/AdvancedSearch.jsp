<%-- 
    Document   : AdvancedSearch
    Created on : 29 janv. 2009, 14:16:06
    Author     : vincent
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
        <table>
            <tr><td>Fast Search By Type :</td>
                <form method="post" action="CtrSearch">
                    <td><select name="type">
                            <option>routeur</option>
                            <option>switch</option>
                            <option>hub</option>
                    </select></td>
                    <td><input type="submit" value="Go">
                    <input type="hidden" name='typeSearch' value='searchByType'></td>
                </form>
            </tr>
        </table>
    </body>
</html>
