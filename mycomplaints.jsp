<%@page import="java.sql.*"%>
<html>
    <head><link rel="stylesheet" href="mycomplaints.css"</head>
    <body><div class="background">
            <div class="text">Stark Electronics</div>
            <div class="formbox">electronic repair center</div><%
        String mob=(String)session.getAttribute("no");
          try
          {
                        Class.forName("oracle.jdbc.driver.OracleDriver");
			Connection cn=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","tiger");
			Statement st=cn.createStatement();
			int count=0;
                        PreparedStatement pr1=cn.prepareStatement("select * from complaint where mobilenumber='"+mob+"'");
			ResultSet rs1=pr1.executeQuery();
                        while(!rs1.next())
        {%><script>window.alert("no complaints till now");window.history.back();</script><%
                        }
                        
                            PreparedStatement pr2=cn.prepareStatement("select * from complaint where mobilenumber='"+mob+"'");
			ResultSet rs2=pr2.executeQuery();
%><div class="tb"><table border="1" align="center">
                            <tr><th><font color="#aabb00">complaint number</th>
                                <th><font color="#aabb00">complaint specification</th>
                                <th><font color="#aabb00">complaint status</th>
                                <th><font color="#aabb00"> amount paid</th></tr><%
                        while(rs2.next())
                        {
                                if(count<=10){
                                    
                                %>
                            <tr><td><font color="white"><%=rs2.getString("cno")%></td>
                            <td><font color="white"><%=rs2.getString("complaintspecification")%></td>
                            <td><font color="white"><%=rs2.getString("billingstatus")%></td>
                            <td><font color="white"><%=rs2.getString("amountpaid")%></td></tr><%
                                count++;
                                }
                        }
                            %></table></div><%
                       }
                       catch(Exception e)
                       {
                       out.println(e);
                       }
                       
%></div></div>
    </body>
</html>