<%-- 
    Document   : mixer grinder.jsp
    Created on : 28 Jan, 2020, 4:46:00 AM
    Author     : Delphin Jhon
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    <!--<img src="washing machine/download (1).jpeg" width="211" height="239" alt="download (1)"/>-->
    <link rel="stylesheet" href="mixergrinder.css">


    </head>
    <body>
        <div class="background"> 
            <div class="formbox"> 
                 
        <form action="taken.jsp" method="get">
            <% String id="mixergrinder";
            session.setAttribute("id",id);
            %>
            Leaking mixer grinder:<input type="checkbox" name="cmsg" value="leaking mixer grinder" /><br><br>
            Stuck buttons of the mixer grinder:<input type="checkbox" name="cmsg" value="stuck buttons of the mixer grinder" /><br><br>
            Slow moving blades:<input type="checkbox" name="cmsg" value="slow moving blades" /><br><br>
            Leakage from jar:<input type="checkbox" name="cmsg" value="leakage from jar" /><br><br>
            Shut off due to overload:<input type="checkbox" name="cmsg" value="shut off due to overload" /><br><br>
            Broken coupler:<input type="checkbox" name="cmsg" value="broken coupler" /><br><br>
            <!--Others:<input type="checkbox" name="" value="Other" /><br><br>-->
           others: <textarea name="description" rows="5" cols="20">
            </textarea>
            <input type="submit"  value="next" />
        </form> 
                 
            </div> 
        </div>
                    
    </body>
</html>
