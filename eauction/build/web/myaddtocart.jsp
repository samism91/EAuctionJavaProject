<%-- 
    Document   : addtocart
    Created on : Mar 3, 2012, 6:04:33 PM
    Author     : Samkit
--%>

<%@page import="java.util.Calendar"%>
<%@page import="java.util.GregorianCalendar"%>
<%@page import="java.util.Date"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.text.DateFormat"%>
<%@page import="java.sql.*"%>

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


  


       <%@include file="leftcontent.jsp" %>



<!-- register -->

<div class="center_content" id="center_content" >


 My Added Products:
         <%
           String categoryname = request.getParameter("category_name");
           String categorypage = request.getParameter("category_page");
           String username =   (String) session.getAttribute("UserName");

            Connection co = null;
            Statement s;
            ResultSet rs;
            try{
                 Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");

                 co = DriverManager.getConnection("jdbc:odbc:register");
                 s = co.createStatement();
                 rs = s.executeQuery("select * from addtocart where User_Name='"+username+"'");
                //int i = s.executeUpdate("insert into categories values('"+categoryname+"','"+categorypage+"')");
                
          %>


          <form action="checkout.jsp" method="post">
           <table border="1">
               <tr>

                   <th>Product Name</th>
                   <th>Date</th>
                   <th>Time</th>
                   <th>Product Prize</th>
                   <th>Check In</th>
               </tr>
               <%
               while(rs.next()){

                 String product_name = (String)rs.getString(1);
               %>
               <tr>

                   <td><%=product_name%></td>
                   <td><%=rs.getString(3)%></td>
                   <td><%=rs.getString(4)%></td>
                   <td><%=rs.getString(5)%></td>
                  
                   <td><input type="checkbox" name="checkeditems" value="<%=product_name%>"/></td>
                   <%session.setAttribute("product_name",product_name);%>
               </tr>
                   <%}}catch(Exception e){e.printStackTrace();}%>
           </table>
           <input type="submit" />
          </form>
 
</div>



   <!-- end of register -->
   
<!-- end of center content -->

   <%@include file="rightcontent.jsp" %>


   </div><!-- end of main content -->



   <%@include file="footer.jsp" %>


</div>
<!-- end of main_container -->
</body>
</html>

