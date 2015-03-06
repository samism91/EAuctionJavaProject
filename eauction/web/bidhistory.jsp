<%-- 
    Document   : bidhistory
    Created on : Mar 15, 2012, 6:03:59 PM
    Author     : Samkit
--%>


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







   <!-- end of register -->
   <div class="center_content" id="center_content" >
  <%
String uname = (String) session.getAttribute("UserName");


           %>
           <%
         

            Connection co = null;
            Statement s;
            ResultSet rs;
            try{
                 Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");

                 co = DriverManager.getConnection("jdbc:odbc:register");
                 s = co.createStatement();
                 rs = s.executeQuery("select * from bidding where User_Name='"+uname+"'");
                //int i = s.executeUpdate("insert into categories values('"+categoryname+"','"+categorypage+"')");

          %>

          <%if(rs.next()){

%>
          <div class="bidhistory">

           <table>
               <tr>

                   <th><img src="images/buttons/productname.png"></th>
                   <th><img src="images/buttons/bid.png"></th>
                   <th><img src="images/buttons/date.png"></th>
                   <th><img src="images/buttons/time.png"></th>
                  
               </tr>
               <% while(rs.next()){
                   %>
               <tr class="bidhistorytable">

                   <td><%=rs.getString(1)%></td>
                   <td><%=rs.getString(2)%></td>
                   <td><%=rs.getString(6)%></td>
                   <td><%=rs.getString(7)%></td>
                  
               </tr>
                   <%}}else{  out.println("No Data Found"); } %>
           </table>
           <%


                 }catch(Exception e){e.printStackTrace();}

finally{
                co.close();

}

 %>
          </div>

           </div>
           
   



<!-- end of center content -->




 <!-- end of main content -->



   <%@include file="footer.jsp" %>

</div>

<!-- end of main_container -->
</body>
</html>
