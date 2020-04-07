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
<meta charset="UTF-8">
<title>学生界面</title>
</head>
<body>
<div>
      <ul>
         <li class="dropdown"><a class="active" href="">首页</a></li>
         
         <li class="dropdown">
             <a href="student/showStudent.jsp" target="iframe1">个人信息</a>
         </li>
         <li class="dropdown">
             <a  href="student/addpointmessage.jsp" target="iframe1">加分信息</a>
         </li>
         <li class="dropdown">
             <a href="student/dedpointmessage.jsp" target="iframe1">扣分信息</a>
         </li>
         <li class="dropdown">
             <a href="student/changestupwd.jsp" target="iframe1">密码修改</a>
         </li>
    </ul>
</div>
</body>
</html>