<%-- 
    Document   : addproducts
    Created on : Apr 19, 2012, 1:41:13 PM
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

   <%@include file="AdminArea.jsp" %>

   <div id="main_content">



       <%@include file="adminmenu.jsp" %>

     
        <div class="center_content" id="center_content" style="margin-left: 150px">
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
           <input type="text"  class="contact_input" name="p_bid_open_date" required="required" />
         </div>
             <div class="form_row">
           <label class="contact"><strong>Bid Close Date:</strong></label>
           <input type="text" hint="MM/DD/YYYY"  class="contact_input" name="p_bid_close_date" required="required" />
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
  


   </div><!-- end of main content -->



   <%@include file="footer.jsp" %>


</div>
<!-- end of main_container -->
</body>
</html>
