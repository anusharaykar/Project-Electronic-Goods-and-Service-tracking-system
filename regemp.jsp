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
        <link rel="stylesheet" href="taken.css">
    </head>
    <body>
        <div class="background">
            <div class="formbox">
                <div class="buttonbox">
                    <form method="get" action="regemp2.jsp">
                <div class="label"> enter employee information:</div> 
                            <input class="inputfield" placeholder="Enter employee name" type="text" name="name" value="" size="30" required />
                    
                    <select class="inputfield" name="town" ><option>SIDDAPUR</option><option>SAGAR</option></select>
                  <input class="inputfield" placeholder="enter mobile number" type="text" name="mn" pattern="^(?:(?:\+|0{0,2})91(\s*[\-]\s*)?|pattern[0]?)?[789]\d{9}$" value="" size="30" required />
                    <select class="inputfield" name="special"><option>fan</option><option>washingmachine</option><option>refrigerator</option><option>mixergrinder</option></select>
                    <input class="submitbutton" type="submit" value="SUBMIT" name="submit" />
                </form>
                </div>
            </div>
        </div>
    </body>
</html>
