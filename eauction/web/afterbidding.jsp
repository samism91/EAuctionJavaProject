<%-- 
    Document   : afterbidding
    Created on : Apr 24, 2012, 9:10:53 PM
    Author     : Samkit
--%>

<%--
    Document   : index
    Created on : Dec 28, 2011, 9:31:09 PM
    Author     : Samkit
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">


<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=windows-1252" />
<title>Auction Web Portal </title>
<link rel="stylesheet" type="text/css" href="style.css" />
<!--[if IE 6]>
<link rel="stylesheet" type="text/css" href="iecss.css" />
<![endif]-->





</head>
<body>
<%
       String product_name = (String)session.getAttribute("product_name");
%>
<div id="main_container">

    <%@include  file="topbar.jsp" %>
    <%@include file="header.jsp" %>

   <div id="main_content">

       <%@include file="menubar.jsp" %>


       <%@include file="leftcontent.jsp" %>



<!-- register -->







   <!-- end of register -->
   <div class="center_content" id="center_content">
       <font size="2px" color="blue">

       You have successfull biddding on the item....<br/>
       
       <a href="setthebid.jsp?product_name=<%=product_name%>"> Return to the Bidding Page......</a>
       </font>
   </div>
<!-- end of center content -->

   <%@include file="rightcontent.jsp" %>


   </div><!-- end of main content -->



   <%@include file="footer.jsp" %>


</div>
<!-- end of main_container -->
</body>
</html>

