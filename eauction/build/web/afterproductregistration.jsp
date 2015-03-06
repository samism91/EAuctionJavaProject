<%-- 
    Document   : afterproductregistration
    Created on : Mar 2, 2012, 11:33:42 PM
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

<div id="main_container">

    <%@include  file="topbar.jsp" %>
    <%@include file="header.jsp" %>

   <div id="main_content">

       <%@include file="menubar.jsp" %>


   


       



<!-- register -->
<%
                        String p_type = (String)session.getAttribute("p_type");
                        String p_name = (String) session.getAttribute("p_name");
                        String p_prize = (String) session.getAttribute("p_prize");
                        String p_product = (String) session.getAttribute("p_product");
                        String p_detail = (String) session.getAttribute("p_detail");
                        String imagename = (String) session.getAttribute("itemName");
                        session.removeAttribute(p_type);
                         session.removeAttribute(p_name);
                         session.removeAttribute(p_prize);
                          session.removeAttribute(p_product);
                           session.removeAttribute(p_detail);
                         session.removeAttribute(imagename);




%>



   <!-- end of register -->
  You have successfully registered your product...

   <table border="1" class="table_width">
               <tr><td colspan="2"><center>Your Product Detail:</center></td></tr>
<tr><td>Type</td><td><%=p_type%></td></tr>
<tr><td>Name</td><td><%=p_name%></td></tr>
<tr><td>Prize</td><td><%=p_prize%></td></tr>
<tr><td>Condition</td><td><%=p_product%></td></tr>
<tr><td>Detail</td><td><%=p_detail%></td></tr>
<tr><td>Image</td><td><img alt="" height="250" width="250"  src="upload/<%=imagename%>"</td></tr>
           </table>
<!-- end of center content -->
 

   
</div>

   <!-- end of main content -->



   <%@include file="footer.jsp" %>
  
</div>
<!-- end of main_container -->
</body>
</html>

