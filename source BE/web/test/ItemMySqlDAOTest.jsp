<%-- 
    Document   : TestItem
    Created on : 7 févr. 2009, 18:02:31
    Author     : vincent
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
"http://www.w3.org/TR/html4/loose.dtd">
<%@ page import="java.util.*" %>
<%@ page import="model.networkdevices.*" %>
<%@ page import="DAO.mySql.ItemMySqlDAO" %>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
      <h1>ResultQuery Page</h1>
      <h3>This is the result of your search</h3>
      <table border="1">
          <tr>              
          <th>Name</th>
          <th>Type</th>          
          <th>Description</th>          
          <th>Price</th>
          <th>AddCart</th>
          </tr>      
<%
        ItemMySqlDAO mySqlItemDAO = new ItemMySqlDAO();
        //test extractAllItems()
        ArrayList<Item> items = mySqlItemDAO.selectAllItemsTO() ;
        
        Iterator it = items.iterator();
        while(it.hasNext()){
            Item item = (Item) it.next();
%>
            <tr><td><%=item.getName()%></td>
                <td><%=item.getType()%></td>            
                <td><%=item.getDescription()%></td>
                <td><%=item.getUnitPrice()%></td>
                <td><form method='post' action="CtrCart">
                    <input type='submit' value='Add item to cart'>
                    <input type='hidden' name='id' value='<%=item.getId()%>'>
                    <input type="hidden" name='actionCart' value='add'>
                    </form></td></tr>
<%
            }                            
%>                       
            <tr><td>See your current cart : </td>
                <td><form name="ButtonCart" action="./DisplayCart.jsp" >
                    <input type="submit" value="Cart" />  
                    </form></td></tr>       
        </table>   
    </body>
</html>




<