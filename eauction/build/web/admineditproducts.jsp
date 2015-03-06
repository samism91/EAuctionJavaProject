<%-- 
    Document   : editproducts
    Created on : Apr 19, 2012, 1:42:08 PM
    Author     : Samkit
--%>


<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
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

    <%@include file="AdminArea.jsp" %>

   <div id="main_content">



       <%@include file="adminmenu.jsp" %>

       

       <div class="center_content" style="margin-left: 150px">

      My Registered Products:
         <%




            String username =   (String) session.getAttribute("UserName");

            Connection conn = null;
            Statement stmt = null;
            ResultSet rset = null;
            try{
                 Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");

                 conn = DriverManager.getConnection("jdbc:odbc:register");
                 stmt = conn.createStatement();
                 rset = stmt.executeQuery("select * from Product_Registration1");
                //int i = s.executeUpdate("insert into categories values('"+categoryname+"','"+categorypage+"')");
          %>


  <%if(rset.next()){

%>
<form method="post" action="admindeleteregisteredproducts.jsp">
           <table border="1">
               <tr>
                     <th>Seller Name</th>
                   <th>Product Name</th>
                   <th>Product Image</th>
                    <th>Product Type</th>
                   <th>Product Prize</th>
                    <th>Product Condition</th>
                   <th>Product Detail</th>
                   <th>Date</th>
                   <th>Time</th>
                  <th><img src="images/buttons/delete.png"></th>
               </tr>
               <% while(rset.next()){
    String product_name = rset.getString(3);
    %>
               <tr>
                   <td><%=rset.getString(9)%></td>
                   <td><%=product_name%></td>
                   <td><img src="upload/<%=rset.getString(1)%>" width="100" height="100"/></td>
                   <td><%=rset.getString(2)%></td>
                   <td><%=rset.getString(4)%></td>
                   <td><%=rset.getString(5)%></td>
                   <td><%=rset.getString(6)%></td>
                   <td><%=rset.getString(7)%></td>
                   <td><%=rset.getString(8)%></td>
                   <td><input type="checkbox" id="delete" value="<%=product_name%>"/></td>
               </tr>
                   <%}}else{  out.println("No Data Found"); }%>
           </table>
           <input type="submit"/>
</form>
           <%


                 }catch(Exception e){e.printStackTrace();}

finally{
                conn.close();

}

 %>
   </div>

    


   </div><!-- end of main content -->



   <%@include file="footer.jsp" %>


</div>
<!-- end of main_container -->
</body>
</html>
