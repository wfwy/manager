<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.DBUtil.JdbcConnection,java.sql.*,com.vo.*,com.dao.*" %>
<%@page import="java.util.ArrayList"%>
<!DOCTYPE html>
<html>
<head>
<script type="text/javascript">
//1 初始化时候,先将数据存入数组
var TempArr = [];// 存贮option
var SelectObj = document.frm.elements["itemlist"]
/* 先将数据存入数组 */
with (SelectObj){
    for (i = 0; i < length; i++){
        TempArr[i] = [ options[i].text, options[i].value ]
    }
}
//2 
function SelectTip(flag) {
    var TxtObj = document.frm.elements["type"]
    var SelectObj = document.getElementById("itemlist")
    var Arr = []
    with (SelectObj) {
        var SelectHTML = innerHTML.match(/<[^>]*>/)[0]
        for (i = 0; i < TempArr.length; i++)
            if (TempArr[i][i].indexOf(TxtObj.value) == 0 || flag)// 若找到以type的内容开头的，添option。若flag为true,对下拉框初始化
                Arr[Arr.length] = "<option value='" + TempArr[i][1] + "'>"
                        + TempArr[i][0] + "</option>"
        innerHTML = SelectHTML + Arr.join() + "</SELECT>"
    }
}
</script>
<meta charset="UTF-8">
<title>扣分信息录入</title>
</head>
<body>
<form action="dedpoint" method="post">
<br><div align="center">扣分信息录入</div><br>
<div align="center">
<table>
<tr>
<td>学生姓名：</td>
<td>
	<input type="text" list="item" name="s_name">
</td>
</tr>

<tr>
<td>评价类型：</td>
<td>
	<%
	ArrayList<ScoreType> scoreTypes=new ScoreTypeDAO().getscore_type();
	if(scoreTypes==null){
		scoreTypes=new ArrayList<>();
	}
	%>	
    <input type="text" list="itemlist" name="type" onchange="aa()" onkeyup="SelectTip(0)" onclick="SelectTip(1)">
    <% for(ScoreType scoreType:scoreTypes){ %>
    <datalist id="itemlist"  onchange="txt.value=options[selectedIndex].text;">   
	<option value="<%=scoreType.getItem() %>"><%=scoreType.getItem() %></option>
	<%}%>
	</datalist>
</td>
</tr>
<tr>
<tr>
<td>备注信息：</td>
<td>
	<textarea name="remark"></textarea>
</td>

</tr>
<tr>
		<td><input type="submit" value="提交"></td>
		<td><input type="submit" value="重置"></td>
</tr>
</table>
</div>
</form>
</body>
</html>