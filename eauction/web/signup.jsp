
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=windows-1252" />
<title>Auction Web Portal </title>
<link rel="stylesheet" type="text/css" href="style.css" />
<!--[if IE 6]>
<link rel="stylesheet" type="text/css" href="iecss.css" />
<![endif]-->
<script type="text/javascript" src="js/boxOver.js"></script>
<script type="text/javascript">
             function check(value)
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
                document.getElementById("mydiv").innerHTML=xmlhttp.responseText;
                //alert("Got");
                }
                else{
               document.getElementById("center_content").innerHTML="<center><img src='images/ajax-loader.gif'/></center>";
                }
                }
                xmlhttp.open("GET","check.jsp?email="+value,true);
                xmlhttp.send();
                }
             </script>
<script type="text/javascript">
             function check2(value)
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
                document.getElementById("mydiv2").innerHTML=xmlhttp.responseText;
                //alert("Got");
                }
                else{
               document.getElementById("center_content").innerHTML="<center><img src='images/ajax-loader.gif'/></center>";
                }
                }
                xmlhttp.open("GET","check2.jsp?name="+value,true);
                xmlhttp.send();
                }
             </script>

 <script type="text/javascript">
function check3(value){
xmlHttp=GetXmlHttpObject()

xmlHttp.onreadystatechange=stateChanged
xmlHttp.open("GET","checkphone.jsp?phone="+value,true)
xmlHttp.send(null)
}
function stateChanged(){
if(xmlHttp.readyState==4 || xmlHttp.readyState=="complete"){

    document.getElementById("mydiv3").innerHTML=  xmlHttp.responseText;
    }
}
function GetXmlHttpObject(){
var xmlHttp=null;
try{
  xmlHttp=new XMLHttpRequest();
 }
catch (e) {
 try {
  xmlHttp=new ActiveXObject("Msxml2.XMLHTTP");
  }
 catch (e){
  xmlHttp=new ActiveXObject("Microsoft.XMLHTTP");
  }
 }
return xmlHttp;
}
 </script>
<script type="text/javascript">
function check4(value){
xmlHttp=GetXmlHttpObject()

xmlHttp.onreadystatechange=stateChanged
xmlHttp.open("GET","checkpassword.jsp?pwd="+value,true)
xmlHttp.send(null)
}
function stateChanged(){
if(xmlHttp.readyState==4 || xmlHttp.readyState=="complete"){

    document.getElementById("mydiv4").innerHTML=  xmlHttp.responseText;
    }
}
function GetXmlHttpObject(){
var xmlHttp=null;
try{
  xmlHttp=new XMLHttpRequest();
 }
catch (e) {
 try {
  xmlHttp=new ActiveXObject("Msxml2.XMLHTTP");
  }
 catch (e){
  xmlHttp=new ActiveXObject("Microsoft.XMLHTTP");
  }
 }
return xmlHttp;
}
 </script>



</head>
<body>

<div id="main_container">

    <%@include  file="topbar.jsp" %>
    <%@include file="header.jsp" %>

   <div id="main_content">

       <%@include file="menubar.jsp" %>


    <div class="crumb_navigation">
    Navigation: <span class="current">Home</span>

    </div>


       <%@include file="leftcontent.jsp" %>



<!-- register -->







   <!-- end of register -->
   
   
   <div class="center_content">
   <div class="center_title_bar">Registartion Form</div></br></br>
   <div class="prod_box_big">
     <div class="top_prod_box_big"></div>
     <div class="center_prod_box_big">
       <div class="contact_form">
         <form action="/eauction/WelcomeServlet" method="post">
           <div class="form_row">
            <label class="contact"><strong>Name:</strong></label>
           <input type="text" class="contact_input"  onkeyup="check2(this.value);" required="required" name="name"  id="name"/>
           <font color="red"> <div id="mydiv2"></div></font>
         </div>
         <div class="form_row">
           <label class="contact"><strong>Email:</strong></label>
           <input type="email" class="contact_input" onkeyup="check(this.value);" name="email" id="email" />
               <font color="red"> <div id="mydiv"></div></font>
         </div>
         <div class="form_row">
           <label class="contact"><strong>Password:</strong></label>
           <input type="password" class="contact_input" onkeyup="check4(this.value);" id="pass" name="pass" required="required" />
           <font color="red"> <div id="mydiv4"></div></font>
         </div>
         <div class="form_row">
           <label class="contact"><strong>Phone:</strong></label>
           <input type="tel" class="contact_input" min="8" max="10" onkeyup="check3(this.value);"  id="phone" name="phone" required="required" />
             <font color="red"> <div id="mydiv3"></div></font>
         </div>
         <div class="form_row">
           <label class="contact"><strong>Country:</strong></label>
           <input type="text" class="contact_input" name="country" required="required" />
         </div>
          
         <p>&nbsp;</p>
         <p>&nbsp;</p>
         <div class="form_row">
             <input type="image" src="images/GoDf5.gif" alt="submit form"/>
         </div>
         </form>
          </div>
       </div>
     </div>
     
   </div>
 
   <!-- end of center content -->
<%@include file="rightcontent.jsp" %>


   </div><!-- end of main content -->



   <%@include file="footer.jsp" %>


</div>
<!-- end of main_container -->
</body>
</html>