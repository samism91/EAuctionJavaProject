<%--
    Document   : detail
    Created on : Dec 28, 2011, 9:31:09 PM
    Author     : Samkit
--%>

<%@page import="java.lang.String"%>
<%@page import="com.eauction.POJO.DetailPOJO"%>
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
   <%
    String UserName1 = (String)session.getAttribute("UserName");
   
    if(UserName1 == null){
    
        response.sendRedirect("signin.jsp");

}
/*
    if (UserName == ownseller of product){than show the error
    
    
    }*/


     %>
    <%@include  file="topbar.jsp" %>
    <%@include file="header.jsp" %>

   <div id="main_content">

       <%@include file="menubar.jsp" %>


   

       <%@include file="leftcontent.jsp" %>

 
<!-- register -->







   <!-- end of register -->
 
   <%
   
//get the product name
String product_name = (String) request.getParameter("pname");
//get the user name
//String username = (String) request.getParameter();

Connection con1 = null;
            ResultSet rst1 = null;
            Statement st1, st3;
            try{
                 Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");

                 con1 = DriverManager.getConnection("jdbc:odbc:register");
                 st1 = con1.createStatement();
              ;
                 rst1 = st1.executeQuery("select * from Product_Registration1 where product_name='"+product_name+"'");
                
                
                 while(rst1.next()){
                    
                    
                   %>
                    <div class="center_content" id="center_content">
   	<div class="center_title_bar"><%=product_name%></div>

    	<div class="prod_box_big">
        	<div class="top_prod_box_big"></div>

<div class="center_prod_box_big">
 <div class="product_img_big">

    
                    <img src="upload/<%=rst1.getString(1)%>" alt="" width="138" height="200" border="0" title="" />

      


        
                 </div>
                     <div class="details_big_box">
                         <div class="product_title_big"><%=product_name%></div>
                      
                         <div class="specifications">
                             <table>
                                 <tr>
                                     <td> Product Registered on:</td>
                                 <td> <span class="blue"><%=rst1.getString(7)%></span></td>
                             </tr>
                             <tr>
                               <td>Product Registered By:</td> <td><span class="blue"><%=rst1.getString(9)%></span><br /></td>
                            </tr>
                            <tr>
                             <td>Product Category: </td> <td><span class="blue"><%=rst1.getString(2)%></span></td>
                            </tr>
                            <tr>
                            <td> Product Prize:  </td><td><span class="blue"><%=rst1.getString(4)%></span></td>
                            </tr>
                            <tr>
                            <td> Condition:  </td><td><span class="blue"><%=rst1.getString(5)%></span></td>
                            </tr>
                            <tr>
                             <td>Product Detail:</td> <td><span class="blue"><%=rst1.getString(6)%></span></td>
                            </tr>

                           
                           
                            <tr>
                            <td>You can bid till:</td><td><span class="blue"><%=rst1.getString(11)%></span></td>
                             </tr><br /> </table>
                            Bid on it: &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<a href="setthebid.jsp?product_name=<%=product_name%>">go to bidding page...</a><br />
                            

                            
                         </div>

                             <%}
                // int d = ("INSERT INTO bidhistory VALUES(,,,)");
                }catch(Exception e)
                        {
                    e.printStackTrace();
                    }

%>
     
                        
                     </div>

                 
                
            </div>
           
        </div>







 


      	



     	
     






   </div>


   <!-- end of center content -->

   <%@include file="rightcontent.jsp" %>


   </div><!-- end of main content -->



   <%@include file="footer.jsp" %>


</div>
<!-- end of main_container -->
</body>
</html>
