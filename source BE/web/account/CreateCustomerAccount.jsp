<%-- 
    Author     : Baudet Aurélien
    Modified by : Vincent Destailleur
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page language="Java" import="java.util.*,servlet.account.*,DAO.transfertObject.CustomerTO,DAO.transfertObject.AddressTO,model.account.*" %>


<html>
    <head>
        <script language="JavaScript" src="javascripts/ajax_register_core.js"></script>
        <script language="JavaScript" src="javascripts/ajax_register_functionsTest.js"></script>
        
        <title>Creation of a new account</title>
        
        <link rel="stylesheet" href="style.css">
        
    </head>
    
    
    <body class="presentation"> 
        
        <%
            RegisterCustomerErrors errorC = new RegisterCustomerErrors();
            RegisterAddressErrors errorA = new RegisterAddressErrors();

            CustomerTO customerTO = new CustomerTO();
            AddressTO addressTO = new AddressTO();

            if (session.getAttribute("CreateCustomerAccount") != null) {
                if (session.getAttribute("CreateCustomerAccount") == "loginUsed" || session.getAttribute("CreateCustomerAccount") == "errorField") {
                    
                    customerTO = (CustomerTO) session.getAttribute("customerBegin");
                    addressTO = (AddressTO) session.getAttribute("addressBegin");

                    if (session.getAttribute("CreateCustomerAccount") == "loginUsed") {

                        out.print("<center><a style='color:#FF0000'>Compte déja enregistré, sélectionnez un autre login</a></center><hr>");
                    }

                    if (session.getAttribute("CreateCustomerAccount") == "errorField") {

                        errorC = (RegisterCustomerErrors) session.getAttribute("errorsCustomer");
                        errorA = (RegisterAddressErrors) session.getAttribute("errorsAddress");

                        out.print("<center><a style=color:#FF0000>Un ou plusieurs champs ont été mal rempli, corriger les champs en jaune</a></center></center><hr>");
                    }
                }

            }
        %>
        
        <center>Création d'un compte client</center><hr>              
        
        <br><br><div id="CreateCustomerAccount"></div><br>
        
        <!--#FF0000>>Red-->
        <!--#FFFF00>>Yellow-->       
        <center><a>* : Paramètres obligatoires </a></center><br>         
        
        <form name="RegisterForm" action="./CtrAccount" method="POST">
            <div id="register">  
                <table>
                    <tr align="left"><td><h2 align='left'>Renseignements :</h2></td></tr>
                    
                    
                    <tr align="left">
                        <td><a style="color: <%if (errorC.getErrorFirstName() == 1) {out.print("#FF0000");}%>">* Prénom (15 caractères max) : </a></td>
                        <td><input type="text" name="firstName" value="<%if (customerTO.getFirstName() != null) {out.print(customerTO.getFirstName());}%>" onKeyUp=verifLength(this.value,"firstName","15") align="left" />
                        <div id="firstName"></div></td>
                    </tr>
                    
                    
                    <tr align="left"><td><a style="color:<%if (errorC.getErrorLastName() == 1) {out.print("#FF0000");}%>">* nom (15 caractères max) : </a></td>
                        <td><input type="text" name="lastName" value="<%if (customerTO.getLastName() != null) {out.print(customerTO.getLastName());}%>"onKeyUp=verifLength(this.value,"lastName","15") align="left" />
                        <div id="lastName"></div></td>
                    </tr>
                    
                    
                    <tr align="left">
                        <td><a style="color:<%if (errorC.getErrorLogin() == 1) {out.print("#FF0000");}%>">* Nom d'utilisateur (15 caractères max) : </a></td>
                        <td><input type="text" name="login" value="<%if (customerTO.getLogin() != null) {out.print(customerTO.getLogin());}%>" onKeyUp=verifLogin(this.value) align="left"/>
                        <div id="freeLogin"></div></td>
                    </tr>
                    
                    
                    <tr align="left">
                        <td><a style="color:<%if (errorC.getErrorPassword() == 1) {out.print("#FF0000");}%>">* Mot de passe (8 min / 15 max) : </a></td>
                        <td><input type="password" name="password" value="<%if (customerTO.getPassword() != null) {out.print(customerTO.getPassword());}%>" onKeyUp=levelPassword(this.value,"levelPassword") align="left" />
                        <div id="levelPassword"></div></td>
                    </tr>
                    
                    
                    <tr align="left">
                        <td><a style="color:<%if (errorC.getErrorMail() == 1) {out.print("#FF0000");}%>">* Mail (Valide) : </a></td>
                        <td><input type="text" name="mail" value="<%if (customerTO.getMail() != null) {out.print(customerTO.getMail());}%>"  onKeyUp=verifMail(this.value) align="left" />
                        <div id="mail"></div></td>
                    </tr>
                    
                    
                    <tr align="left">
                        <td><a style="color:<%if (errorC.getErrorSexe() == 1) {out.print("#FF0000");}%>">* Sexe (M/F/X): </a></td>
                        <td><input type="text" name="sexe" value="<%if (customerTO.getSexe() != null) {out.print(customerTO.getSexe());}%>" onKeyUp=verifSexe(this.value) align="left" />
                        <div id="sexe"></div></td>
                    </tr>
                    
                    
                    <tr align="left">
                        <td><a style="color:<%if (errorC.getErrorBirthday() == 1) {out.print("#FF0000");}%>">* Date de Naissance (dd/mm/yyyy) : </a></td>
                        <td><input type="text" name="birthday" value="<%if (customerTO.getBirthday() != null) {out.print(customerTO.getBirthday());}%>" onKeyUp=verifLength(this.value,"birthday","10") align="left" />
                        <div id="birthday"></div></td>
                    </tr>
                    
                    
                    <tr align="left">
                        <td><a style="color:<%if (errorC.getErrorPhone() == 1) {out.print("#FF0000");}%>">Téléphone Fixe : </a></td>
                        <td><input type="text" name="phone" onKeyUp=verifLength(this.value,"phone","20") align="left" />
                        <div id="phone"></div></td>
                    </tr>
                    
                    
                    <tr align="left">
                        <td><a style="color:<%if (errorC.getErrorCellPhone() == 1) {out.print("#FF0000");}%>">Téléphone gsm : </a></td>
                        <td><input type="text" name="cellPhone" onKeyUp=verifLength(this.value,"cellPhone","20") align="left" />
                        <div id="cellPhone"></div></td>
                    </tr>
                    
                    
                    <%
                    //randomly generate two int in order to avoid bot attack
                    //int int1 = (int) ((float) Math.random() * 100);
                    //int int2 = (int) ((float) Math.random() * 100);
                    %>
                    
                    <!--
                    <tr align="left">
                        <td><a style="color:if (error.isErrorProtect() == 1) {out.print("#FF0000");>">* Anti-Bot : out.print(int1 + " + " + int2 + " =\n");</a></td>
                        <td><input type="text" name="protect" align="left" /></td>
                    </tr>
                    -->
                    
                    <!--zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz-->
                    
                    <tr align="left"><td><h2 align='left'>Adresse :</h2></td></tr>
                    
                    
                    <tr align="left">
                        <td><a style="color:<%if (errorA.getErrorStreet() == 1) {out.print("#FF0000");}%>">* Rue : </a></td>
                        <td><input type="text" name="street" value="<%if (addressTO.getStreet() != null) {out.print(addressTO.getStreet());}%>" onKeyUp=verifLength(this.value,"street","20") align="left" />
                        <div id="street"></div></td>
                    </tr>
                    
                    
                    <tr align="left">
                        <td><a style="color:<%if (errorA.getErrorPostalCode() == 1) {out.print("#FF0000");}%>">* Code postal : </a></td>
                        <td><input type="text" name="postalCode" value="<%if (addressTO.getPostalCode() != null) {out.print(addressTO.getPostalCode());}%>" onKeyUp=verifCP(this.value) align="left" />
                        <div id="CP"></div></td>
                    </tr>
                    
                    
                    <tr align="left">
                        <td><a style="color:<%if (errorA.getErrorCity() == 1) {out.print("#FF0000");}%>">* Ville : </a></td>
                        <td><input type="text" name="city" value="<%if (addressTO.getCity() != null) {out.print(addressTO.getCity());}%>" onKeyUp=verifLength(this.value,"city","20") align="left" />
                        <div id="city"></div></td>
                    </tr>
                    
                    
                    <tr align="left">
                        <td><a style="color:<%if (errorA.getErrorCountry() == 1) {out.print("#FF0000");}%>">* Pays : </a></td>
                        <td><input type="text" name="country" value="<%if (addressTO.getCountry() != null) {out.print(addressTO.getCountry());}%>" onKeyUp=verifLength(this.value,"country","20") align="left" />
                        <div id="country"></div></td>
                    </tr>
                    
                    
                    <!--zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz-->
                    
                    
                    <tr>
                        <td></td>
                        <td align="left">
                            <!--<input type="hidden" name="key1" value="<%//out.print(int1);%>"/>
                            <input type="hidden" name="key2" value="<%//out.print(int2);%>"/>-->
                            <input type="submit" value="Créer" name="Connexion" />
                        </td>
                    </tr>
                    
                </table>
            </div>
        </form>
        <br>
    </body>
</html>
