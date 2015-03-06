<%-- 
    Document   : deletecategories
    Created on : May 17, 2012, 11:30:22 PM
    Author     : Samkit
--%>

<%@page import="java.sql.Connection"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.DriverManager"%>
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
 String[] paramNames =(String[]) request.getParameterValues("del");
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

                 int h = st8.executeUpdate("delete from categories where category_name='"+paramNames[i]+"'");

  }catch(SQLException e){
                         e.printStackTrace();
      }
   }

}

}
response.sendRedirect("admineditproducts.jsp");
%>
    </body>
</html>
