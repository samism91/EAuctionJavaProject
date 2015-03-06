<%-- 
    Document   : paypalpay
    Created on : May 17, 2012, 6:32:28 PM
    Author     : Samkit
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
      <html>
<head>

<title>Pay through PayPal: www.TestAccount.com</title>
</head>
<body onload="document.forms['paypalForm'].submit();">
<form name="paypalForm" action="https://www.sandbox.paypal.com/cgi-bin/webscr" method="post">
 <input type="hidden" name="cmd" value="_xclick" />
 <input type="hidden" name="business" value="samism_1337260333_biz_api1.gmail.com" />
 <input type="hidden" name="password" value="1337260358" />
 <input type="hidden" name="custom" value="1123" />
 <input type="hidden" name="item_name" value="Computer-Laptop" />
 <input type="hidden" name="amount" value="30"/>
 <input type="hidden" name="rm" value="1" />
 <input type="hidden" name="return" value="http://localhost:8080/paypalResponse.jsp" />
 <input type="hidden" name="cancel_return" value="http://localhost:8080/paypalResponseCancel.jsp" />
 <input type="hidden" name="cert_id" value="API Singature" />
</form>
</body>
</html>
    </body>
</html>
