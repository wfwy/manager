<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="../layui/css/layui.css"  media="all">
<script src="../layui/layui.js" charset="utf-8"></script>
<script>
layui.use('element', function(){
  var element = layui.element; //导航的hover效果、二级菜单等功能，需要依赖element模块
  //监听导航点击
  element.on('nav(demo)', function(elem){
    //console.log(elem)
    layer.msg(elem.text());
  });
});
</script>
</head>
<body>
<ul class="layui-nav layui-nav-tree layui-inline" lay-filter="demo" style="margin-right: 10px;">

  <li class="layui-nav-item"><a href="">首页</a></li>
  <li class="layui-nav-item layui-nav-itemed">
    <a href="javascript:;">数据管理</a>
    <dl class="layui-nav-child">
      <dd><a href="studentmessage.jsp" target="iframe1">学生数据</a></dd>
      <dd><a href="teachermanager.jsp" target="iframe1">教师数据</a></dd>
    </dl>
  </li>
  <li class="layui-nav-item">
    <a href="javascript:;">评分管理</a>
    <dl class="layui-nav-child">
      <dd><a href="scoring_typemanagement.jsp" target="iframe1">评分类型数据</a></dd>
      <dd><a href="record.jsp" target="iframe1">操作记录</a></dd>
    </dl>
  </li>
  <li class="layui-nav-item"><a href="changeadmpwd.jsp" target="iframe1">密码修改</a></li>
</ul>
</body>
</html>