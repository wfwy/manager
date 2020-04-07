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

</head>
<body>
	<%
	    request.setCharacterEncoding("utf-8");
		String username=(String)session.getAttribute("username");
		int id=Integer.valueOf(request.getParameter("id"));
		int type=Integer.valueOf(request.getParameter("type"));
		String ty=null;
		if(type==1){
			ty="校内活动";
		}else if(type==2){
			ty="比赛获奖";
		}else{
			ty="日常考勤";
		}
	    Connection conn= JdbcConnection.getConn();
	    String sql = "select score.s_num,score.name,score.itme,score.score,score.remark FROM score,item where score.itme=item.item and item.type='"+ty+"' AND  score.id="+id+"";
	    PreparedStatement pstm=conn.prepareStatement(sql);
	    ResultSet rs=pstm.executeQuery();
	%>
	
	


<br><div align="center"><fieldset class="layui-elem-field layui-field-title" style="margin-top: 20px;">
  <legend>评分修改</legend>
</fieldset></div>	
	
<div style="width: 400px;margin: 0 auto;">
<form action="updatescore?user=<%=username %>&id=<%=id %>&type=<%=type %>" method="post">
<% while(rs.next()){ %>
 <div class="layui-form-item">
    <label class="layui-form-label">学号：</label>
    <div class="layui-input-inline">
      <input type="text" name="s_num" autocomplete="off" class="layui-input" value="<%=rs.getString("score.s_num") %>">
    </div>
  </div>
  
 <div class="layui-form-item">
    <label class="layui-form-label">姓名：</label>
    <div class="layui-input-inline">
      <input type="text" name="name" value="<%=rs.getString("score.name") %>" autocomplete="off" class="layui-input">
    </div>
  </div>

<div class="layui-form-item">
    <label class="layui-form-label">评分项目：</label>
    <div class="layui-input-inline">
      <input type="text" name="itme" value="<%=rs.getString("score.itme") %>" autocomplete="off" class="layui-input">
    </div>
  </div>
  <div class="layui-form-item layui-form-text">
    <label class="layui-form-label">备注</label>
    <div class="layui-input-inline">
      <textarea name="remark" class="layui-textarea"><%=rs.getString("score.remark") %></textarea>
    </div>
  </div>
  <%}%>
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