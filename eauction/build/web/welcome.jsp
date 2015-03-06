<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*" errorPage="" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Untitled Document</title>
</head>

<body>
<%
Connection con = null;
ResultSet rst = null;
Statement st = null;
String name =request.getParameter("name");
String email=request.getParameter("email");
String password=request.getParameter("pass");
String phone=request.getParameter("phone");
String country=request.getParameter("country");

try{

Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
con=DriverManager.getConnection("jdbc:odbc:register");
 st=con.createStatement();
 rst = st.executeQuery("select * from register1");


while(rst.next())
{%>
<table border="1">
    <tr><td><%out.println(rst.getString(1));%></td></tr>
    <tr><td><%out.println(rst.getString(2));%></td></tr>
    <tr><td><%out.println(rst.getString(3));%></td></tr>
    <tr><td><%out.println(rst.getString(4));%></td></tr>
    <tr><td><%out.println(rst.getString(5));%></td></tr>
</table>
<%
}
int i = st.executeUpdate("insert into register1 values('"+name+"','"+email+"','"+password+"','"+phone+"','"+country+"')");

    

}

catch(SQLException se){

}

%>
This is a Home <br/>
Welcome,<%=name%>


</body>
</html>