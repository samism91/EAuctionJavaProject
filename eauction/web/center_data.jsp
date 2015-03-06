<%-- 
    Document   : center_data
    Created on : Feb 28, 2012, 10:13:21 PM
    Author     : Samkit
--%>

<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>

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
 
 <script type="text/javascript">
             function detail(a)
                {
                 alert(a);
                var xmlhttp;
                if (window.XMLHttpRequest)
                {// code for IE7+, Firefox, Chrome, Opera, Safari
                xmlhttp=new XMLHttpRequest();
                }
                else
                {// code for IE6, IE5
                xmlhttp=new ActiveXObject("Microsoft.XMLHTTP");
                }
                xmlhttp.onreadystatechange=function()
                {
                if (xmlhttp.readyState==4 && xmlhttp.status==200)
                {
                document.getElementById("center_content").innerHTML=xmlhttp.responseText;
                }
                else{
               document.getElementById("center_content").innerHTML="<img src='images/ajax-loader.gif'>";
                }
                }
                xmlhttp.open("GET","detail.jsp?pname="+a,true);
                xmlhttp.send();
                }
             </script>

</head>
<body>
<%
String cname = (String)request.getParameter("cname");

%>




<!-- register -->


                 <div class="center_content" id="center_content">
<div class="center_title_bar" id="center_content_dynamic"><%=cname%></div>
<%
Connection conn = null;
            ResultSet rstr = null;
            Statement sts;
            try{
                 Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");

                 conn = DriverManager.getConnection("jdbc:odbc:register");
                 sts = conn.createStatement();

                 rstr = sts.executeQuery("select * from Product_Registration1 where product_type='"+cname+"'");
                 while(rstr.next())
                     {
                        String product_name = rstr.getString(3);
                        String pic1_name= rstr.getString(1);
                        String p_prize= rstr.getString(4);
                        %>
                        
                        <div class="prod_box">
        	<div class="top_prod_box"></div>
            <div class="center_prod_box">
                <div class="product_title"><%=product_name%></div>
                <div class="product_img"><a href="upload/<%=pic1_name%>"><img src="upload/<%=pic1_name%>"   alt=""  width="156" height="90" border="0" title="" /></a></div>
                 <div class="prod_price"> <span class="price"><%=p_prize%>$</span></div>
            </div>
            <div class="bottom_prod_box"></div>
            <div class="prod_details_tab">
            <a href="addtocart.jsp?product_name=<%=product_name%>&&p_prize=<%=p_prize%>" title="Add To Cart"><img src="images/cart.gif" alt="" title="" border="0" class="left_bt" /></a>
            <a href="setthebid.jsp?product_name=<%=product_name%>&&p_prize=<%=p_prize%>" title="Set THe Bid"><img src="images/Bidding_icon.gif" alt="" title="" border="0" class="left_bt" /></a>
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