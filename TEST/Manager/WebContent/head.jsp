<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Insert title here</title>
<link rel="stylesheet" href="../layui/css/layui.css"  media="all">
<script src="../layui/layui.js" charset="utf-8"></script>
<script type="text/javascript">
			function exit() {
				if(!confirm("是否退出系统？")) {
					window.event.returnValue = false;
				}
			}
		</script>
</head>
<body>

<%
request.setCharacterEncoding("utf-8");
String username=(String)session.getAttribute("username");
%>
<h1 align="center">学生评分管理系统</h1>
<marquee style="WIDTH: 200px; HEIGHT: 20px" scrollamount="2" direction="left" >
欢迎<%=username %>登陆日常评分管理系统，请规范操作！
</marquee >
<div align="right">

用户：<%=username %>,<a href="exit.jsp" onclick='javascript:return exit();'><font face="黑体" color="#008000" size="4" >退出系统</font ></a>
</div>

</body>
</html>