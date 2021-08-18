<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>login logic Page</title>
    </head>
    <body>
        <% 
            try
            {
			String num=request.getParameter("uid");
                        String pass=request.getParameter("password");
                        session.setAttribute("no",num);
	
                        int logc=2;
                        
                        if(num.equals("12345") && pass.equals("admin"))
                            
                        {
                            %> <jsp:forward page="adminwelcome.jsp"/> <%
                        }
                           if(num.equals("12345") && pass.equals("employee"))
                            
                        {
                            %> <jsp:forward page="employeewelcome.jsp"/> <%
                        }
                                  
			Class.forName("oracle.jdbc.driver.OracleDriver");
			Connection cn=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","tiger");
			Statement st=cn.createStatement();
			PreparedStatement pr=cn.prepareStatement("select * from userdetails");
			ResultSet rs=pr.executeQuery();
			while(rs.next())
			{
				if(rs.getString("phonenumber").equals(num))
				{
					if(rs.getString("password").equals(pass))
					{
						%>
						<jsp:forward page="userwelcome1.jsp?number=123"/>
						<%
							logc=0;
							break;
					}
						else
						{
%><script> window.alert("invalid username or password");
    window.history.back();</script>
<%--<jsp:forward page="firstpage.jsp"/>--%>
							<%
							logc=1;
							break;
			 
           
						}
				}
			}
	
					if(logc==2)
					{
						%><script>window.alert("invalid user");window.history.back();</script>
											<%
		 
	
					}
                                        rs.close();
                                        pr.close();
					st.close();
					cn.close();
                    }             


                        catch(SQLException s)
                        {
                                out.print(s);

                        }
                        catch(ClassNotFoundException c)
                        {
                                %> class not found exception <%
                        }
catch (Exception e) {
                    out.println("Error SMS "+e);
			//return "Error "+e;
            }
               %>
 

    </body>
</html>
