<%-- 
    Document   : myproducts
    Created on : Mar 26, 2012, 12:47:43 PM
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





     


<!-- register -->

<div class="center_content" id="center_content" style="margin-left: 150px">

      My Registered Products:
         <%


         
        
            String username =   (String) session.getAttribute("UserName");
                    out.println(username);
            Connection conn = null;
            Statement stmt = null;
            ResultSet rset = null;
            try{
                 Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");

                 conn = DriverManager.getConnection("jdbc:odbc:register");
                 stmt = conn.createStatement();
                 rset = stmt.executeQuery("select * from Product_Registration1 where seller_name='"+username+"'");
                //int i = s.executeUpdate("insert into categories values('"+categoryname+"','"+categorypage+"')");
          %>

         
  <%if(rset.next()){

%>
<form method="post" action="deleteregisteredproducts.jsp">
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
                   <th>Edit</th>
                   <th>Delete</th>
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
                   <td><a href="editproducts.jsp?product_name=<%=product_name%>"><input type="button" id="edit"  name="<%=product_name%>"/></a></td>
                   <td><input type="checkbox" id="delete" name="delete" value="<%=product_name%>"/></td>
               </tr>
                   <%}}else{  out.println("No Data Found"); }%>
           </table>
           <%


                 }catch(Exception e){e.printStackTrace();}

finally{
                conn.close();

}

 %>
 <input type="submit" />
</form>
   </div>



   <!-- end of register -->

<!-- end of center content -->

 


   </div><!-- end of main content -->



   <%@include file="footer.jsp" %>


</div>
<!-- end of main_container -->
</body>
</html>
