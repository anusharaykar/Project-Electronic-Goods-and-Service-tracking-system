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
    <body><%
        try
        {
         String empname=(String)session.getAttribute("employeename");
            String phno=(String)session.getAttribute("no");
            //String town=request.getParameter("town");
            int ran=(Integer)session.getAttribute("otp");
          String apiKey = "apikey=" + "ocg/z8xyuKw-o4L3aTusDI6JG1rO84T35YOHBxU500";
                String message = "&message=" + " STARK ELECTYRONICS..your complaint has been registered succesfully....your complaint no is:"+ran+" service provider name->"+empname+" and his/her mobile no is->"+phno;
                String sender = "&sender=" + "TXTLCL";
                String numbers = "&numbers=" + phno;

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
                rd.close();

              out.println(stringBuffer.toString());
        %> hello<jsp:forward page="confirm3.jsp" /> <%
            }catch (Exception e) {
                    out.println("Error SMS "+e);
//			return "Error "+e;
            }
    
            
        %>hello</body>
    </html>