<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.DBUtil.JdbcConnection,java.sql.*,com.vo.*,com.dao.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>学生信息修改</title>
</head>
<body>
<%
  request.setCharacterEncoding("utf-8");
  String id=request.getParameter("s_num");
  Connection conn= JdbcConnection.getConn();
  String sql = "select * from student where s_num='"+id+"'";
  PreparedStatement pstm=conn.prepareStatement(sql);
  ResultSet rs=pstm.executeQuery();     
%>

<form action="StudentManagement_Upd" method="post" >
<br><div align="center">信息修改</div><br>
<div align="center"> 

<table>
<%
	while(rs.next()){
%>
<tr>
	<td>学号：</td>
	<td><input type="text" name="s_num" value="<%=rs.getString("s_num") %>"></td>
</tr>
<tr>
	<td>姓名：</td>
	<td><input type="text" name="name" value="<%=rs.getString("name") %>"></td>
</tr>
<tr>
	<td>性别：</td>
	<td><input type="text" name="sex" value="<%=rs.getString("sex") %>"></td>
</tr>
<tr>
	<td>年龄：</td>
	<td><input type="text" name="age" value="<%=rs.getString("age") %>"></td>
</tr>
<tr>
	<td>班级：</td>
	<td><input type="text" name="classes" value="<%=rs.getString("classes") %>"></td>
</tr>
<tr>
	<td>专业：</td>
	<td><input type="text" name="major" value="<%=rs.getString("major") %>"></td>
</tr>

<tr>
	<td>学院：</td>
	<td><input type="text" name="college" value="<%=rs.getString("college") %>"></td>
</tr>

<tr>
	<td>密码：</td>
	<td><input type="text" name="password" value="<%=rs.getString("password") %>"></td>
</tr>
<% }%>
<tr>
	<td><input type="submit" value="提交" ></td>
	<td><input type="reset" name="重置" ></td>
</tr>
</table>
</div>
</form>  
</body>
</html>