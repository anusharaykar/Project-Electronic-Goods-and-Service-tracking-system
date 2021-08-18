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
                    <form method="get" action="confirm1.jsp">
                <div class="label"> enter adress here:</div> 
                <% String des=request.getParameter("description");
               String cmsg=request.getParameter("cmsg");
               String msg=des+cmsg;
               session.setAttribute("description",msg);
               try {
                        String id=(String)session.getAttribute("id");
                        Class.forName("oracle.jdbc.driver.OracleDriver");
			Connection cn=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","tiger");
			Statement st=cn.createStatement();
			PreparedStatement pr=cn.prepareStatement("select * from empinfo where specialistin='"+id+"'");
                        
			ResultSet rs=pr.executeQuery();
                        if(!rs.next())
                        {
                           
        %><script> window.alert("service not avialable here at the moment...pls try later");
        window.history.back();
   </script>
        <%
                       }
                      PreparedStatement pr2=cn.prepareStatement("select * from empinfo where specialistin='"+id+"'");
                        
			ResultSet rs2=pr2.executeQuery();
                       while(rs2.next())
                       {
                          String phno=rs2.getString("phonenumber");
                          session.setAttribute("no2",phno);
}
        %><%
}
catch(Exception e)
{
out.print(e);
}
                %>
                            <input class="inputfield" placeholder="Enter housenumber" type="text" name="hno" value="" size="30" required />
                    <input class="inputfield" placeholder="Enter street/location" type="text" name="st" value="" size="30" required />
                    <select class="inputfield" name="town" ><option>SIDDAPUR</option><option>SAGAR</option></select>
                    <select class="inputfield" name="pc"><option>581355</option><option>577401</option></select>
                    <input class="submitbutton" type="submit" value="SUBMIT" name="submit" />
                </form>
                </div>
            </div>
        </div>
    </body>
</html>
