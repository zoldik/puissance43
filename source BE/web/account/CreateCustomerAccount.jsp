<%-- 
    Author     : Baudet Aurélien
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page language="Java" import="java.util.*,servlet.account.*,model.account.*" %>

<link rel="stylesheet" href="style.css">

<html>
    <head>
        <title>Création of a new account</title>
        <%--<link rel="stylesheet" type="text/css" href="style.css" />--%>
    </head>
    <body class="presentation">
        
        <script language="JavaScript" src="ajax_register.js"></script>
        
        <%
            
            //randomly generate two int in order to avoid boot attack
            int int1 = (int) ((float) Math.random() * 100);
            int int2 = (int) ((float) Math.random() * 100);
                
        
            //String param  = request.getParameter("Creation");
            String account = session.getAttribute("Creation").toString();
            ErrorRegister error = new ErrorRegister();
            if (account.compareTo("S'enregistrer") == 0) {
                out.print("<center>Création d'un compte</center><hr>");
            } else if (account.compareTo("used") == 0) {
                out.print("<center>Compte déja enregistré, sélectionnez un autre login</center><hr>");
            } else if (account.compareTo("fail") == 0) {
                error = (ErrorRegister) session.getAttribute("error");
                out.print("<center>Un ou plusieurs champs ont été mal rempli, vérifiez les informations rentrées</center><hr>");
            } else if (account.toString().compareTo("true") == 0) {
                out.print("<center>Consultez votre boîte mail pour valider votre compte</center><hr>");
            }
        %>
        
        <br><br><div id="CreateUser"></div><br>
        
        <center><a style="color:#FF0000">* : Paramètre obligatoire</a></center><br>
        <form name="Register" action="./CreateAccount" method="POST">
            <div id="register">  
                <table>
                    <tr align="left">
                        <td><a style="color:<%if (error.isErrorname() == 1) {
                out.print("#FF0000");
            }%>">* Nom (15 caractères max) : </a></td>
                        <td><input type="text" name="nom" onKeyUp=veriflength(this.value,"name","15") align="left" /><div id="name"></div></td>
                    </tr>
                    <tr align="left">
                        <td><a style="color:<%if (error.isErrorsurname() == 1) {
                out.print("#FF0000");
            }%>">* Prénom (15 caractères max) : </a></td>
                        <td><input type="text" name="prenom" onKeyUp=veriflength(this.value,"surname","15") align="left" /><div id="surname"></div></td>
                    </tr>
                    <tr align="left">
                        <td><a style="color:<%if (error.isErrorlog() == 1) {
                out.print("#FF0000");
            }%>">* Nom d'utilisateur (15 caractères max) : </a></td>
                        <td><input type="text" name="login" onKeyUp=verifPseudo(this.value) align="left"/><div id="freelogin"></div></td>
                    </tr>
                    <tr align="left">
                        <td><a style="color:<%if (error.isErrorpw() == 1) {
                out.print("#FF0000");
            }%>">* Mot de passe (8 min / 15 max) : </a></td>
                        <td><input type="password" name="mdp" onKeyUp=levelMdp(this.value) align="left" /><div id="levelmdp"></div></td>
                    </tr>
                    <tr align="left">
                        <td><a style="color:<%if (error.isErrormail() == 1) {
                out.print("#FF0000");
            }%>">* Mail (Valide) : </a></td>
                        <td><input type="text" name="mail" onKeyUp=verifMail(this.value) align="left" /><div id="mail"></div></td>
                    </tr>
                    <tr align="left">
                        <td><a style="color:<%if (error.isErrorsexe() == 1) {
                out.print("#FF0000");
            }%>">* Sexe (M/F/X): </a></td>
                        <td><input type="text" name="sexe" onKeyUp=verifSex(this.value,"sex","1") align="left" /><div id="sex"></div></td>
                    </tr>
                    <tr align="left">
                        <td><a style="color:<%if (error.isErrorborn() == 1) {
                out.print("#FF0000");
            }%>">* Date de Naissance : </a></td>
                        <td><input type="text" name="naissance" onKeyUp=veriflength(this.value,"birthday","10") align="left" /><div id="birthday"></div></td>
                    </tr>
                    <tr align="left">
                        <td><a style="color:<%if (error.isErrorfixe() == 1) {
                out.print("#FF0000");
            }%>">Téléphone Fixe : </a></td>
                        <td><input type="text" name="fixe" onKeyUp=veriflength(this.value,"phone","20") align="left" /><div id="phone"></div></td>
                    </tr>
                    <tr align="left">
                        <td><a style="color:<%if (error.isErrorgsm() == 1) {
                out.print("#FF0000");
            }%>">Téléphone gsm : </a></td>
                        <td><input type="text" name="gsm" onKeyUp=veriflength(this.value,"gsm","20") align="left" /><div id="gsm"></div></td>
                    </tr>
                    <tr align="left">
                        <td><a style="color:<%if (error.isErrorProtect() == 1) {
                out.print("#FF0000");
            }%>">* Anti-Bot : <%out.print(int1 + " + " + int2 + " =\n");%></a></td>
                        <td><input type="text" name="protect" align="left" /></td>
                    </tr>
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
