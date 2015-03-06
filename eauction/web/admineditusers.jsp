<%-- 
    Document   : editusers
    Created on : Apr 19, 2012, 1:41:48 PM
    Author     : Samkit
--%>

<%@page import="java.sql.ResultSet"%>
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

   <%@include file="AdminArea.jsp" %>

   <div id="main_content">



       <%@include file="adminmenu.jsp" %>

      


          <div class="bidhistory" style="margin-left: 150px">
              <form method="post" action="deleteusers.jsp">
           <table>
               <tr>

                   <th>User Name</th>
                   <th>Email</th>
                   <th>Password</th>
                   <th>Phone</th>
                   <th>Country</th>
                    <th><img src="images/buttons/delete.png"></th>
               </tr>
               <%


            Connection co = null;
            Statement s;
            ResultSet rs;
            try{
                 Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");

                 co = DriverManager.getConnection("jdbc:odbc:register");
                 s = co.createStatement();
                 rs = s.executeQuery("select * from userregister");
                //int i = s.executeUpdate("insert into categories values('"+categoryname+"','"+categorypage+"')");


               while(rs.next()){
               String username = rs.getString(1);
                   %>
               <tr class="bidhistorytable">

                   <td><%=username%></td>
                    <td><%=rs.getString(2)%></td>
                   <td><%=rs.getString(3)%></td>
                   <td><%=rs.getString(4)%></td>
                   <td><%=rs.getString(5)%></td>
                   <td><input type="checkbox" id="delete" value="<%=username%>"/></td>
               </tr>


                   <%}}catch(Exception e){e.printStackTrace();}

finally{
                co.close();

}

 %>
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