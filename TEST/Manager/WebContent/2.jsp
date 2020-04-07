<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html> 
<head> 
<meta charset="utf-8">
<title>出错啦~~~</title> 
<script type="text/javascript"> 
	var i = 5; 
	var intervalid; 
	intervalid = setInterval("delay()", 1000); 
	function delay() { 
		if (i == 0) { 
		window.location.href = " login.jsp"; 
		clearInterval(intervalid); 
	} 
		document.getElementById("mes").innerHTML = i; 
		i--; 
	} 
</script> 
</head> 
<body> 
<div id="errorfrm" align="center"> 
	<h3>出错啦~~~</h3> 
	<div id="error" align="center"> 
		<img src="img/404.jpg" style="height: 300px;width: 400px"/> 
		<p>登陆失败，请检查用户名和密码是否正确！</p> 
		<p>将在 <span id="mes">5</span> 秒钟自动后返回登录页面！</p>不想等待？点击<a href="login.jsp">这里</a>跳转。 
	</div> 

</div> 
</body> 
</html> 