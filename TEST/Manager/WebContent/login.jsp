<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="../layui/css/layui.css"  media="all">
<script src="../layui/layui.js" charset="utf-8"></script>

<style type="text/css">

* {
  padding: 0;
  margin: 0;
  font-family: "微软雅黑";
}

.header {
    background-color: #66CCCC;
    color:black;
    text-align:center;
    padding:5px;
    height: 50px;
    font-size: 50xp
}


.login {
  height: 600px;
	width: 100;
	background-repeat: no-repeat;
	background-position: center center;
	position: relative;
    background-image: url(img/bg1.jpg);
}

.login .login-panel{
    height: 408px;
	width: 368px;  
	position: absolute;
	background-color: #FFFFFF;
	top: 20%;
	right: 15%;
	bottom:20%;	
	background-image: url(img/bg.jpg);
}

.login .login-title {
  text-align: center;
  color: black;
}
.login .login-title h2 {
  letter-spacing: 10px;
}
.login-container {
  width: 100%;
  box-sizing: border-box;
  width: 100%;
  margin: 20px 0 0;
  text-align: center;
}

.login .input {
  border: 1px solid black;
  display: inline-block;
  box-sizing: border-box;
  width: 80%;
  height: 46px;
  padding-left: 10px;
  margin: 0 auto;
  font-size: 14px;
  outline: none;
  color:  #76838f;
}

.login .input:focus {
  outline: none;
  border: 1px solid #62a8ea;
}

.login .btn-login {
  background-color: #62a8ea;
  border: none;
  width: 80%;
  height: 45px;
  line-height: 45px;
  color: white;
  cursor: pointer;
  font-size: 16px;
  font-weight: bold;
}
</style>
<script type="text/javascript">
     function check() {
    if(document.getElementById("username").value=="") {
        alert("请输入用户名！");
         return false;
      } else if(document.getElementById("password").value=="") {
        alert("请输入密码！");
        return false;
      } else if(!document.getElementById("student").checked && !document.getElementById("teacher").checked && !document.getElementById("admin").checked){
    	alert("请选择身份！");
    	return false;
      }else{
   	    alert("提交成功,即将跳转！")
        return true;
      }
    }
   </script>
<meta charset="UTF-8">
<title>登录</title>
</head>
<body>

<div>
  <div class="header"><h1 align="center">学生评分管理系统</h1></div>	
</div>
<form action="LoginServlet" method="post" onsubmit="return check()">	
<div class='login'>
   <div class="login-panel">
        <div class="login-title">
          <br><br><h2>用户登陆</h2>
        </div>
         <div class="login-container">
            <i class="layui-icon layui-icon-username"></i><input type="text" class="input" name ="username" id="username" placeholder="请输入用户名" />
         </div>

    <div class="login-container">
          <i class="layui-icon layui-icon-password"></i><input type="password"  class="input" name ="password" id ="password"placeholder="请输入密码"/>
      </div>
	<br/>
	<br/>
        <div align="center">
        <label><input name="type" id="student" type="radio" value="1" />学生 </label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		<label><input name="type" id="teacher" type="radio" value="2" />教师 </label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <label><input name="type" id="admin" type="radio" value="3" />管理 </label>
        </div>
    <div class="login-container">
	 <input type="submit" value="立即登录" class="btn-login" />
    </div>
  </div>
 </div>	
</form>


</body>
</html>