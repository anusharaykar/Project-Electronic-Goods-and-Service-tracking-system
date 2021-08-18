<%@page import="java.sql.*"%>
<html>
    <head><link rel="stylesheet" href="mycomplaints.css"></head>
    <body><div class="background">
            <div class="text">STARK ELECTRONICS </div>
            <div class="formbox">ELECTRONIC REPAIR CENTRE</div><%
                 try
          {
                        Class.forName("oracle.jdbc.driver.OracleDriver");
			Connection cn=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","tiger");
			Statement st=cn.createStatement();
			
                        PreparedStatement pr1=cn.prepareStatement("select * from empinfo");
			ResultSet rs1=pr1.executeQuery();
                        while(!rs1.next())
        {%><script>window.alert("no employees");window.history.back();</script><%
                        }
                        
                            PreparedStatement pr2=cn.prepareStatement("select * from empinfo");
			ResultSet rs2=pr2.executeQuery();

%><div class="tb"><table border="1" align="center">
                            <tr><th><font color="#aabb00">EMPNAME</th>
                                <th><font color="#aabb00">PLACE</th>
                                <th><font color="#aabb00">MOBILE NUMBER</th>
                                <th><font color="#aabb00">SPECIALIST IN</th></tr><%
                        while(rs2.next())
                        {
                          
                        %>
                            <tr><td><font color="white"><%=rs2.getString("empname")%></td>
                            <td><font color="white"><%=rs2.getString("adress")%></td>
                            <td><font color="white"><%=rs2.getString("phonenumber")%></td>
                            <td><font color="white"><%=rs2.getString("specialistin")%></td></tr>
                              
                        
                           <%
                       } %></table></div><%
}
                       catch(Exception e)
                       {
                       out.print(e);
                       }
                       
%></div></div>
    </body>
</html>