<%-- 
    Document   : confirm3
    Created on : 19 Mar, 2020, 9:47:07 AM
    Author     : Delphin Jhon
--%>
<%@page import="java.sql.*" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link rel="stylesheet" href="confirm3.css">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        
    </head>
    <body>
        <div class="background">
            <div class="formbox">
      <%
          try{
              String s="--";
          String num=(String)session.getAttribute("no");
          int cno=(Integer)session.getAttribute("otp");
          String msg=(String)session.getAttribute("description");
           String phno=(String)session.getAttribute("phno");
          Class.forName("oracle.jdbc.driver.OracleDriver");
         Connection cn=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","tiger");
			Statement st=cn.createStatement();
                     st.executeUpdate("insert into complaint values('"+num+"','"+cno+"','"+msg+"','--','--')");
                       // out.println("jkdjfh");
                        Statement st2=cn.createStatement();
                       // st2.executeUpdate("insert into complaint VALUES('"+num+"','"+cno+"','"+msg+"','"+s+"'--')");
                         Statement st1=cn.createStatement();
                        st1.executeUpdate("delete from empinfo where phonenumber='"+phno+"'");
                         }
          catch(Exception e)
                  {
                    
                     
                  }
                    
     %>
<div class="text"> STARK ELECTRONICS... your complaint has been registered succesfully.... you will get confirmation msg to your registered mobile number.<br>
             THANK YOU</div><form method="get" action="userwelcome1.jsp"><input type="submit" value="DONE" color="black" /></form>
            </div>
        </div>
 </body>
</html>
