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
    <a href="javascript:;">学生信息管理</a>
    <dl class="layui-nav-child">
      <dd><a href="addstudent.jsp" target="iframe1">信息录入</a></dd>
      <dd><a href="studentmessage1.jsp" target="iframe1">信息管理</a></dd>
    </dl>
  </li>
  <li class="layui-nav-item">
    <a href="javascript:;">日常考勤</a>
    <dl class="layui-nav-child">
      <dd><a href="kaoqin.jsp" target="iframe1">评分录入</a></dd>
      <dd><a href="kqseach.jsp" target="iframe1">评分查询管理</a></dd>
    </dl>
  </li>
  <li class="layui-nav-item">
    <a href="javascript:;">校内活动</a>
    <dl class="layui-nav-child">
      <dd><a href="activity.jsp" target="iframe1">评分录入</a></dd>
      <dd><a href="acsearch.jsp" target="iframe1">评分查询管理</a></dd>
    </dl>
  </li>
  <li class="layui-nav-item">
    <a href="javascript:;">比赛获奖</a>
    <dl class="layui-nav-child">
      <dd><a href="huojiang.jsp" target="iframe1">评分录入</a></dd>
      <dd><a href="hjsearch.jsp" target="iframe1">评分查询管理</a></dd>
    </dl>
  </li>
  <li class="layui-nav-item">
    <a href="javascript:;">积分汇总</a>
    <dl class="layui-nav-child">
      <dd><a href="summary.jsp" target="iframe1">积分汇总</a></dd>
    </dl>
  </li>
  
  <li class="layui-nav-item"><a href="changeteapwd.jsp" target="iframe1">密码修改</a></li>
</ul>
</body>
</html>