^<%-- 
    Document   : firstpage
    Created on : 19 Mar, 2020, 12:09:48 AM
    Author     : Delphin John
--%>


        
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
     
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="./firstpage.css">
        <title> Stark Electronics Loginpage</title>
<link href="https://fonts.googleapis.com/css2?family=Balsamiq+Sans&family=Open+Sans:wght@300;400&family=Source+Sans+Pro:wght@200&display=swap" rel="stylesheet">    <body>
        
        <div class="background">
            <div class="formbox">
                <div class="label">Stark Electronics<br><br><div class="label1"> Welcome to Electronic Goods Repair Center</div><BR></div>
                <form method=get action="login.jsp" class="input">
                    <input class="inputfield" placeholder="Enter mobilenumber" type="text" name="uid" value="" size="30" required />
                    <input class="inputfield" placeholder="Enter password" type="password" name="password" value="" size="30" required />
                      <input class="submitbutton" type="submit" value="LOGIN" name="submit" />
                      <br>
                      <div class="signupbutton"> <a href="register.jsp" >Signin</a></div>
                      <div class="ref"><a href="forgot.jsp" >Forgot Password?</a>
<!--                      <div class="ref2" >   <a href="forgot.jsp" >forgot password?</a></div>               </form>-->
                
            </div>
        </div>
        
    </body>
</html>

    </body>
</html>
