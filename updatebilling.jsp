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
                    <form method="get" action="update.jsp">
                <div class="label">UPDATE BILLING:</div> 
                            <input class="inputfield" placeholder="Enter complaintnumber"  type="text" name="mob" value="" size="30" required />
                    <input class="inputfield" placeholder="Enter amount" type="number" name="day" value="" size="30" required />
                                       <input class="submitbutton" type="submit" value="update" name="submit" />
                </form>
                </div>
            </div>
        </div>
    </body>
</html>
