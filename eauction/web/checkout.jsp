<%-- 
    Document   : checkout
    Created on : Apr 8, 2012, 10:33:47 AM
    Author     : Samkit
--%>



<%@page import="java.util.Enumeration"%>
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


<%
    String User_Name2 = (String)session.getAttribute("UserName");
System.out.println(User_Name2);
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


   

      


<!-- register -->

<div class="center_content">
   
    You have checked out the items are 
    

    <%
 String[] paramNames =(String[]) request.getParameterValues("checkeditems");
if(paramNames != null){

   {
      for (int i = 0; i < paramNames.length; i++)
      {
         out.println ("<b>"+paramNames[i]+",<b>");
          try{
        Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
Connection con8 = null;

            Statement st8=null,
                    st9=null;



                 con8 = DriverManager.getConnection("jdbc:odbc:register");
                 st8 = con8.createStatement();

                 int h = st8.executeUpdate("delete from addtocart where Product_Name='"+paramNames[i]+"'");

  }catch(SQLException e){
                         e.printStackTrace();
      }
   }
   
}
 
%>
<%
 

}




                        %>
          
     
<br/>
Your Product will be at your door within 15 days.<br/>

<span style="font-size: 20px"><a href="paypalpay.jsp">Pay Through PayPal</a></span>
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

