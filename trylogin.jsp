<%@ page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="java.util.*"%>
<jsp:useBean id="student" scope="request" class="com.acring.pojo.Student"/>

<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>登录页面</title>
	<link rel="stylesheet" type="text/css" href="./materialize/css/materialize.min.css">
	<script src="https://cdn.bootcss.com/jquery/3.2.1/jquery.js"></script>
	<script type="text/javascript" src="./materialize/js/materialize.min.js"></script>
	<script type="text/javascript">
		function focusonId(){
			frm.uid.focus();
		}
	</script>
	<style type="text/css">
	html{
		height: 100%
	}
body { 
background:url(./wallpaper2.jpg) no-repeat;

background-size:100% 100%;

}

.content {
    z-index: 1;
}
.content:after {
    content: '';
    position: absolute;
    top: 0;
    left: 0;
    right: 0;
    bottom: 0;
    background-color: rgba(255,255,255,0.8);
    z-index: -1;
    -webkit-filter: blur(2px);
    -moz-filter: blur(2px);
    -ms-filter: blur(2px);
    -o-filter: blur(2px);
    filter: blur(2px);  
}
	</style>
</head>
<%
	if(student.getId() == null){
	student.setId("");
	if(student.getPassword() == null){
	student.setPassword("");
}
}

%>
<body onLoad="focusonId()">
	<div class="container">
		<h2 class="center-align">登录页面</h2>
		<div class="row ">
			 <form id="frm" class="content z-depth-5 card-panel col s6 offset-s3" style="margin-top: 50px" action="login.jsp" method="post" onsubmit="return validate_form(this)">
			 	<div class="row">
				 	<div class="input-field col s6 offset-s3">
				 		<%

				 		if(student.errorCode == 101){ // 学号有错误
				 		%>
				 		<input id="uid" type="text" name="id" class="validate invalid" value=<%=student.getId()%>>
				 		<label for="uid" data-error="10位数字">学号</label>
				 		<%
				 		}
				 		else if(student.errorCode == 201){
				 		%>
				 		<input id="uid" type="text" name="id" class="validate invalid" value=<%=student.getId()%>>
				 		<label for="uid" data-error="学号或密码错误">学号</label>
				 		<%
				 		}
				 		else{
				 		%>
				 		<input id="uid" type="text" name="id" class="validate valid" value=<%=student.getId()%>>
				 		<label for="uid" data-error="10位数字">学号</label>
				 		<%
				 	}
				 		%>
				 		</div>
			 	</div>
			 	<div class="row">
				 	<div class="input-field col s6 offset-s3">
				 		<%
				 		if(student.errorCode == 102){  // 密码格式有错误
				 			%>
				 		<input id="password" name="password" type="password" class="validate invalid" value=<%=student.getPassword()%>>
				 		<label for="password" data-error="6位数字或字母">密码</label>
				 		<%	
				 		}else{
				 		%>
				 		<input id="password" name="password" type="password" class="validate valid" value=<%=student.getPassword()%>>
				 		<label for="password" data-error="6位数字或字母">密码</label>
				 		<%
				 	}
				 	%>
				 	</div>
			 	</div>
			 	<div class="row">
			 		<div class="col s12 center-align">
			 			<button class="btn waves-effect waves-light" type="submit" name="action">登录</button>
			 			<button class="btn blue waves-effect waves-light" type="button" onclick="window.location.href='register.htm'">注册</button>

			 		</div>
			 			
			 	</div>
			 </form>
		</div>
	</div>
</body>
</html>