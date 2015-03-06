<%-- 
    Document   : centercontent
    Created on : Feb 24, 2012, 10:36:46 AM
    Author     : Samkit
--%>

<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
       <script type="text/javascript" src="jquery.js"></script>
<script type="text/javascript" src="jquery.lightbox-0.5.js"></script>
<link rel="stylesheet" type="text/css" href="jquery.lightbox-0.5.css" media="screen" />
<link rel="stylesheet" type="text/css" href="style.css" />
<!--[if IE 6]>
<link rel="stylesheet" type="text/css" href="iecss.css" />
<![endif]-->
 <script type="text/javascript">
$(function() {
	// Use this example, or...
	//$('a[@rel*=lightbox]').lightBox(); // Select all links that contains lightbox in the attribute rel
	// This, or...
	//$('#gallery a').lightBox(); // Select all links in object wher id = "gallery"	// This, or...
        //means all the links under gallery id
	//$('a.lightbox').lightBox(); // Select all links with class="lightbox"
	// This, or...
	$('.product_img a').lightBox(); // Select all links in the page
        //means all the links in the class 
	// ... The possibility are many. Use your creative or choose one in the examples above
});
</script>

    </head>
    
    <body>
 
                 <div class="center_content" id="center_content">
                   <div class="center_title_bar" id="center_content_dynamic">Registered Products</div>
<%
Connection con6 = null;
            ResultSet rst6 = null;
            Statement st6;
            try{
                 Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");

                 con6 = DriverManager.getConnection("jdbc:odbc:register");
                 st6 = con6.createStatement();

                 rst6 = st6.executeQuery("select * from Product_Registration1 order by product_date desc");
                 while(rst6.next())
                     {
                        String product_name = rst6.getString(3);
                        String pic_name = rst6.getString(1);
                          String p_prize = rst6.getString(4);
                        %>

                        <div class="prod_box">
        	<div class="top_prod_box"></div>
            <div class="center_prod_box">
                <div class="product_title"><%=product_name%></div>
                <div class="product_img" ><a href="upload/<%=pic_name%>"><img src="upload/<%=pic_name%>"  alt=""  width="156" height="90" border="0" title="" /></a></div>
                
                <div class="prod_price"> <span class="price"><%=p_prize%>$</span></div>
            </div>
            <div class="bottom_prod_box"></div>
            <div class="prod_details_tab">
            <a href="addtocart.jsp?product_name=<%=product_name%>&&p_prize=<%=p_prize%>" title="Add To Cart"><img src="images/cart.gif" alt="" title="" border="0" class="left_bt" /></a>
            <a href="setthebid.jsp?product_name=<%=product_name%>&&p_prize=<%=p_prize%>" title="Set the bid"><img src="images/Bidding_icon.gif" alt="" title="" border="0" class="left_bt" /></a>
            <a href="detail.jsp?pname=<%=product_name%>" class="prod_details">Detail</a>
            </div>
        </div>

                     <%}
                }catch(Exception e)
                        {
                    e.printStackTrace();
                    }

%>


	




     	




 





     	


                 </div>



       </body>
</html>
