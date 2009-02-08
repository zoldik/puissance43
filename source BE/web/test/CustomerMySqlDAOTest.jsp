<%-- 
    Document   : CustomerMySqlDAOTest
    Created on : 8 févr. 2009, 08:24:17
    Author     : vincent
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page language="Java" import="java.util.*,DAO.transfertObject.CustomerTO,DAO.interfaces.CustomerDAOInterface,DAO.factory.MySqlDAOFactory" %>

<html>
    <head>
        
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        
        <title>Test insert customer</title>
        
    </head>
    
    
    <body>     
    
    
<%
    String error ;
    CustomerTO customerTO = new CustomerTO();
    
    customerTO.setFirstName("Jean");
    customerTO.setLastName("Dujardin");
    customerTO.setLogin("OSS117");
    customerTO.setPassword("OSS117");
    customerTO.setMail("jean.dujardin@gmail.com");
    customerTO.setSexe("M");
    customerTO.setBirthday("19/03/1979");
    customerTO.setPhone("03 20 00 56 12");
    customerTO.setCellPhone("06 68 97 12 32");      
    
    //Test
    out.println(customerTO.getLastName());    
    
    CustomerDAOInterface customerDAO = MySqlDAOFactory.getCustomerDAO(); 
    
    error = customerDAO.insertCustomer(customerTO);    
    
    //Test
    out.println(error);    
%>
        
        <h2>Test customer insert</h2>
        
    </body>
</html>
