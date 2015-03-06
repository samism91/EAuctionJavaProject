<%-- 
    Document   : leftcontent
    Created on : Jan 27, 2012, 11:45:23 PM
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
         <script type="text/javascript">
             function call(a)
                {
                var xmlhttp;
                if (window.XMLHttpRequest)
                {// code for IE7+, Firefox, Chrome, Opera, Safari
                xmlhttp=new XMLHttpRequest();
                }
                else
                {// code for IE6, IE5
                xmlhttp=new ActiveXObject("Microsoft.XMLHTTP");
                }
                xmlhttp.onreadystatechange=function()
                {
                if (xmlhttp.readyState==4 && xmlhttp.status==200)
                {

               // alert("Hi");
                document.getElementById("center_content").innerHTML=xmlhttp.responseText;
                //alert("Got");
                }
                else{
               document.getElementById("center_content").innerHTML="<center><img src='images/ajax-loader.gif'/></center>";
                }
                }
                xmlhttp.open("GET","center_data.jsp?cname="+a,true);
                xmlhttp.send();
                }
             </script>
    </head>
    <body>
        <div class="left_content">
    <div class="title_box">Categories</div>

        <ul class="left_menu">
            <%
              Connection con = null;
            ResultSet rst = null;
            Statement st;
            try{
                 Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");

                 con = DriverManager.getConnection("jdbc:odbc:register");
                 st = con.createStatement();

                 rst = st.executeQuery("select * from categories order by category_name");
                 int i = 0;
                 while(rst.next())
                     {
                       String category_name = rst.getString(1);
                     i++;
                     if(i%2 == 0)
                         {%>
                          <li class="even"><a onclick="call('<%=category_name%>')"><%=category_name%></a></li>
                         <%}
                     else
                         {%>
                          <li class="odd"><a onclick="call('<%=category_name%>')"><%=category_name%></a></li>
                         <%}
                        
                     }


                }catch(Exception e){e.printStackTrace();}


            %>
       
       
        </ul>


    

     
   </div><!-- end of left content -->
    </body>
</html>
