<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>www.mldnjava.cn，MLDN高端Java培训</title>
<script language="javascript">
		var xmlHttp ;
		function createXMLHttp(){
			if(window.XMLHttpRequest){
				xmlHttp = new XMLHttpRequest() ;
			} else {
				xmlHttp = new ActiveXObject("Microsoft.XMLHTTP") ;
			}
		}
		function getCity(){
			createXMLHttp() ;
			xmlHttp.open("POST","/test/CityServlet") ;
			xmlHttp.onreadystatechange = getCityCallback ;
			xmlHttp.send(null) ;
		}
		function getCityCallback(){
			if(xmlHttp.readyState == 4){
				if(xmlHttp.status == 200){
					var test=xmlHttp.responseText;
					var div =document.getElementById('test');
					div.innerHTML=test;


				

					    var jsonobj=eval('('+test+')');  
					    alert(jsonobj.firstName);   
					}
				}
			}
	</script>
</head>
<body onload="getCity()">
	<div id='test'></div>
</body>
</html>