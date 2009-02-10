<%-- 
    Document   : CustomerMySqlDAOTest
    Created on : 8 févr. 2009, 08:24:17
    Author     : vincent
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page language="Java" import="java.util.*,DAO.transfertObject.*,DAO.interfaces.CustomerDAOInterface,DAO.factory.*" %>

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
    
    //Pas d'apostrophe dans les values sinon erreur dans sql 

    String error ;
    CustomerTO customerTO = new CustomerTO();
    
    customerTO.setFirstName("michel");
    customerTO.setLastName("Dujmovic");
    customerTO.setLogin("anya");
    customerTO.setPassword("anya");
    customerTO.setMail("anya@gmail.com");
    customerTO.setSexe("F");
    customerTO.setBirthday("09/02/2009");
    customerTO.setPhone("03 20 00 56 12");
    customerTO.setCellPhone("06 68 97 12 32"); 
    
    AddressTO addressTO = new AddressTO();
    
    addressTO.setStreet("12, avenue de jen ai plein le cul");
    addressTO.setPostalCode("53 464");
    addressTO.setCity("MARRE");
    addressTO.setCountry("FRANCE");
    
    //Test
    out.println(customerTO.getLastName());    
    
    DAOFactory daoFactory = DAOFactory.getDAOFactory(DAOFactory.MYSQL);

    CustomerDAOInterface customerDAO = daoFactory.getCustomerDAO();
    
    error = customerDAO.insertCustomer(customerTO, addressTO);    
    
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
