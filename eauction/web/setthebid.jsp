<%-- 
    Document   : setthebid
    Created on : Mar 28, 2012, 10:16:41 AM
    Author     : Samkit
--%>

<%@page import="java.util.GregorianCalendar"%>
<%@page import="java.util.Date"%>
<%@page import="java.util.Calendar"%>
<%@page import="java.util.Calendar"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=windows-1252" />
<title>Auction Web Portal </title>
<link rel="stylesheet" type="text/css" href="style.css" />
<!--[if IE 6]>
<link rel="stylesheet" type="text/css" href="iecss.css" />
<![endif]-->


  <%

    String UserName1 = (String)session.getAttribute("UserName");

    if(UserName1 == null){

        response.sendRedirect("signin.jsp");

}
/*
    if (UserName == ownseller of product){than show the error


    }*/






String product_name= request.getParameter("product_name");
session.setAttribute("product_name", product_name);
String product_prize= request.getParameter("p_prize");

%>

</head>
    <body>
        <div id="main_container">

    <%@include  file="topbar.jsp" %>
    <%@include file="header.jsp" %>
     <div id="main_content">

       <%@include file="menubar.jsp" %>




       <%@include file="leftcontent.jsp" %>

      
<div class="center_content" id="center_content">
   	<div class="center_title_bar"><%=product_name%></div>

    	<div class="prod_box_big">
        	<div class="top_prod_box_big"></div>

<div class="center_prod_box_big">
   
   <div class="details_big_box">
                         <div class="product_title_big"><%=product_name%></div>

                         <div class="specifications2">

 Last Bid is:
 <br />
 

 <%

//get the product name

//get the user name
//String username = (String) request.getParameter();

Connection con1 = null;
            ResultSet rst1 = null;
            Statement st1 = null;
            int highestbid = 0;
            try{
                 Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");

                 con1 = DriverManager.getConnection("jdbc:odbc:register");
                 st1 = con1.createStatement();
              
                 rst1 = st1.executeQuery("SELECT MAX(Bid) FROM bidding WHERE Product_Name='"+product_name+"'");
                 
while(rst1.next()){
        
      

 %>
 <%highestbid= rst1.getInt(1);
    out.println(highestbid);
 %>

 <%
                  }}  catch(Exception e){e.printStackTrace();}
            finally{
                con1.close();
               

}



                   %>
                   

 <%
Calendar cal = Calendar.getInstance();
Calendar currentcal = Calendar.getInstance();
cal.set(2012,05,29);
currentcal.set(currentcal.get(Calendar.YEAR),
currentcal.get(Calendar.MONTH), currentcal.get(Calendar.DAY_OF_MONTH));
if(cal.after(currentcal))
    {%>
           <form action="/eauction/setthebidservlet" name="frmBid">
Set the bid: <input type="number" name="bid" min="" id="bid"/><br />
<%session.setAttribute("prod_name",product_name);%>
<input type="button" value="submit" onclick ="checkBid()" /><br />
<%
}else{
    %>
   
    The bid is closed....
    <%
}%>
                   </form>
           <%


            Connection co = null;
            Statement s;
            ResultSet rs;
            try{
                 Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");

                 co = DriverManager.getConnection("jdbc:odbc:register");
                 s = co.createStatement();
                 rs = s.executeQuery("select * from bidding where Product_Name='"+product_name+"'");
                //int i = s.executeUpdate("insert into categories values('"+categoryname+"','"+categorypage+"')");
                %> 
<%
    

      %>
Bid history of the product:
          <div class="bidhistory1">

           <table>
               <tr>

                   <th><img src="images/buttons/username.png"></th>
                   <th><img src="images/buttons/bid.png"></th>
                   <th><img src="images/buttons/date.png"></th>
                   <th><img src="images/buttons/time.png"></th>
                   
               </tr>
               <% while(rs.next()){%>
               <tr class="bidhistorytable">

                   <td><%=rs.getString(5)%></td>
                   <td><%=rs.getString(2)%></td>
                   <td><%=rs.getString(6)%></td>
                   <td><%=rs.getString(7)%></td>
                  
               </tr>
                   <%} %>
           </table> </div>
           <%


                 }catch(Exception e){e.printStackTrace();}

finally{
                co.close();
               

}

 %>
         
         
 <%
  Connection conbid = null;
            Statement stbid;
            ResultSet rsbid;
            String endDate = "";
          
            try{
                 Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");

                 conbid = DriverManager.getConnection("jdbc:odbc:register");
                 stbid = co.createStatement();
                 rsbid = stbid.executeQuery("select * from product_registration1 where Product_Name='"+product_name+"'");
                 while(rsbid.next()){
                     endDate = rsbid.getString(11);
                     }
                 }catch(Exception e){e.printStackTrace();}
 
%>

        Time Left for Bid is:
        <%
          
         // out.println(endDate);
            String end_date[] = endDate.split("/");
            Calendar calEnd =  Calendar.getInstance();
            calEnd.set(Integer.parseInt(end_date[2]), Integer.parseInt(end_date[0]),Integer.parseInt(end_date[1]));
            Calendar calToday = new GregorianCalendar();
            calToday = Calendar.getInstance();
            calToday.set(calToday.get(Calendar.YEAR),calToday.get(Calendar.MONTH)+1,calToday.get(Calendar.DATE));
          //  out.println("Yerar"+calToday.get(Calendar.YEAR));
           // out.println("Yerar"+calToday.get(Calendar.MONTH));
            //  out.println("Yerar"+calToday.get(Calendar.DATE));
             long milliseconds1 = calToday.getTimeInMillis();
        long milliseconds2 = calEnd.getTimeInMillis();
        long diff1 = milliseconds2 - milliseconds1;
        long diffSeconds = diff1 / 1000;
        long diffMinutes = diff1 / (60 * 1000);
        long diffHours = diff1 / (60 * 60 * 1000);
        long diffDays = diff1 / (24 * 60 * 60 * 1000);
      //  System.out.println("\nThe Date Different Example");
      // System.out.println("Time in milliseconds: " + diff1 + " milliseconds.");
      //  System.out.println("Time in seconds: " + diffSeconds + " seconds.");
        //System.out.println("Time in minutes: " + diffMinutes + " minutes.");
        //System.out.println("Time in hours: " + diffHours + " hours.");
       //out.println("Time in days: " + diffDays + " days.");
        int finalhrs  =(int)(diffHours/(diffDays*24));
        int finalmin = (int)(diffMinutes/(finalhrs*60*diffDays*24));
        int finalsec = (int)(diffSeconds/(finalmin*60*diffDays*24*finalhrs*60));
        out.println(diffDays+"Day(s) "+finalhrs+"Hour(s) "+finalmin+"Minitue(s) "+finalsec+"Sec(s)");

        %>
        <br />



      
        
   </div>
                     </div>



            </div>

        </div></div>

   <!-- end of center content -->

   <%@include file="rightcontent.jsp" %>


   </div><!-- end of main content -->



   <%@include file="footer.jsp" %>


</div>
   <script type="text/javascript">
       function checkBid(){
           var newbid = document.getElementById('bid').value;
           var oldbid =<%=highestbid%>;
           if(oldbid > newbid){
               alert("Bid Should Be Heigher than Last Bid");
             
           }
           else{
              
               document.frmBid.submit();
               
           }
          
           

       
       }
   </script>
    </body>
</html>
