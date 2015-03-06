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

<link rel="stylesheet" type="text/css" href="style.css" />
     
	<script type="text/javascript" src="jquery.js"></script>
        <script>
       <%
String email = (String) session.getAttribute("email1");
out.print(email);
try{
if(email.equals(null)){
response.sendRedirect("signin.jsp");
}



}catch(Exception e){
    out.println(e);
    }
%>
    </script>
	
</head>
<body>
   
<div id="main_container">

    <%@include file="AdminArea.jsp" %>

   
   <div id="main_content">
 
      

       <%@include file="adminmenu.jsp" %>

      

 <div class="center_content" id="center_content" style="margin-left: 150px">
     <span style="font-size: 36px"> Welcome Admin!</span><br/>
     <div style="font-size: 20px">
  Choose Your operations:
  <li><a  href="adminaddproducts.jsp"><span>Add Products</span></a></li>
  <li><a  href="admineditproducts.jsp"><span>Edit Products</span></a></li>
  <li><a  href="adminaddusers.jsp" ><span>Add Users</span></a></li>
  <li><a  href="admineditusers.jsp" ><span>Edit Users</span></a></li>
  <li><a  href="admineditbids.jsp" ><span>Edit Bids</span></a></li>
     </div>


     
     


   </div>




   </div><!-- end of main content -->



   <%@include file="footer.jsp" %>


</div>
  
<!-- end of main_container -->
</body>
</html>
