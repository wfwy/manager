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
<ul class="layui-nav layui-nav-tree layui-inline"  style="margin-right: 10px;">

  <li class="layui-nav-item"><a href="">首页</a></li>
  
  <li class="layui-nav-item layui-nav-itemed">
    <a href="javascript:;">个人信息</a>
    <dl class="layui-nav-child">
      <dd><a href="showStudent.jsp" target="iframe1">个人信息</a></dd>
    </dl>
  </li>
  <li class="layui-nav-item">
    <a href="javascript:;">评分信息</a>
    <dl class="layui-nav-child">
      <dd><a href="addpointmessage.jsp" target="iframe1">加分信息</a></dd>
      <dd><a href="dedpointmessage.jsp" target="iframe1">扣分信息</a></dd>
    </dl>
  </li>
  <li class="layui-nav-item">
    <a href="changestupwd.jsp" target="iframe1">密码修改</a>
  </li>
</ul>
</body>
</html>