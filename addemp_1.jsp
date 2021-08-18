<%-- 
    Document   : registerlogic
    Created on : 19 Mar, 2020, 11:06:03 AM
    Author     : Delphin Jhon
--%>
<%@page import="java.sql.*"%>
<%@page import="java.util.regex.*"%>
<%@page import="java.util.Scanner"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body><%
       String name=request.getParameter("name");
       String mobilenum=(request.getParameter("mn")); 
       String town=request.getParameter("town");
      String si=request.getParameter("special");
       try
      {
              Class.forName("oracle.jdbc.driver.OracleDriver");
			Connection cn=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","tiger");
			Statement st=cn.createStatement();
                        st.executeQuery("insert into empinfo values('"+name+"','"+town+"','"+mobilenum+"','"+si+"')");
    %><jsp:forward page="adminwelcome.jsp" /><%
          }

      catch(Exception e)
      {
      out.print(e);
        %> <script>window.alert("unable to add employee ...")
window.history.back();</script><%
      }
    
       %>
    </body>
</html>
