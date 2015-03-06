<%-- 
    Document   : afterlogin
    Created on : Jan 29, 2012, 3:12:47 PM
    Author     : Samkit
--%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=windows-1252" />
<title>Auction Web Portal </title>
<link rel="stylesheet" type="text/css" href="style.css" />
<!--[if IE 6]>
<link rel="stylesheet" type="text/css" href="iecss.css" />
<![endif]-->
<script type="text/javascript" src="js/boxOver.js"></script>
</head>
<body>

<div id="main_container">

    <%@include  file="topbar.jsp" %>
    <%@include file="header.jsp" %>

   <div id="main_content">

       <%@include file="menubar.jsp" %>

   
   


      
       
       
       <div class="center_content" style="margin-left: 150px">
           <%
String uname = (String) session.getAttribute("UserName");
String email = (String) session.getAttribute("email");
String Password = (String) session.getAttribute("Password");
String Phone = (String) session.getAttribute("Phone");
String Country = (String) session.getAttribute("Country");
String UserType = (String) session.getAttribute("UserType");


           %>
           <div class="table_fonts"/>
           Welcome, <%out.println(uname);%>
           <table border="1" class="table_width">
               <tr><td colspan="2"><center>My Profile:</center></td></tr>
<tr><td>First Name:</td><td><%out.print(uname);%></td></tr>
<tr><td>Email:</td><td><%out.print(email);%></td></tr>
<tr><td>Password:</td><td><%out.print(Password);%></td></tr>
<tr><td>Phone:</td><td><%out.print(Phone);%></td></tr>
<tr><td>Country:</td><td><%out.print(Country);%></td></tr>

           </table>



       </div></div>
 <%@include file="rightcontent.jsp" %>


   </div><!-- end of main content -->



   <%@include file="footer.jsp" %>


<!-- end of main_container -->
</body>
</html>
