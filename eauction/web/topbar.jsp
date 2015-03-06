<%-- 
    Document   : topbar
    Created on : Jan 27, 2012, 11:37:53 PM
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
        <script type="text/javascript" src="/highslide/highslide.js"></script>
        <!-- Page styles -->
<link type='text/css' href='demo.css' rel='stylesheet' media='screen' />

<!-- OSX Style CSS files -->
<link type='text/css' href='osx.css' rel='stylesheet' media='screen' />
<script type='text/javascript' src='js/jquery.js'></script>
    <script type='text/javascript' src='jquery.simplemodal.js'></script>
<script type='text/javascript' src='osx.js'></script>
<link rel="stylesheet" type="text/css" href="/highslide/highslide.css" />
<link rel="stylesheet" type="text/css" href="login-box.css" />
<script type="text/javascript">
   hs.graphicsDir = '../highslide/graphics/';
hs.outlineType = 'rounded-white';
hs.wrapperClassName = 'draggable-header';
</script>



    </head>
    <body>
        <div class="top_bar">
    	<div class="top_search">
            <%
            String sign;
            String page_sign;
            String check = (String)session.getAttribute("UserName");
           //out.println(check);
            if(check != null)
                {
                    //out.println("sig nout");
                      sign= "Sign out";
                    page_sign= "signout.jsp";
              
                }
            else
                {
 //out.println("ok");
                    sign = "Sign in";
                    page_sign= "signin.jsp";

                }
            %>
 <!--for stylish log in box
 <div class="search_text"><a href="<%=page_sign%>" class='osx'><%=sign%></a></div>-->
        	<div class="search_text">

                     <%if(check != null)
                {
                    %> Welcome , <font style="color: #0b559b"><%=check%></font>

                   <%}%>
                    &nbsp;  &nbsp;  &nbsp;  &nbsp;  &nbsp;  &nbsp;  &nbsp;  &nbsp;  &nbsp;  &nbsp;  &nbsp;  &nbsp;
                     &nbsp;  &nbsp;  &nbsp;  &nbsp;  &nbsp;  &nbsp;  &nbsp;  &nbsp; 
                    <a href="<%=page_sign%>" ><%=sign%></a>
                     
                  
                </div>
                  </div>
        <div>
        <a href="index.jsp"><img src="images/newest.png" width="146" height="35"/></a>
        </div>

		</div>
    </body>


    
	</html>