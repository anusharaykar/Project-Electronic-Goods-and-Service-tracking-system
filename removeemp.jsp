<%-- 
    Document   : taken
    Created on : 19 Mar, 2020, 1:49:49 AM
    Author     : Delphin Jhon
--%>
<%@page import="java.sql.*" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>otp page</title>
        <link rel="stylesheet" href="holiday.css">
    </head>
    <body>
        <div class="background">
            <div class="formbox">
                <div class="buttonbox">
                    <form method="get" action="remove.jsp">
                <div class="label">  REMOVE EMPLOYEE:</div> 
                            <input class="inputfield" placeholder="Enter employee mobilenumber" pattern="^(?:(?:\+|0{0,2})91(\s*[\-]\s*)?|pattern[0]?)?[789]\d{9}$" type="text" name="mob" value="" size="30" required />
<!--                    <input class="inputfield" placeholder="Enter days" type="number" name="day" value="" size="30" required />-->
                                       <input class="submitbutton" type="submit" value="APPLY" name="submit" />
                </form>
                </div>
            </div>
        </div>
    </body>
</html>
