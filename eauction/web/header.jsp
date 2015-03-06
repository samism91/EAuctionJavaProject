<%-- 
    Document   : header
    Created on : Jan 27, 2012, 11:35:26 PM
    Author     : Samkit
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<html>
	<head>
            <link rel="icon" type="image/ico" href="img/favicon.ico"/>
		<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
		<title>Header</title>

        <!-- Include jQuery first. -->
		<script type="text/javascript" src="jquery-1.3.2.min.js"></script>

        <!-- Include the below script, Copyright 2010, Brandon Aaron (http://brandonaaron.net/) for scrollwheel support. -->
		<script type="text/javascript" src="jquery-mousewheel/jquery.mousewheel.min.js"></script>

		<link rel="stylesheet" type="text/css" href="slidedeck.skin.css" media="screen" />
        <!-- Styles for the skin that only load for Internet Explorer -->
        <!--[if lte IE 8]>
        <link rel="stylesheet" type="text/css" href="slidedeck.skin.ie.css" media="screen,handheld" />
        <![endif]-->

        <!-- Include the SlideDeck jQuery script. -->
		<script type="text/javascript" src="slidedeck.jquery.lite.pack.js"></script>

        <style type="text/css">
            #slidedeck_frame {
                width: 950px;
                height: 400px;
            }
        </style>
	</head>
	<body>
		<div id="slidedeck_frame" class="skin-slidedeck">
			<dl class="slidedeck">
				<dt>HOME</dt>
                                <dd><a href="index.jsp"><img src="images/screen1.jpg"/></a></dd>
				<dt>PRODUCTS</dt>
                                <dd><a href="productregistration.jsp"><img src="images/screen9.jpg"/></a></dd>
				<dt>SHIPPING</dt>
				<dd><img src="images/screen11.jpg"/></dd>
				<dt>REGISTRATION</dt>
                                <dd><a href="signup.jsp"><img src="images/screen13.jpg"/></a></dd>
				<dt>BIDDING</dt>
				<dd><img src="images/screen10.jpg"/></dd>
			</dl>
		</div>
		<script type="text/javascript">
			$('.slidedeck').slidedeck({
                autoPlay: true,
                cycle: true,
                autoPlayInterval: 5000
            });
			document.write('<style type="text/css">#' + $('[id^=SlideDeck_Bug]').get(0).id + ' {display: none!important;}<\/style>');
		</script>
	  
		
	</body>
</html>
