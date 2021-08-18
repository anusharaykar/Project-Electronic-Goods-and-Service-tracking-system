<%-- 
    Document   : washing machine
    Created on : 27 Jan, 2020, 8:45:36 PM
    Author     : Delphin Jhon
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
       <!-- <img src="washing machine/images (1).jpeg" width="554" height="554" alt="images (1)"/>-->
         <link rel="stylesheet" href="washingmachine.css">


    </head>
    <body>
        <div class="background">
            <div class="formbox">
                
            
        <form action="taken.jsp"method="get">  
            <% String id="washingmachine";
            session.setAttribute("id",id);
            %>
            The machine wont fill the water: <input type="checkbox" name="cmsg" value="the machine wont fill water" /><br><br>
            The drum doesn't turn: <input type="checkbox" name="cmsg" value="the drum doesnt turn"  /><br><br>
            The machine stops midcycle:<input type="checkbox" name="cmsg" value="the machine stops midcycle" /><br><br>
            The washing machine is noisy:<input type="checkbox" name="cmsg" value="the washing machine is noisy" /><br><br>
            Water not draining from WM:<input type="checkbox" name="cmsg" value="the water not draining from the wm" /><br><br>
            Machine won't spin:<input type="checkbox" name="cmsg" value="machine wont spin" /><br><br>
           others:<textarea name="description" rows="5" cols="20">
            </textarea>
            <input type="submit"  value="next"  />
            
            
            
            
    
        </form>
                
            </div>
        </div>
    </body>
</html>
