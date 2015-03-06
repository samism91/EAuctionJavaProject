<%--
    Document   : signin
    Created on : Jan 28, 2012, 3:20:02 PM
    Author     : Samkit
--%>
<%
session.removeAttribute("UserName");
//out.println(session.getAttribute("UserName"));
session.invalidate();
response.sendRedirect("index.jsp");

%>
