<%-- 
    Document   : signin
    Created on : Jan 28, 2012, 3:20:02 PM
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
<link rel="stylesheet" type="text/css" href="login-box.css" />

<!--[if IE 6]>
<link rel="stylesheet" type="text/css" href="iecss.css" />
<![endif]-->





</head>
<body>

<div id="main_container">

    <%@include  file="topbar.jsp" %>
    <%@include file="header.jsp" %>

   <div id="main_content">

       <%@include file="menubar.jsp" %>


   




<!-- register -->







   <!-- end of register -->

   <div class="center_content" style="margin-left: 150px">

<div style="padding: 0 0 0 50px;">


<div id="login-box">

<H2>Sign In</H2>
<form action="/eauction/signinServlet" method="post">
<div id="login-box-name"  style="margin-top:20px;">Email:</div>
<div id="login-box-field" style="margin-top:20px;">
<input type="email" name="email" required="required" class="form-login" title="Username" value="" size="30" maxlength="2048" /></div><BR/><BR/><BR/><BR/><BR/><BR/>
<div id="login-box-name" >Password:</div>
<div id="login-box-field">
<input name="password" type="password" class="form-login" title="Password" required="required" value="" size="30" maxlength="2048" /></div>
<br />
<BR/><BR/>
<br />
<br />
<input type="image" alt="submit form" src="images/login-btn.png" width="103" height="42" style="margin-left:90px;"/>

</form>
<BR/><BR/>
<br />
<br />
New User ? >> <a href="signup.jsp">Go To The User Registration Page</a>




</div>

</div>

        </div>






  <!-- end of center content -->

  


   </div><!-- end of main content -->



   <%@include file="footer.jsp" %>


</div>
<!-- end of main_container -->
</body>
</html>
