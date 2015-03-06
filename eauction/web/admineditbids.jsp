<%-- 
    Document   : admineditbids
    Created on : Apr 19, 2012, 1:43:17 PM
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

    

        <%
String uname = (String) session.getAttribute("UserName");


           %>

          <div class="bidhistory" style="margin-left: 150px">
        
           <table>
               <tr>

                   <th><img src="images/buttons/productname.png"></th>
                   <th><img src="images/buttons/username.png"></th>
                   <th><img src="images/buttons/bid.png"></th>
                   <th><img src="images/buttons/date.png"></th>
                   <th><img src="images/buttons/time.png"></th>
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
                 rs = s.executeQuery("select * from bidding order by User_Name");
                //int i = s.executeUpdate("insert into categories values('"+categoryname+"','"+categorypage+"')");


               while(rs.next()){

                    String product_name = (String) rs.getString(1);
                 String  user_name = (String) rs.getString(5);
                 String date = (String) rs.getString(6);
                 String  time = (String) rs.getString(7);

                   %>
                     <form method="post" action="admindeletebidhistory.jsp">
               <tr class="bidhistorytable">

                   <td><%=product_name%></td>
                    <td><%=user_name%></td>
                   <td><%=rs.getString(2)%></td>
                   <td><%=date%></td>
                   <td><%=time%></td>
                   <td><input type="checkbox" id="delete" value="<%=product_name%>"></td>
               </tr>
            

                   <%}%>
                     </form>
             </table>
                      <input type="submit"/>
                 
            <%}catch(Exception e){e.printStackTrace();}

finally{
                co.close();

}

 %>
          
        





           </div>
  


   </div><!-- end of main content -->



   <%@include file="footer.jsp" %>


</div>
<!-- end of main_container -->
</body>
</html>
