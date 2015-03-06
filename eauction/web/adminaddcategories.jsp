<%-- 
    Document   : adminaddcategories
    Created on : Apr 24, 2012, 10:06:51 PM
    Author     : Samkit
--%>

<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Admin Add Categories</title>
        <script>
            function call(){
                alert("hello");

            }
        </script>

<link rel="stylesheet" type="text/css" href="style.css" />
    </head>
     <body>

<div id="main_container">

    <%@include file="AdminArea.jsp" %>

   <div id="main_content">



       <%@include file="adminmenu.jsp" %>

      

 

          <div class="bidhistory" >
              <form action="/eauction/addcategoriesservlet" method="post">
              Add Category: <input type="text" name="addcategory" />

              <input type="submit"/></form>

              
              <%
try {
          
            Connection con1 = null;
        ResultSet rst1 = null;
        Statement st1 = null;
            try{
                Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
                con1=DriverManager.getConnection("jdbc:odbc:register");
                st1=con1.createStatement();
               rst1 = st1.executeQuery("SELECT category_name FROM  categories");
              %>
              <form action="deletecategories.jsp" method="post"/>
              <table border="1" style="margin-left: 100px; margin-top: 20px" width="45">
                  <th>Categories</th>
                  <th><input type="image" src="images/buttons/delete.png" /></th>
 <%while(rst1.next()){
  String categories=(String) rst1.getString(1); %>
 <tr>
     <td><%=categories%></td>
     <td><input type="checkbox" id="del" value="<%=categories%>"/></td>
 </tr>
              <%}}catch(Exception e){e.printStackTrace();}
        }catch(Exception e){e.printStackTrace();}%>
              </table>
              <input type="submit"/>
          </form>
             

           </div>



   </div><!-- end of main content -->



   <%@include file="footer.jsp" %>


</div>
<!-- end of main_container -->
</body>
</html>