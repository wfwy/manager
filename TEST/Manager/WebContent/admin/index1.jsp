<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>

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
    color: black;
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

<meta charset="UTF-8">
<title>管理员界面</title>
</head>
<body>

<div>
      <ul>
         <li class="dropdown"><a class="active" href="">首页</a></li>
         <li class="dropdown">
             <a class="active" href="">数据管理</a>
             <ul class="menu">
                 <li><a href="admin/studentmessage.jsp" target="iframe1">学生数据</a></li>
			  <li><a href="admin/teachermanager.jsp" target="iframe1">教师数据</a></li>
			  
             </ul>
         </li>
         <li class="dropdown">
             <a class="active" href="">评分管理</a>
             <ul class="menu">
                 <li><a href="admin/scoring_typemanagement.jsp" target="iframe1">评分类型数据</a></li>
                 <li><a href="admin/record.jsp" target="iframe1">操作记录</a></li>
             </ul>
         </li>
         <li class="dropdown">
             <a  class="active" href="admin/changeadmpwd.jsp" target="iframe1">密码修改</a>
         </li>
    </ul>
</div>

</body>
</html>