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
    //**************************************    
    //Test customerDAO.insertCustomer(customerTO)
    //**************************************
    
    String error ;
    CustomerTO customerTO = new CustomerTO();
    
    customerTO.setFirstName("anya");
    customerTO.setLastName("Dujmovic");
    customerTO.setLogin("anya");
    customerTO.setPassword("anya");
    customerTO.setMail("anya@gmail.com");
    customerTO.setSexe("F");
    customerTO.setBirthday("09/02/2009");
    customerTO.setPhone("03 20 00 56 12");
    customerTO.setCellPhone("06 68 97 12 32"); 
    
    //Test
    out.println(customerTO.getLastName());    
    
    CustomerDAOInterface customerDAO = MySqlDAOFactory.getCustomerDAO(); 
    
    error = customerDAO.insertCustomer(customerTO);    
    
    //Test
    out.println(error);    
    
    //**************************************    
    //Test customerDAO.customerDAO.isLoginUsed()
    //**************************************
    //qui serait assez fou pour mettre ceci en login aaaaabeb
    if (customerDAO.isLoginUsed("aaaaabeb") == true) {
            session.setAttribute("CreationAccount", "used");
            out.println("already used");
            }
    
%>
        
        <h2>Test customer insert</h2>
        
    </body>
</html>
