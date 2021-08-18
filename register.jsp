<%-- 
    Document   : taken
    Created on : 19 Mar, 2020, 1:49:49 AM
    Author     : Delphin Jhon
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>OTP</title>
        <link rel="stylesheet" href="register.css">
<link href="https://fonts.googleapis.com/css2?family=Balsamiq+Sans&family=Open+Sans:wght@300;400&family=Source+Sans+Pro:wght@200&display=swap" rel="stylesheet">    <body>

    </head>
    <body>
        <div class="background">
            <div class="formbox">
                <div class="buttonbox">
                    <form method="get" action="registerlogic.jsp">
                <div class="label">Stark Electronics<br><div class="label1"> Create Your Account To Continue</div><BR></div>
               
                            <input class="inputfield" placeholder="Enter your name" type="text" name="name" value="" size="30" required />
                             <input class="inputfield" placeholder="enter mobile number" type="text" name="mn" pattern="^(?:(?:\+|0{0,2})91(\s*[\-]\s*)?|pattern[0]?)?[789]\d{9}$" value="" size="30" required />

                    <input class="inputfield" placeholder="Enter password" type="password" name="pass1" value="" size="30" required />
                    <input class="inputfield" placeholder="confirm password" type="password" name="pass2" value="" size="30" required />
                    <input class="submitbutton" type="submit" value="SUBMIT" name="submit" />
                </form>
                </div>
            </div>
        </div>
    </body>
</html>
