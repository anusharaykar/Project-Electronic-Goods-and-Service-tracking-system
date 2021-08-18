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
    <head><link rel="stylesheet" href="remove.css"></head>
    <body>
        <div class="background"><div class="formbox">
        <%
        String name="";
            String mob=request.getParameter("mob");
            //String day=request.getParameter("day");
            session.setAttribute("mob",mob);
           // session.setAttribute("days",day);
              try {
                        Class.forName("oracle.jdbc.driver.OracleDriver");
			Connection cn=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","tiger");
			Statement st=cn.createStatement();
			
                        PreparedStatement pr1=cn.prepareStatement("select * from empinfo where phonenumber='"+mob+"'");
			ResultSet rs1=pr1.executeQuery();
                        while(!rs1.next())
        {%><script>window.alert("invalid number");window.history.back();</script><%
                        }
                        
                            PreparedStatement pr2=cn.prepareStatement("select * from empinfo where phonenumber='"+mob+"'");
			ResultSet rs2=pr2.executeQuery();
                        while(rs2.next())
                        {
                            st.executeUpdate("delete from empinfo where phonenumber='"+mob+"'");
                            //name=rs2.getString("empname");
                           //random=new Random().nextInt(999999);
                String apiKey = "apikey=" + "ocg/z8xyuKw-o4L3aTusDI6JG1rO84T35YOHBxU500";
                String message = "&message=" + "Your leave has been approved...  from STARK ELECTRONICS!! Electronic repair center";
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

              //.println(stringBuffer.toString());

                %><div class="text">Removed Successfully..</div><a href="adminwelcome.jsp"><input type="submit" class="buttonbox1" value="OKAY" /></a><%
                 }
            
            }


             catch (Exception e) {
                    out.println("Error SMS "+e);
//			return "Error "+e;
            }
    
            
                %></div></div>
         
    </body>
</html>