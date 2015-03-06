<%-- 
    Document   : checkpassword
    Created on : Apr 16, 2012, 12:55:02 PM
    Author     : Samkit
--%>

<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
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
String password = request.getParameter("pwd").toString();
int passwordlength = password.length();
if(passwordlength<8){
String weak = "Your Password is weak. Minimum length is 8. ";
out.println(weak);
}
if(passwordlength>8 && passwordlength<10){
String weak = "Your Password is Good.";
out.println(weak);
}
if(passwordlength>10){
String weak = "Your Password is Strong.";
out.println(weak);
}


%>
    </body>
</html>
