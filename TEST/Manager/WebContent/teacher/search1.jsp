<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ page import="com.DBUtil.JdbcConnection,java.sql.*,com.vo.*,com.dao.*" %>
<%@page import="java.util.ArrayList"%>       
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Insert title here</title>
<link rel="stylesheet" href="../layui/css/layui.css"  media="all">
<script src="../layui/layui.js" charset="utf-8"></script>
<script src="../js/addstudent.js" charset="utf-8"></script>
<script type="text/javascript">
			function del() {
				if(!confirm("确认要删除？")) {
					window.event.returnValue = false;
				}
			}
		</script>
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
<br><div align="center">信息管理</div><br>
<div align="center">
<form action="search1.jsp"> 
<select name="college" onChange="set_city(this, this.form.major);">
    <option value="0">选择学院</option>
    <option value="汽车工程学院">汽车工程学院</option>
    <option value="信息工程学院">信息工程学院</option>
    <option value="机电学院">机电学院</option>
    </select>
 <select name="major" id="majors">
    <option value="0">选择专业</option>
</select>
<input type="submit" value="查询">
</form>
</div>
<div class="site-demo-button" id="layerDemo" style="margin-bottom: 0;">
	  <button data-method="offset" data-type="auto" class="layui-btn layui-btn-normal"><i class="layui-icon"></i></button>
</div>  
<div align="center" class="layui-form">
	<table class="layui-table">
	<colgroup>
      <col width="150">
      <col width="150">
      <col width="150">
      <col width="150">
      <col width="150">
      <col width="150">
      <col width="150">
      <col>
    </colgroup>
		<thead>
			<tr>
				<td>学号</td>
				<td>姓名</td>
				<td>性别</td>
				<td>年龄</td>
				<td>班级</td>
				<td>专业</td>
				<td>学院</td>
				<td>密码</td>
				<td colspan="3">编辑</td>
			</tr>
		</thead>
		<tbody>

<%
String college = request.getParameter("college");
String major= request.getParameter("major");
String sqlQuery;
String sql = "SELECT * FROM student where college='"+college+"'and major= '"+major+"'";
Connection conn= JdbcConnection.getConn();
PreparedStatement pstm=conn.prepareStatement(sql);
ResultSet rs=pstm.executeQuery();
	while(rs.next()){
		out.print("<tr>");
		out.print("<td>"+rs.getString("s_num")+"</td>");
		out.print("<td>"+rs.getString("name")+"</td>");
		out.print("<td>"+rs.getString("sex")+"</td>");
		out.print("<td>"+rs.getString("age")+"</td>");
		out.print("<td>"+rs.getString("classes")+"</td>");
		out.print("<td>"+rs.getString("major")+"</td>");
		out.print("<td>"+rs.getString("college")+"</td>");
		out.print("<td>"+rs.getString("password")+"</td>");
		out.print("<td><a href='student_dele?s_num="+rs.getString("s_num")+"' onclick='javascript:return del();' class='layui-btn'><i class='layui-icon'></i>删除</a></td>");
		out.print("<td><a href='s_update1.jsp?s_num="+rs.getString("s_num")+"' class='layui-btn'><i class='layui-icon'></i>修改</a></td>");
		out.print("</tr>");
	}
%>
	</tbody>
</table>
</div>


</body>
</html>