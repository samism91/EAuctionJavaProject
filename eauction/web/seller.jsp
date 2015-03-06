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
<script type="text/javascript" src="jquery-ui-1.8.17.custom/js/jquery-1.7.1.min.js"></script>
<link rel="stylesheet" href="jquery-ui-1.8.17.custom/development-bundle/themes/base/jquery.ui.all.css"/>
<script type="text/javascript" src="jquery-ui-1.8.17.custom/development-bundle/ui/jquery.ui.core.js"></script>
<script type="text/javascript" src="jquery-ui-1.8.17.custom/development-bundle/ui/jquery.ui.widget.js"></script>
<script type="text/javascript" src="jquery-ui-1.8.17.custom/development-bundle/ui/jquery.ui.datepicker.js"></script>
<link rel="stylesheet" type="text/javascript" href="jquery-ui-1.8.17.custom/development-bundle/demos/demos.css"/>
	<script>
	$(function() {
		$( "#datepicker" ).datepicker();
	});
	</script>
</head>
<body>

<div id="main_container">

    <%@include  file="topbar.jsp" %>
    <%@include file="header.jsp" %>

   <div id="main_content">

       <%@include file="menubar.jsp" %>


    <div class="crumb_navigation">
    Navigation: <span class="current">Home</span>

    </div>


       <%@include file="leftcontent.jsp" %>



<!-- register -->







   <!-- end of register -->

   <div class="center_content">
   <div class="center_title_bar">Seller's Registration Form</div></br></br>
   <div class="prod_box_big">
     <div class="top_prod_box_big"></div>
     <div class="center_prod_box_big">
       <div class="contact_form">
         <form action="/eauction/SellerServlet" method="post">
           <div class="form_row">
            <label class="contact"><strong>Seller_ID:</strong></label>
           <input type="text" class="contact_input" required="required" name="name" />
         </div>
         <div class="form_row">
           <label class="contact"><strong>Email:</strong></label>
           <input type="email" class="contact_input" name="email" />
         </div>
         <div class="form_row">
           <label class="contact"><strong>Password:</strong></label>
           <input type="password" class="contact_input" name="pass" required="required" />
         </div>
             <div class="form_row">
           <label class="contact"><strong>Retype Password:</strong></label>
           <input type="password" class="contact_input" name="pass" required="required" />
         </div>
          <div class="form_row">
                  <label class="contact"><strong>Date of Birth:</strong></label>
                  <input type="date" class="contact_input"  name="dob" id="datepicker" required="required" />
                  </div>
         <div class="form_row">
           <label class="contact"><strong>Enter Privacy Code:</strong></label>
           <input type="tel" class="contact_input"  name="privacycode" required="required" />
         </div>
             
         <p>&nbsp;</p>
         <p>&nbsp;</p>
         <div class="form_row">
             <input type="image" src="images/GoDf5.gif" alt="submit form"/>
         </div>
         </form>
         </div>
       </div>
     </div>

   </div>
  
   <!-- end of center content -->

    <%@include file="rightcontent.jsp" %>


   </div><!-- end of main content -->



   <%@include file="footer.jsp" %>


</div>
<!-- end of main_container -->
</body>
</html>
