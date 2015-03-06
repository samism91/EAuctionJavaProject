<%-- 
    Document   : asmincategoriesremove
    Created on : Apr 26, 2012, 7:11:40 PM
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
        <title>JSP Page</title>
    </head>
    <body>
        <%
       String category_name = request.getParameter("category_name");
       try {
           String addcategories = request.getParameter("addcategory");
            Connection con1 = null;
        ResultSet rst1 = null;
        Statement st1 = null;
            try{
                Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
                con1=DriverManager.getConnection("jdbc:odbc:register");
                st1=con1.createStatement();
               int d = st1.executeUpdate("DELETE FROM categories WHERE category_name='"+category_name+"' ");
               response.sendRedirect("adminaddcategories.jsp");
              }catch (Exception e) {
              out.println(e);
              }
        } finally {
            out.close();
        }
       %>
    </body>
</html>
