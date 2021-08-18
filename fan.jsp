<%-- 
    Document   : fan
    Created on : 27 Jan, 2020, 9:21:28 PM
    Author     : Delphin Jhon
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    <!--<img src="washing machine/download.jpeg" width="225" height="225" alt="download"/>-->
    <link rel="stylesheet" href="fan.css">

    </head>
    <body>
        <div class="background"> 
        <div class="formbox"> 
              
        <form action="taken.jsp" method="get">
            <% String id="fan";
            session.setAttribute("id",id);
            %>
            Stuck on one speed:<input type="checkbox" name="cmsg" value="stuck on one speed" /><br><br> 
            
            Fan doesnt turn on: <input type="checkbox" name="cmsg" value="fan doesnt turn on" /><br><br>
            Flickering light:<input type="checkbox" name="cmsg" value="flickering light" /><br><br>
            Noisy operations:<input type="checkbox" name="cmsg" value="noisy operation" /><br><br>
            Wobbly ceiling fan:<input type="checkbox" name="cmsg" value="wobbly ceiling fan" /><br><br>
            Fan light doesnt function:<input type="checkbox" name="cmsg" value="fan light doesnt function" /><br><br>
            <!--Others:<input type="checkbox" name="others" value="other" /><br><br>-->
           others: <textarea name="description" rows="5" cols="20">
            </textarea>
            <input type="submit"  value="next"  />
        </form>
           
        </div>
        </div>
    </body>           
</html>
