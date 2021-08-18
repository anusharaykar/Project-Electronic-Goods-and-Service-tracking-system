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
       String pass1=request.getParameter("pass1");
      String pass2=request.getParameter("pass2");
      session.setAttribute("no",mobilenum);
      
      try
      {
          if(pass1.equals(pass2))
          {

              Class.forName("oracle.jdbc.driver.OracleDriver");
			Connection cn=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","tiger");
			Statement st=cn.createStatement();
                        st.executeQuery("insert into userdetails values('"+name+"','"+mobilenum+"','"+pass1+"')");
    %><jsp:forward page="userwelcome1.jsp" /><%
          }
else
{
%><script>window.alert("mismatch of passwords....")
window.history.back();</script><%

}
}

      catch(Exception e)
      {
      out.print(e);
        %> <script>window.alert("enter valid mobilenum...")
window.history.back();</script><%
      }
    
       %>
    </body>
</html>
