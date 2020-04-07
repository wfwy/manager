<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>学生信息录入</title>

<script>
 majors = new Object();
 majors['汽车工程学院']=new Array('汽车技术服务与营销', '汽车检测与维修技术');
 majors['信息工程学院']=new Array('信息工程', '物联网工程', '计算机科学与技术');
 majors['机电学院']=new Array('机械制造', '数控技术', '机械一体化');
 function set_city(college, major)
 {
     var pv, cv;
     var i, ii;
     pv=college.value;
     cv=major.value;
     major.length=1;
     if(pv=='0') return;
     if(typeof(majors[pv])=='undefined') return;
     for(i=0; i<majors[pv].length; i++)
     {
        ii = i+1;
        major.options[ii] = new Option();
        major.options[ii].text = majors[pv][i];
        major.options[ii].value = majors[pv][i];
     }
 }
 </script>


</head>
<body>
<form action="addstudent" method="post" >
<br><div align="center">信息录入</div><br>
<div align="center"> 
<table>
<tr>
	<td>学号：</td>
	<td><input type="text" name="s_num"></td>
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
	<td>班级：</td>
	<td><input type="text" name="classes"></td>
</tr>

<tr>
	<td>学院：</td>
	<td>
	<select name="college" onChange="set_city(this, this.form.major);">
    <option value="0">选择学院</option>
    <option value="汽车工程学院">汽车工程学院</option>
    <option value="信息工程学院">信息工程学院</option>
    <option value="机电学院">机电学院</option>
    </select>
	</td>
</tr>
<tr>
	<td>专业：</td>
	<td><select name="major" id="majors">
    		<option value="0">选择专业</option>
		</select>
	</td>
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