<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="com.DBUtil.JdbcConnection,java.sql.*,com.vo.*,com.dao.*" %>
<%@page import="java.util.ArrayList"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">zz
<title>Insert title here</title>
</head>
<body>

<br><div align="center">校内活动评分</div><br>
<div align="center">
<form action="summaryserach.jsp"> 
<select name="type">
<option value="0">--选择要查询项--</option>
<option value="日常考勤">日常考勤</option>
<option value="校内活动">校内活动</option>
<option value="比赛获奖">比赛获奖</option>
</select>
<input type="text" name="s_num">
<input type="submit" value="查询">
</form>
</div>


<div align="center">
	<table border="1" cellpadding="0" cellspacing="0">
		<thead>
			<tr><td>学号</td>
				<td>姓名</td>
				<td>类型</td>
				<td>评分类型</td>
				<td>分数</td>
				<td>备注</td>
				<td>编辑</td>
			</tr>
		</thead>
		<tbody>

<%
int intPageSize;           //一页显示的记录数
int intRowCount;           //记录总数
int intPageCount;          //总页数
int intPage;               //待显示页码
int i;
//设置一页显示的记录数
intPageSize = 10;
//取得待显示页码
 String strPage = request.getParameter("page");
if(strPage==null){
    //表明在QueryString中没有page这一个参数，此时显示第一页数据
    intPage = 1;
} else {
    //将字符串转换成整型
    intPage =java.lang.Integer.parseInt(strPage);
    if(intPage<1) intPage = 1;
}
String sql = "select score.s_num,score.name,item.type,score.itme,score.score,score.remark FROM score,item where score.itme=item.item ";
Connection conn= JdbcConnection.getConn();
PreparedStatement pstm=conn.prepareStatement(sql);
ResultSet rs=pstm.executeQuery();
//获取记录总数
rs.last();
intRowCount=rs.getRow();
//记算总页数
intPageCount = (intRowCount+intPageSize-1) /intPageSize;
//调整待显示的页码
if(intPage>intPageCount) 
	intPage = intPageCount;
if(intPageCount>0) {
    //将记录指针定位到待显示页的第一条记录上
    rs.absolute((intPage-1)* intPageSize + 1);
    //显示数据
    i = 0;
    while(i<intPageSize &&!rs.isAfterLast()){
    	out.print("<tr>");
		out.print("<td>"+rs.getString("score.s_num")+"</td>");
		out.print("<td>"+rs.getString("score.name")+"</td>");
		out.print("<td>"+rs.getString("item.type")+"</td>");
		out.print("<td>"+rs.getString("score.itme")+"</td>");
		out.print("<td>"+rs.getString("score.score")+"</td>");
		out.print("<td>"+rs.getString("score.remark")+"</td>");
		out.print("<td><a href='AlertStudent.jsp?id="+rs.getString(1)+"'><button class='btn btn-primary'>修改</button></a><a href='DaoDelete.jsp?id="+rs.getString(1)+"' onclick='javascript:return del();'><button class='btn btn-danger'>删除</button></a></td>");
		out.print("</tr>");
		rs.next();
        i++;
        }
     }

%>
	</tbody>
</table>


<br><table>
<tr>
	<td>

 		第<%=intPage%>页 共<%=intPageCount%>页
        <% //以下是分页的“上一页”“下一页”，有上一页就有链接，没有就为文字，下一页同理%>
        <% if(intPage>1){ %>
            <a href="NewFile.jsp?page=<%=intPage-1%>">上一页</a>
        <% }else{ %>
            上一页
        <%}%>
        <% if(intPage<intPageCount){ %>
            <a href="NewFile.jsp?page=<%=intPage+1%>">下一页</a>
        <% }else{ %>
            下一页
        <%}%>

	</td>
</tr>
</table>
</div>
</body>
</html>