<%-- 
    Document   : adminmenu
    Created on : Apr 24, 2012, 9:51:46 PM
    Author     : Samkit
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Admin Menu</title>
        <script type="text/javascript" src="menu.js"></script>
           <link type="text/css" href="menu.css" rel="stylesheet" />
           <script type="text/javascript" src="jquery.js"></script>
    </head>
    <body>
       <div id="menu">
		<ul class="menu">

                        <li><a href="#" class="parent"><span>Manage Categories</span></a>
                        <div><ul>
                                <li><a  href="adminaddcategories.jsp"><span>Add Categories</span></a></li>
                               
                                                                 </ul></div>
                        </li>
			<li><a href="#" class="parent"><span>Manage Products</span></a>
                        <div><ul>
                                <li><a  href="adminaddproducts.jsp"><span>Add Products</span></a></li>
                                <li><a  href="admineditproducts.jsp"><span>Edit Products</span></a></li>
                                                                 </ul></div>
                        </li>
			<li><a href="#"><span>Manage Users</span></a>
                        <div><ul>
                                <li><a  href="adminaddusers.jsp" ><span>Add Users</span></a></li>
                                <li><a  href="admineditusers.jsp" ><span>Edit Users</span></a></li>
                                                                </ul></div>
                        </li>
			<li><a href="#"><span>Manage Bids</span></a>
                        <div><ul>
                                <li><a  href="admineditbids.jsp" ><span>Edit Bids</span></a></li>
                                                                </ul></div>
                        </li>





		</ul>
	</div>
    </body>
</html>
