<%-- 
    Document   : adminoperations
    Created on : Apr 19, 2012, 2:40:48 PM
    Author     : Samkit
--%>

<%@page import="sun.font.Script"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%

   String operation  = (String)  request.getParameter("operation");
   System.out.print(operation);
        if(operation == "addproducts" ){ %>
            <Script>
                alert("reached");
                    </Script>
        <%

        }

            %></body>
</html>
