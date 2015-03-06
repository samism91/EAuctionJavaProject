<%-- 
    Document   : editproducts
    Created on : May 9, 2012, 5:25:07 PM
    Author     : Samkit
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
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
    <%@include file="header.jsp" %>

   <div id="main_content">

       <%@include file="menubar.jsp" %>
       <div class="center_content" id="center_content" style="margin-left: 150px">
   <div class="center_title_bar">Product Update Form</div></br></br>
        <%
String prod_name = request.getParameter("product_name");
session.setAttribute("prod_name",prod_name);






          
            Connection conn = null;
            Statement stmt = null;
            ResultSet rset = null;
            try{
                 Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");

                 conn = DriverManager.getConnection("jdbc:odbc:register");
                 stmt = conn.createStatement();
                 rset = stmt.executeQuery("select * from Product_Registration1 where Product_Name='"+prod_name+"'");
                //int i = s.executeUpdate("insert into categories values('"+categoryname+"','"+categorypage+"')");
          %>


  <%

%>

           <table border="1">
               <tr>

                   <th>Product Name</th>
                   <th>Product Image</th>
                    <th>Product Type</th>
                   <th>Product Prize</th>
                    <th>Product Condition</th>
                   <th>Product Detail</th>
                   <th>Date</th>
                   <th>Time</th>
                   
               </tr>
               <% while(rset.next()){
    String product_name = (String) rset.getString(3);
    %>
               <tr>

                   <td><%=product_name%></td>
                   <td><img src="upload/<%=rset.getString(1)%>" width="100" height="100"/></td>
                   <td><%=rset.getString(2)%></td>
                   <td><%=rset.getString(4)%></td>
                   <td><%=rset.getString(5)%></td>
                   <td><%=rset.getString(6)%></td>
                   <td><%=rset.getString(7)%></td>
                   <td><%=rset.getString(8)%></td>
                  
               </tr>
                   <%}%>
           </table>
           <%


                 }catch(Exception e){e.printStackTrace();}

finally{
                conn.close();

}

 %>




        
   <div class="prod_box_big">
     <div class="top_prod_box_big"></div>
     <div class="center_prod_box_big">
       <div class="contact_form">
         <form action="/eauction/UpdateProduct" id="myForm" ENCTYPE="multipart/form-data" method="post">
           <div class="form_row" >
            <label class="contact"><strong>Product Image:</strong></label>
           <input type="file" class="contact_input" required="required" name="file" />
         </div>
     
            
         <div class="form_row">
           <label class="contact"><strong>Product Prize:</strong></label>
           <input type="text" class="contact_input" name="p_prize" required="required" />
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

   <!-- end of register -->

<!-- end of center content -->




   </div><!-- end of main content -->



   <%@include file="footer.jsp" %>


</div>
<!-- end of main_container -->
    </body>
</html>
