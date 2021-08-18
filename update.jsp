 <%@page import="java.util.Random"%>
 <%@page import="java.sql.*"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.net.URL"%>
<%@page import="java.io.InputStreamReader"%>
<%@page import="java.io.BufferedReader"%>
<%@page import="java.net.HttpURLConnection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<html>
    <head><link rel="stylesheet" href="update.css"></head>
    <body>
        <div class="background"><div class="formbox">
        <% 
            try
            {
            String mob=request.getParameter("mob");
            String amount=request.getParameter("day");
            session.setAttribute("mob",mob);
            session.setAttribute("amount",amount);
            Class.forName("oracle.jdbc.driver.OracleDriver");
			Connection cn=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","tiger");
			Statement st=cn.createStatement();
			 PreparedStatement pr1=cn.prepareStatement("select * from complaint where cno='"+mob+"'");
			ResultSet rs1=pr1.executeQuery();
                        while(!rs1.next())
        {
        %><script>window.alert("invalid customer..");window.history.back();</script><%
                        }
                        PreparedStatement pr2=cn.prepareStatement("select * from complaint where cno='"+mob+"'");
                            ResultSet rs2=pr2.executeQuery();
                            while(rs2.next())
                           {
                           String status="paid";
                   // st.executeUpdate("update complaintcust set billingstatus='"+status+"',amountpaid='"+amount+"'where cno='"+mob+"'");
			Statement st2=cn.createStatement();
                        st2.executeUpdate("update complaint set billingstatus='"+status+"',amountpaid='"+amount+"'where cno='"+mob+"'");
                       
              String apiKey = "apikey=" + "ocg/z8xyuKw-o4L3aTusDI6JG1rO84T35YOHBxU500";
                String message = "&message=" +"thank you visit again";
                String sender = "&sender=" + "TXTLCL";
                String numbers = "&numbers=" + "8971967269";

                
                HttpURLConnection conn = (HttpURLConnection) new URL("https://api.textlocal.in/send/?").openConnection();
                String data = apiKey + numbers + message + sender;
                conn.setDoOutput(true);
                conn.setRequestMethod("POST");
                conn.setRequestProperty("Content-Length", Integer.toString(data.length()));
                conn.getOutputStream().write(data.getBytes("UTF-8"));
                final BufferedReader rd = new BufferedReader(new InputStreamReader(conn.getInputStream()));
                final StringBuffer stringBuffer = new StringBuffer();
                String line;
                while ((line = rd.readLine()) != null) {
                        stringBuffer.append(line);
                }
                rd.close();

          
            }
               %><div class="text">updated succesfully..</div><a href="employeewelcome.jsp"><input type="submit" class="buttonbox1" value="OKAY" /></a>
               <%
                  }
             catch(Exception e)
                     {
                    out.println("Error SMS "+e);

            }
            
    
            
                %>
            </div></div>
         
    </body>
</html>