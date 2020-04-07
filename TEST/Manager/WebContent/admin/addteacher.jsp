<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>教师信息录入</title>
</head>
<body>
<form action="addteacher" method="post" >
<br><div align="center">信息录入</div><br>
<div align="center"> 
<table>
<tr>
	<td>工号：</td>
	<td><input type="text" name="t_num"></td>
</tr>
<tr>
	<td>姓名：</td>
	<td><input type="text" name="name"></td>
</tr>
<tr>
	<td>性别：</td>
	<td><label><input name="sex" type="radio" value="男" />男 </label>
	<label><input name="sex" type="radio" value="女" />女 </label>
	</td>
</tr>
<tr>
	<td>年龄：</td>
	<td><input type="text" name="age"></td>
</tr>
<tr>
	<td>职称：</td>
	<td><input type="text" name="title"></td>
</tr>
<tr>
	<td>学院：</td>
	<td><select name="college" >
    <option value="0">选择学院</option>
    <option value="汽车工程学院">汽车工程学院</option>
    <option value="信息工程学院">信息工程学院</option>
    <option value="机电学院">机电学院</option>
    </select></td>
</tr>
<tr>
	<td>密码：</td>
	<td><input type="text" name="password"></td>
</tr>
</table>
</div>
<div align="center">
	<input type="submit" value="提交">&nbsp;&nbsp;&nbsp;&nbsp;
	<input type="reset" name="重置">
</div>
</form>
</body>
</html>