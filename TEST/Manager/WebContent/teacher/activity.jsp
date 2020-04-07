<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.DBUtil.JdbcConnection,java.sql.*,com.vo.*,com.dao.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="../layui/css/layui.css"  media="all">
<script src="../layui/layui.js" charset="utf-8"></script>
<script>
//Demo
layui.use('form', function(){
  var form = layui.form;
  
  //监听提交
  form.on('submit(formDemo)', function(data){
    layer.msg(JSON.stringify(data.field));
    return false;
  });
});
</script>
</head>
<body>
	<%
	    request.setCharacterEncoding("utf-8");
		String username=(String)session.getAttribute("username");
	    Connection conn= JdbcConnection.getConn();
	    String sql = "select item from item where type='校内活动'";
	    PreparedStatement pstm=conn.prepareStatement(sql);
	    ResultSet rs=pstm.executeQuery();
	%>
<br><div align="center"><fieldset class="layui-elem-field layui-field-title" style="margin-top: 20px;">
  <legend>校内活动</legend>
</fieldset></div>	
	
<div style="width: 400px;margin: 0 auto;">
<form action="score?user=<%=username %>&t=1" method="post" class="layui-form">	
 <div class="layui-form-item">
    <label class="layui-form-label">学号：</label>
    <div class="layui-input-inline">
      <input type="text" name="s_num" required  placeholder="请输入学号" autocomplete="off" class="layui-input">
    </div>
  </div>
  
 <div class="layui-form-item">
    <label class="layui-form-label">姓名：</label>
    <div class="layui-input-inline">
      <input type="text" name="name" required  placeholder="请输入姓名" autocomplete="off" class="layui-input">
    </div>
  </div>

<div class="layui-form-item">
    <label class="layui-form-label">评分项目：</label>
    <div class="layui-input-inline">
      <select name="item">
		<option value="">--请选择评分项--</option>
		<% while(rs.next()){ %>
		<option value="<%=rs.getString("item") %>"><%=rs.getString("item") %></option>				
		<%}%>
	</select>
    </div>
  </div>
  <div class="layui-form-item layui-form-text">
    <label class="layui-form-label">备注</label>
    <div class="layui-input-inline">
      <textarea name="remark" placeholder="请输入内容" class="layui-textarea"></textarea>
    </div>
  </div>
   <div class="" align="center">
    <div class="layui-input-inline">
      <input type="submit" value="提交" class="layui-btn">
      <button type="reset" class="layui-btn layui-btn-primary">重置</button>
    </div>
  </div>	
</form>	
</div>
</body>
</html>