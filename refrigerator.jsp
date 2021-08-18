<%-- 
    Document   : refrigerator.jsp
    Created on : 28 Jan, 2020, 3:43:51 AM
    Author     : Delphin Jhon
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    <!--<img src="washing machine/rf.jpeg" width="500" height="500" alt="rf"/>-->
<link rel="stylesheet" href="refrigerator.css">
        
    </head>
    <body>
        <div class="background">
        <div class="formbox">
        
        <form action="taken.jsp" method="get">
            <% String id="refrigerator";
            session.setAttribute("id",id);
            %>
            
            Water leaking on the floor:<input type="checkbox" name="cmsg" value="water leaking on the floor" /><br><br>
            Freeze isn't cold enough:<input type="checkbox" name="cmsg" value="freeze isn't cold enough " /><br><br>
            Unit is cycling too often:<input type="checkbox" name="cmsg" value="unit is cycling too often" /><br><br>
            Ice maker is overflowing:<input type="checkbox" name="cmsg" value="ice maker is overflowing" /><br<br>
            Water dispenser not working:<input type="checkbox" name="cmsg" value="water dispenser not working" /><br><br>
            Fresh food compartment is warming up:<input type="checkbox" name="cmsg" value="fresh food compartment is warming up" /><br><br>
            <!--Others:<input type="checkbox" name="" value="other" /><br><br>-->
           others: <textarea name="description" rows="5" cols="20">
            </textarea>
            <input type="submit" value="next"   />
        </form>
        
        </div>
        </div>
        </body>                    
</html>
