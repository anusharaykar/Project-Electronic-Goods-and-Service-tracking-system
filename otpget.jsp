
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
<html> <body><div class="background">
        <div class="formbox">
             <%
        try
        {   int log=2;
            String num=request.getParameter("uid");
            
             int random=new Random().nextInt(999999);
             session.setAttribute("ran",random);
             session.setAttribute("num",num);
                        Class.forName("oracle.jdbc.driver.OracleDriver");
			Connection cn=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","tiger");
			Statement st=cn.createStatement();
			PreparedStatement pr=cn.prepareStatement("select * from userdetails");
			ResultSet rs=pr.executeQuery();
		while(rs.next())
                {
				if(rs.getString("phonenumber").equals(num))
				{
                                    log=0;
                     String apiKey = "apikey=" + "ocg/z8xyuKw-o4L3aTusDI6JG1rO84T35YOHBxU500";
                String message = "&message=" + "otp for resetting password is:"+random;
                String sender = "&sender=" + "TXTLCL";
                String numbers = "&numbers=" + num;

                // Send data
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
                rd.close();%><jsp:forward page="resetpass.jsp" /><%
                    }
               }

            
        if(log==2)
        {
    %><script>window.alert("user does not exist");
    window.history.back();
</script><%
}

        
                }
        catch (Exception e) {
                    out.println("Error SMS "+e);
//			return "Error "+e;
            }
    
            
        %>
        </div></div></body>
    </html>
