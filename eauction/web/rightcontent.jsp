<%-- 
    Document   : rightcontent
    Created on : Jan 27, 2012, 11:51:03 PM
    Author     : Samkit
--%>

<%@page import="java.sql.ResultSetMetaData"%>
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
         <link rel="stylesheet" type="text/css" href="style.css" />
    </head>
    <body>
          <div class="right_content">
   		<div class="shopping_cart">
        	<div class="cart_title">Shopping cart</div>
                <%
                
                String User_Name = (String)session.getAttribute("UserName");
                Connection con7 = null;
        ResultSet rst7 = null;
        Statement st7 = null;
        try{
                Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
                con7=DriverManager.getConnection("jdbc:odbc:register");
                st7=con7.createStatement();
                rst7 = st7.executeQuery("select count(*) from addtocart where User_Name='"+User_Name+"'");

    int count = 0;
  while (rst7.next()){
  count = rst7.getInt(1);
  
  }
  System.out.println("Number of column:"+count);
        %>

            <div class="cart_details">
                 <%if(session.getAttribute("UserName")!=null){%>
                 <%=count%> items <br /><%}
                 else{%>
               No Add To Cart Items <br />
                 <%}%>
           
            </div>
            <%
           }catch(Exception e){
           e.printStackTrace();
}
%>
            <div class="cart_icon"><a href="#" title=""><img src="images/shoppingcart.png" alt="" title="" width="48" height="48" border="0" /></a></div>

        </div>


     




   

   </div><!-- end of right content -->
    </body>
</html>
