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
    <body>
        <% int random;
            String hno=request.getParameter("hno");
            String street=request.getParameter("st");
            String town=request.getParameter("town");
            String pc=request.getParameter("pc");
            String  num=(String)session.getAttribute("no");
            session.setAttribute("house",hno);
            session.setAttribute("street",street);
            session.setAttribute("town",town);
            session.setAttribute("pincode",pc);
            String id=(String)session.getAttribute("id");
            String mn=(String)session.getAttribute("no");
            String phno="";
            String empname="";
                                try {
                        Class.forName("oracle.jdbc.driver.OracleDriver");
			Connection cn=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","tiger");
			Statement st=cn.createStatement();
			
                        PreparedStatement pr1=cn.prepareStatement("select * from empinfo where adress='"+town+"'");
			ResultSet rs1=pr1.executeQuery();
                        while(!rs1.next())
        {%><script>window.alert("employees are not available at this place for a moment");window.history.back();</script><%
                        }
                        
                            PreparedStatement pr2=cn.prepareStatement("select * from empinfo where specialistin='"+id+"'");
			ResultSet rs2=pr2.executeQuery();
                        while(rs2.next())
                        {
                                empname=rs2.getString("empname");
                                phno=rs2.getString("phonenumber");
                                break;
                        }
                        random=new Random().nextInt(999999);
                session.setAttribute("otp",random);
                session.setAttribute("employeename",empname);
                session.setAttribute("phno", phno);
                String apiKey = "apikey=" +"ocg/z8xyuKw-o4L3aTusDI6JG1rO84T35YOHBxU500";
                String message = "&message=" + "requesting for your service:where complaint no is"+random+"adress information:housenumnber is->"+hno+"...street->"+street+"...town/city->"+town+"....pincode is->"+ pc+"....customer mobile number is->"+num;
                String sender = "&sender=" + "TXTLCL";
                String numbers = "&numbers=" + phno;
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
                %><jsp:forward page="confirm2.jsp" /><%  }
                    catch (Exception e) {
                    out.println("Error SMS "+e);
			//return "Error "+e;
            }
    
            
            %>
         hello   
    </body>
</html>