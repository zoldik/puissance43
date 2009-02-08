<%-- 
    Author     : Baudet Aurélien
    Modified by : Vincent Destailleur
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page language="Java" import="java.util.*,servlet.account.*,model.account.*" %>

<link rel="stylesheet" href="style.css">

<html>
    <head>
        <script language="JavaScript" src="javascripts/ajax_register.js"></script>
        <title>Création of a new account</title>
        <%--<link rel="stylesheet" type="text/css" href="style.css" />--%>
    </head>
    
    <body class="presentation">        
        
        <%
            //Need to set the attribut now otherwise there is an internal error server 500 during the get. 
            session.setAttribute("CreationAccount", "default");

            //String param  = request.getParameter("Creation");
            String account = session.getAttribute("CreationAccount").toString();

            RegisterErrors error = new RegisterErrors();

            if (account.compareTo("default") == 0) {
                out.print("<center>Création d'un compte client</center><hr>");
            } else if (account.compareTo("used") == 0) {
                out.print("<center>Compte déja enregistré, sélectionnez un autre login</center><hr>");
            } else if (account.compareTo("failed") == 0) {
                error = (RegisterErrors) session.getAttribute("error");
                out.print("<center>Un ou plusieurs champs ont été mal rempli, vérifiez les informations rentrées</center><hr>");
            } else if (account.toString().compareTo("registered") == 0) {
                out.print("<center>Demande de compte transmise, consultez votre boîte mail pour valider votre compte</center><hr>");
            }
        %>
        
        <br><br><div id="CreateUser"></div><br>
        <!--#FF0000>>Red-->
        <!--#FFFF00>>Yellow-->       
        <center><a style="color:#FFFF00">* : Paramètres obligatoires </a></center><br>        
        
        <form name="RegisterForm" action="./CtrAccount" method="POST">
            <div id="register">  
                <table>
                    <tr align="left">
                        <td><a style="color:
                                   <%if (error.getErrorFirstName() == 1) {
                out.print("#FFFF00");
            }%>">* Prénom (15 caractères max) : </a></td>
                        <td><input type="text" name="xfirstName" onKeyUp=verifLength(this.value,"firstName","15") align="left" /><div id="firstName"></div></td>
                    </tr>
                    
                    
                    <tr align="left">
                        <td><a style="color:<%if (error.getErrorLastName() == 1) {
                out.print("#FFFF00");
            }%>">* nom (15 caractères max) : </a></td>
                        <td><input type="text" name="lastName" onKeyUp=verifLength(this.value,"lastName","15") align="left" /><div id="lastName"></div></td>
                    </tr>
                    
                    
                    <tr align="left">
                        <td><a style="color:<%if (error.getErrorLogin() == 1) {
                out.print("#FFFF00");
            }%>">* Nom d'utilisateur (15 caractères max) : </a></td>
                        <td><input type="text" name="login" onKeyUp=verifLogin(this.value) align="left"/><div id="freeLogin"></div></td>
                    </tr>
                    
                    
                    <tr align="left">
                        <td><a style="color:<%if (error.getErrorPassword() == 1) {
                out.print("#FFFF00");
            }%>">* Mot de passe (8 min / 15 max) : </a></td>
                        <td><input type="password" name="password" onKeyUp=levelPassword(this.value) align="left" /><div id="levelPassword"></div></td>
                    </tr>
                    
                    
                    <tr align="left">
                        <td><a style="color:<%if (error.getErrorMail() == 1) {
                out.print("#FFFF00");
            }%>">* Mail (Valide) : </a></td>
                        <td><input type="text" name="mail" onKeyUp=verifMail(this.value) align="left" /><div id="mail"></div></td>
                    </tr>
                    
                    
                    <tr align="left">
                        <td><a style="color:<%if (error.getErrorSexe() == 1) {
                out.print("#FFFF00");
            }%>">* Sexe (M/F/X): </a></td>
                        <td><input type="text" name="sexe" onKeyUp=verifSexe(this.value) align="left" /><div id="sexe"></div></td>
                    </tr>
                    
                    
                    <tr align="left">
                        <td><a style="color:<%if (error.getErrorBirthday() == 1) {
                out.print("#FFFF00");
            }%>">* Date de Naissance (dd/mm/yyyy) : </a></td>
                        <td><input type="text" name="naissance" onKeyUp=verifLength(this.value,"birthday","10") align="left" /><div id="birthday"></div></td>
                    </tr>
                    
                    
                    <tr align="left">
                        <td><a style="color:<%if (error.getErrorPhone() == 1) {
                out.print("#FFFF00");
            }%>">Téléphone Fixe : </a></td>
                        <td><input type="text" name="fixe" onKeyUp=verifLength(this.value,"phone","20") align="left" /><div id="phone"></div></td>
                    </tr>
                    
                    
                    <tr align="left">
                        <td><a style="color:<%if (error.getErrorCellPhone() == 1) {
                out.print("#FFFF00");
            }%>">Téléphone gsm : </a></td>
                        <td><input type="text" name="gsm" onKeyUp=verifLength(this.value,"gsm","20") align="left" /><div id="gsm"></div></td>
                    </tr>
                    
                    
                    <%
            //randomly generate two int in order to avoid boot attack
            int int1 = (int) ((float) Math.random() * 100);
            int int2 = (int) ((float) Math.random() * 100);
                    %>
                    
                    <!--
                    <tr align="left">
                        <td><a style="color://if (error.isErrorProtect() == 1) {
                out.print("#FF0000");
            //>">* Anti-Bot : //out.print(int1 + " + " + int2 + " =\n");//</a></td>
                        <td><input type="text" name="protect" align="left" /></td>
                    </tr>
                    -->
                    <tr>
                        <td></td>
                        <td align="left">
                            <input type="hidden" name="key1" value="<%out.print(int1);%>"/>
                            <input type="hidden" name="key2" value="<%out.print(int2);%>"/>
                            <input type="submit" value="Créer" name="Connexion" />
                        </td>
                    </tr>
                    
                </table>
            </div>
        </form>
        <br>
    </body>
</html>
