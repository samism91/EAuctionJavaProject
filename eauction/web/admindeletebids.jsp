<%-- 
    Document   : admindeleteproducts
    Created on : Apr 19, 2012, 3:25:39 PM
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

<div id="main_container">

    <%@include  file="topbar.jsp" %>

   <div id="main_content">



       <%@include file="adminmenu.jsp" %>

       <%@include file="leftcontent.jsp" %>

   <%@page import="java.sql.*"%>
<%

String no=request.getParameter("id");
String user_name=request.getParameter("user_name");
String date=request.getParameter("date");
String time=request.getParameter("time");
System.out.println(no);

try {
Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
Connection conn = DriverManager.getConnection("jdbc:odbc:register");
Statement st = conn.createStatement();
st.executeUpdate("DELETE FROM bidding WHERE Product_Name = '"+no+"' AND User_Name='"+user_name+"' AND BidDate='"+date+"' AND BidTime='"+time+"' ");
response.sendRedirect("admineditbids.jsp");
}
catch(Exception e){}
%>
   


   </div><!-- end of main content -->



   <%@include file="footer.jsp" %>


</div>
<!-- end of main_container -->
</body>
</html>
