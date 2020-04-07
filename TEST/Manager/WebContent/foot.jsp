<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Insert title here</title>
<style>
	span{
		color:red;
	}
</style>
<script type="text/javascript">
	function gettime() {

		document.getElementById("time").innerHTML = new Date().toLocaleString();

		window.setTimeout("gettime()", 1000);

	}

	window.onload = gettime;
</script>
</head>
<body>
<div align="center">
当前时间:
	<span id='time'></span>
	</div>
</body>
</html>