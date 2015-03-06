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
<script src="gen_validatorv4.js" type="text/javascript"></script>
<link href="jquerycustom/css/ui-lightness/jquery-ui-1.8.20.custom.css" rel="stylesheet" type="text/css"/>
<script type="text/javascript" src="jquerycustom/js/jquery-1.7.2.min.js"></script>
<script type="text/javascript" src="jquerycustom/js/jquery-ui-1.8.20.custom.min.js"></script>

<!--[if IE 6]>
<link rel="stylesheet" type="text/css" href="iecss.css" />
<![endif]-->
</head>
<body>
 <%
           
            String check1 = (String)session.getAttribute("UserName");
         
            if(check1 == null)
                {
                response.sendRedirect("signin.jsp");
                }

            %>
<div id="main_container">

    <%@include  file="topbar.jsp" %>
    <%@include file="header.jsp" %>

   <div id="main_content">

       <%@include file="menubar.jsp" %>


   
 

   


       <%@include file="leftcontent.jsp" %>



<!-- register -->







   <!-- end of register -->
   <!-- start of center content -->
   <div class="center_content" id="center_content">
   <div class="center_title_bar">Product Registartion Form</div></br></br>
   <div class="prod_box_big">
     <div class="top_prod_box_big"></div>
     <div class="center_prod_box_big">
       <div class="contact_form">
         <form action="/eauction/ProductRegistrationServlet" id="myForm" ENCTYPE="multipart/form-data" method="post">
           <div class="form_row" >
            <label class="contact"><strong>Product Image:</strong></label>
           <input type="file" class="contact_input" required="required" name="file" />
         </div>
             <div class="form_row">
           <label class="contact"><strong>Product Type:</strong></label>
           <select class="contact_input" name="p_type" >
               <option value="bikes">Bikes</option>
                <option>Cars</option>
                 <option>Computers</option>
                  <option>Lcd/Led</option>
                   <option>Mobiles</option>
                    <option>Shoes</option>
                     <option>Watches</option>
                  </select>
         </div>
             <div class="form_row">
            <label class="contact"><strong>Product Name:</strong></label>
           <input type="text" class="contact_input" required="required" name="p_name" />
         </div>
         <div class="form_row">
           <label class="contact"><strong>Product Prize:</strong></label>
           <input type="text" class="contact_input" name="p_prize" required="required" />
         </div>
         <div class="form_row">
           <label class="contact"><strong>Product Condition:</strong></label>
           <input type="text"  class="contact_input" name="p_product" required="required" />
         </div>
             <div class="form_row">
           <label class="contact"><strong>Bid Open Date:</strong></label>
           <input type="text" id="datepicker" class="contact_input" name="p_bid_open_date" required="required" />
         </div>
             <div class="form_row">
           <label class="contact"><strong>Bid Close Date:</strong></label>
           <input type="text"  class="contact_input" name="p_bid_close_date" required="required" />
         </div>
         <div class="form_row">
           <label class="contact"><strong>Product Details:</strong></label>
           <textarea name="p_detail" class="contact_input" size="200"></textarea>
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
   </div>
<script type="text/javascript">
	$(function() {
		$( "#datepicker" ).datepicker();
	});
	</script>
<script  type="text/javascript">
 var frmvalidator = new Validator("myForm");
 frmvalidator.addValidation("p_prize","numeric","Please enter product prize in number format");
 /*frmvalidator.addValidation("FirstName","req","Please enter your First Name");
 frmvalidator.addValidation("FirstName","maxlen=20",
        "Max length for FirstName is 20");
 frmvalidator.addValidation("LastName","req");
 frmvalidator.addValidation("LastName","maxlen=20");
 frmvalidator.addValidation("Email","maxlen=50");
 frmvalidator.addValidation("Email","req");
 frmvalidator.addValidation("Email","email");
 frmvalidator.addValidation("Phone","maxlen=50");

 frmvalidator.addValidation("Address","maxlen=50");
 frmvalidator.addValidation("Country","dontselect=000");
*/</script>



<!-- end of center content -->

   <%@include file="rightcontent.jsp" %>


 <!-- end of main content -->



   <%@include file="footer.jsp" %>


</div>
<!-- end of main_container -->
</body>
</html>











