<%-- 
    Document   : testmail
    Created on : Mar 15, 2012, 11:43:04 PM
    Author     : Samkit
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

 
<HTML>
<BODY>
<%
  // Get username.
 String[] email =(String[])request.getParameterValues( "samism" );

if(email!= null){

   {
      for (int i = 0; i < email.length; i++)
      {
         out.println ("<b>"+email[i]+"<b>");
      }
   }

}
  %>
</BODY>
</HTML>