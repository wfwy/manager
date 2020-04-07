<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>教师管理界面</title>
<style>
ul {
    list-style-type: none;
    margin: 0;
    padding: 0;
    width: 200px;
    background-color: #f1f1f1;
}

li a {
    display: block;
    color: #000;
    padding: 8px 16px;
    text-decoration: none;
}

li a.active {
    background-color: #4CAF50;
    color: white;
}


li a:hover:not(.active) {
    background-color: #555;
    color: white;
}
  .dropdown {
           list-style: none;   /* 标签隐藏*/
           line-height: 30px;  
           display: block;      
       }
       /*鼠标指针浮动选择*/
 .dropdown:hover
 /*二级菜单*/
 .menu li {
            list-style: none;
            line-height: 30px;
            display: block;
        }       
        .menu li {
            display: none;
            background-color: transparent;
        }
    .menu >  li:hover {
            background-color: steelblue;
        }
         
</style>
</head>
<body>
<div>
      <ul>
         <li class="dropdown"><a class="active" href="">首页</a></li>
         
         <li class="dropdown">
             <a class="active" href="">学生信息管理</a>
             <ul class="menu">
                 <li><a href="admin/addstudent.jsp" target="iframe1">信息录入</a></li>
                 <li><a href="admin/studentmessage.jsp" target="iframe1">信息管理</a></li>
             </ul>
         </li>
         <li class="dropdown">
             <a class="active" href="">日常考勤</a>
             <ul class="menu">
                 <li><a href="teacher/kaoqin.jsp" target="iframe1">评分录入</a></li>
		         <li><a href="teacher/kqseach.jsp" target="iframe1">评分查询管理</a></li>
             </ul>
         </li>
         <li class="dropdown">
             <a  class="active" href="">校内活动</a>
             <ul class="menu">
                <li><a href="teacher/activity.jsp" target="iframe1">评分录入</a></li>
		        <li><a href="teacher/acsearch.jsp" target="iframe1">评分查询管理</a></li>
             </ul>
         </li>
         <li class="dropdown">
             <a  class="active" href="">比赛获奖</a>
             <ul class="menu">
                <li><a href="teacher/huojiang.jsp" target="iframe1">评分录入</a></li>
		        <li><a href="teacher/hjsearch.jsp" target="iframe1">评分查询管理</a></li>
             </ul>
         </li>
         <li class="dropdown">
             <a  class="active" href="">积分汇总</a>
             <ul class="menu">
                <li><a href="teacher/summary.jsp" target="iframe1">积分汇总</a></li>
             </ul>
         </li>
         
         <li class="dropdown">
             <a  class="active" href="teacher/changeteapwd.jsp" target="iframe1">密码修改</a>
         </li>
    </ul>
</div>
</body>
</html>