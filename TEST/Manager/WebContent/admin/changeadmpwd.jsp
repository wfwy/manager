<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<br><div align="center">密码修改</div><br>
<form action="changeadmpwd" method="post">
<div align="center">
	<table>
		<tr>
			<td>用户名：</td>
			<td><input type="text" name="username"></td>
		</tr>
		<tr>
			<td>原密码：</td>
			<td><input type="password" name="password"></td>
		</tr>
		<tr>
			<td>新密码：</td>
			<td><input type="password" name="newpwd"></td>
		</tr>
		<tr>
			<td>确认密码：</td>
			<td><input type="password" name="newpwdtwo"></td>
		</tr>		
	</table>
</div>
<div align="center">
<input type="submit" value="提交">
<input type="reset" value="重置">
</div>
</form>
</body>
</html>