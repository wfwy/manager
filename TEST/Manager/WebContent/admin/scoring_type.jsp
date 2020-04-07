<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>评分项目录入</title>
</head>
<body>
   <form action="scoring_typeServlet" method="post">
   <br><div align="center">评分项目录入</div><br>
   <div align="center">
   	<table>
   	<tr>
   		<td>评分类型：</td>
   		<td><select name="type">   
        <option value ="日常考勤">日常考勤</option>
        <option value ="校内活动">校内活动</option>
        <option value ="比赛获奖">比赛获奖</option>
        </select>
        </td>
   	</tr>
   	<tr>
   		<td>项目名称：</td>
   		<td><input type="text" name="item" ></td>
   	</tr>
   	<tr>
   		<td>项目分数：</td>
   		<td>
   		<select name="score">   
        <option value ="1">1</option>
        <option value ="2">2</option>
        <option value ="3">3</option>
        <option value ="4">4</option>
        <option value ="5">5</option>
        <option value ="-5">-5</option>
        <option value ="-4">-4</option>
        <option value ="-3">-3</option>
        <option value ="-2">-2</option>
        <option value ="-1">-1</option>             
        </select>分 
   		</td>
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