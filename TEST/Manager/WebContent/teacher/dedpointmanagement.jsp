<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="com.DBUtil.JdbcConnection,java.sql.*,com.vo.*,com.dao.*" %>
<%@page import="java.util.ArrayList"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>扣分信息管理</title>

<script type="text/javascript">
function deleteAction(){
    document.form1.action="dedpointmanagement";
    document.form1.submit();
} 
 function button1(){
	 window.open('dedpoint.jsp');
 }
 
 </script>
</head>
<body>
<%
	ArrayList<Score> scores=new ScoreDAO().getdedpoint();
	if(scores==null){
		scores=new ArrayList<>();
	}
%>
<br><div align="center">扣分信息管理</div><br>
<form method="post" name="form1">
<div align="center"> 
<table border="1" cellpadding="0" cellspacing="0">
<tr>
	<td>编辑</td>
	<td>学生姓名</td>
	<td>评分类型</td>
	<td>分数</td>
	<td>备注</td>
	
</tr>
<% for(Score score:scores){ %>
<tr>

	<td><input name="s_name" type="radio" value="<%=score.getName() %>" /></td>
	<td><%=score.getName() %></td>
	<td><%=score.getType() %></td>
	<td><%=score.getScore() %></td>
	<td><%=score.getRemark() %></td>
</tr>
<%}%>
</table>
</div>
</form>
<div align="center">
	<button type="submit" onclick="button1()">添加</button>
	<input type="submit" value="删除"  onclick="deleteAction()">
</div>



</body>
</html>