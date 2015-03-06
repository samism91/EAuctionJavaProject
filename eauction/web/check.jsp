<%-- 
    Document   : check
    Created on : Apr 16, 2012, 11:44:20 AM
    Author     : Samkit
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
       <%@ page import="java.sql.*" %>
<%
String email = request.getParameter("email").toString();

System.out.println(email);

String data ="";
try{
           Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
           Connection con = DriverManager.getConnection("jdbc:odbc:register");
           Statement st=con.createStatement();
           ResultSet rs=st.executeQuery("select * from userregister  where Email='"+email+"'");
int count=0;
          while(rs.next())
          {

                   count++;
          }

                    if(count>0)
          {
             data="Email Id Not Available";
          }
          else
          {
                      data="Email Id Available";
          }
out.println(data);
System.out.println(data);
}
catch (Exception e) {
    e.printStackTrace();
System.out.println(e);
}

%>

    </body>
</html>
