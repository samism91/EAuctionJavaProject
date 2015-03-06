<%-- 
    Document   : menubar
    Created on : Jan 27, 2012, 11:39:41 PM
    Author     : Samkit
--%>

<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" type="text/css" href="style.css" />
        <link type="text/css" href="menu.css" rel="stylesheet" />
	<script type="text/javascript" src="jquery.js"></script>
	<script type="text/javascript" src="menu.js"></script>
       <script type="text/javascript">
             function call(a)
                {
                var xmlhttp;
                if (window.XMLHttpRequest)
                {// code for IE7+, Firefox, Chrome, Opera, Safari
                xmlhttp=new XMLHttpRequest();
                }
                else
                {// code for IE6, IE5
                xmlhttp=new ActiveXObject("Microsoft.XMLHTTP");
                }
                xmlhttp.onreadystatechange=function()
                {
                if (xmlhttp.readyState==4 && xmlhttp.status==200)
                {

               // alert("Hi");
                document.getElementById("center_content").innerHTML=xmlhttp.responseText;
                //alert("Got");
                }
                else{
               document.getElementById("center_content").innerHTML="<center><img src='images/ajax-loader.gif'/></center>";
                }
                }
                xmlhttp.open("GET","center_data.jsp?cname="+a,true);
                xmlhttp.send();
                }
             </script>
    </head>
    <body>
        
                    <div id="menu">
		<ul class="menu">
			<li><a href="index.jsp" class="parent"><span>Home</span></a></li>
			<li><a href="#"><span>Products</span></a>
				<div><ul>
					                            <%
              Connection con2 = null;
            ResultSet rst2 = null;
            Statement st2;
            try{
                 Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");

                 con2 = DriverManager.getConnection("jdbc:odbc:register");
                 st2 = con2.createStatement();

                 rst2 = st2.executeQuery("select * from categories order by category_name");

                 while(rst2.next())
                     {
                     String pname= (String)rst2.getString(1);
                       
                     %>
                     <li><a onclick="call('<%=pname%>')" ><span><%=pname%></span></a></li>
                     <%
                     }


                }catch(Exception e){e.printStackTrace();}


            %>
				</ul></div>
			</li>
			<li><a href="signup.jsp"><span>Registeration</span></a>
                        <div><ul>
                                 <%if(session.getAttribute("UserName")==null){%>
                                 <li><a href="signup.jsp"><span>User</span></a></li>
                                 <%}%>
                                 <li><a href="productregistration.jsp"><span>Product</span></a></li>
                            </ul></div>
                        </li>
                        <%if(session.getAttribute("UserName")!=null){%>
                        <li><a href="myportal.jsp"><span>My Portal</span></a>
                        <div><ul>
                                  <li><a href="myportal.jsp"><span>My Profile</span></a></li>
                                 <li><a href="bidhistory.jsp"><span>My Bid History</span></a></li>
                                 <li><a href="myproducts.jsp"><span>My Registered Products</span></a></li>
                                   <li><a href="myaddtocart.jsp"><span>My Add To Cart Items</span></a></li>
                            </ul></div>
                        </li>
                        <%}%>
			
                        <li><a href="faq.jsp"><span>FAQs</span></a></li>
                        
		</ul>
	</div>
   

            
    </body>
</html>
