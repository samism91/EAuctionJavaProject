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




    <script src="http://www.google.com/jsapi"></script>
    <script>
      google.load("jquery", "1.2.6");
    </script>
    <script type="text/javascript" src="faq.js"></script>


</head>
<body>

<div id="main_container">

    <%@include  file="topbar.jsp" %>
    <%@include file="header.jsp" %>

   <div id="main_content">

       <%@include file="menubar.jsp" %>


   


       



<!-- register -->







   <!-- end of register -->

   <div class="center_content" id="center_content" style="margin-left: 150px">
       <div id="page-wrap">

        <dl class="faq">
        	<dt>What is Auction Portal?</dt>
        	<dd class="answer"><div>It is the one stop platform where user can buy,sell and bid for his product.</div></dd>
        </dl>

        <dl class="faq">
        	<dt>Do I need to register as a buyer,seller or bidder?</dt>
        	<dd class="answer"><div>No you dont want to worry about this. We will manage all things for you.</div></dd>
        </dl>

        <dl class="faq">
        	<dt>How can I register the product?</dt>
        	<dd class="answer"><div>For this you have to first signup/signin and then go to registration menu and select product.</div></dd>
        </dl>

         <dl class="faq">
        	<dt>What is shipping charges?</dt>
        	<dd class="answer"><div>Well this is totally free for our members.</div></dd>
        </dl>
	</div>

   </div>

 


   </div><!-- end of main content -->



   <%@include file="footer.jsp" %>


</div>
<!-- end of main_container -->
</body>
</html>
