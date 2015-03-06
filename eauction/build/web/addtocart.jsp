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
<%--
    Document   : index
    Created on : Dec 28, 2011, 9:31:09 PM
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


<%
    String User_Name2 = (String)session.getAttribute("UserName");

    if(User_Name2 == null){

        response.sendRedirect("signin.jsp");

}
/*
    if (UserName == ownseller of product){than show the error


    }*/



%>


</head>
<body>

<div id="main_container">

    <%@include  file="topbar.jsp" %>
    <%@include file="header.jsp" %>

   <div id="main_content">

       <%@include file="menubar.jsp" %>


    <div class="crumb_navigation">
    Navigation: <span class="current">Home</span>

    </div>


       <%@include file="leftcontent.jsp" %>



<!-- register -->
 
<div class="center_content">
    

You have added the product is: <%
//Only Buyer Can Add it
String product_name = (String)request.getParameter("product_name");
String product_prize= (String)request.getParameter("p_prize");
  DateFormat dateFormat = new SimpleDateFormat("dd/MM/yyyy");
	   //get current date time with Date()
	   Date date = new Date();
	  String date1 = dateFormat.format(date);
                   System.out.println(date1);

  Calendar calendar = new GregorianCalendar();
  String am_pm;
  int hour = calendar.get(Calendar.HOUR);
  int minute = calendar.get(Calendar.MINUTE);
  int second = calendar.get(Calendar.SECOND);
  if(calendar.get(Calendar.AM_PM) == 0)
  am_pm = "AM";
  else
  am_pm = "PM";
  String p_time =  hour + ":"
+ minute + ":" + second + " " + am_pm;
                  System.out.println(p_time);

out.println(product_name);
out.println(User_Name2);
out.println(product_prize);
out.println(date1);
out.println(p_time);
%>

<%
  try{
        Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
Connection con8 = null;

            Statement st8=null,st9=null;



                 con8 = DriverManager.getConnection("jdbc:odbc:register");
                 st8 = con8.createStatement();

                 int h = st8.executeUpdate("insert into addtocart values('"+product_name+"','"+User_Name2+"','"+date1+"','"+p_time+"','"+product_prize+"')");

  }catch(SQLException e){
                         e.printStackTrace();

}




                        %>
                        
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

