<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@page import="java.util.*,javax.servlet.*"%>
<!DOCTYPE html>
<html>
<head>
<%if(session.getAttribute("username")==null)
	{
		out.print("<script>alert('请先登录！ ');window.open('login.jsp','_self')</script>");
	}
%>

<style>
#header {
    background-color:black;
    color:white;
    text-align:center;
    padding:5px;
}
#nav {
    line-height:30px;
    background-color:#eeeeee;
    height:500px;
    width:210px;
    float:left;
    padding:1px;	      
}
#section {
    height:500px;
    width:1100px;
    float:left;
    padding:10px;	 	 
}
#footer {
    background-color:black;
    color:white;
    clear:both;
    text-align:center;
   padding:5px;	 	 
}
</style>
<meta charset="UTF-8">
<title>管理系统</title>
</head>
<body>
<div id="header">
 	<%@ include file="head.jsp"%>
	
</div>

<div id="nav">
	<%String type=(String)session.getAttribute("type"); %>
	<c:set var="type" scope="session" value="<%=type %>"/>
	<c:if test="${type==1}">
	<iframe src="student/s_index.jsp" width="100%" height="100%"></iframe>
	</c:if>
	<c:if test="${type==2}">
	<iframe src="teacher/t_index.jsp" width="100%" height="100%"></iframe>
	</c:if>
	<c:if test="${type==3}">
	<iframe src="admin/index.jsp" width="100%" height="100%"></iframe>
	</c:if>
</div>

<div id="section">
   <iframe name="iframe1" src="1.jsp" width="100%" height="100%"></iframe>
</div>

<div id="footer">
  <%@ include file="foot.jsp"%>
</div>


</body>
</html>