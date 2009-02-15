<%-- 
    Document   : index
    Created on : 2 janv. 2009, 12:48:01
    Author     : vincent
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
"http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Search</title>
    </head>
    <body>
        <table>
            <tr><td>Accèder à l'ensemble des équipements de notre catalogue : </td>
                <td><form method="post" action="CtrSearch">
                        <input type="submit" value="Go">
                        <input type="hidden" name='typeSearch' value='searchAll'>
                </form></td>
            </tr>
        </table>
        
        <br><br>
        
        <table>
            <tr><td>Rechercher des équipements par type :</td>
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
        
        <br><br>
        
        <table>    
            <tr><td>Voir votre panier : </td>
                <td><form name="ButtonCart" action="./DisplayCart.jsp" >
                        <input type="submit" value="Panier" />  
                </form></td>
            </tr>
        </table>
        
        
    </body>
</html>
