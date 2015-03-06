<%-- 
    Document   : check2
    Created on : Apr 16, 2012, 12:39:13 PM
    Author     : Samkit
--%>

<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
String name = request.getParameter("name").toString();
String data2 ="";
try{
           Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
           Connection con = DriverManager.getConnection("jdbc:odbc:register");
           Statement st=con.createStatement();
           ResultSet rs=st.executeQuery("select * from userregister  where Name='"+name+"'");
int count=0;
          while(rs.next())
          {

                   count++;
          }

                    if(count>0)
          {
             data2="User Name Not Available";
          }
          else
          {
                      data2= "User Name  Available";
          }
out.println(data2);
System.out.println(data2);
}
catch (Exception e) {
    e.printStackTrace();
System.out.println(e);
}
%>
    </body>
</html>
