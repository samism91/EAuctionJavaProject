<%-- 
    Document   : validationjquery
    Created on : Apr 16, 2012, 11:56:17 AM
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
<script type="text/javascript">
function check(value){
xmlHttp=GetXmlHttpObject()

xmlHttp.onreadystatechange=stateChanged
xmlHttp.open("GET","check.jsp?email="+value,true)
xmlHttp.send(null)
}
function stateChanged(){
if(xmlHttp.readyState==4 || xmlHttp.readyState=="complete"){
 
    document.getElementById("mydiv").innerHTML=  xmlHttp.responseText;
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
<form name="form">
 UserName: <input  type="text" name="email" id="email" onkeyup="check(this.value);"><font color="red"><div id="mydiv"></div></font>
</form>

</body>
</html>
    </body>
</html>
