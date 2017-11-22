<%@ page contentType="text/html" pageEncoding="UTF-8"%>
<html>
<head>
	<title>登录页面</title>
	<link rel="stylesheet" type="text/css" href="./materialize/css/materialize.min.css">
	<script src="https://cdn.bootcss.com/jquery/3.2.1/jquery.js"></script>
	<script type="text/javascript" src="./materialize/js/materialize.min.js"></script>
</head>
<body>
	<%
		if(session.getAttribute("userid") != null){
			response.setHeader("refresh","1;URL=welcome.jsp") ;
	}

	%>

	<div class="container">
		<h2 class="center-align">登录页面</h2>
		<div class="row ">
			 <form class="z-depth-5 card-panel col s6 offset-s3" style="margin-top: 50px" action="login.jsp" method="post">
			 	<div class="row">
				 	<div class="input-field col s6 offset-s3">
				 		<input id="name" type="text" name="username" class="validata">
				 		<label>用户名</label>
				 	</div>
			 	</div>
			 	<div class="row">
				 	<div class="input-field col s6 offset-s3">
				 		<input name="password" type="password" class="validata">
				 		<label>密码</label>
				 	</div>
			 	</div>
			 	<div class="row">
			 		<div class="col s12 center-align">
			 			<button class="btn waves-effect waves-light" type="submit" name="action">登录</button>
			 		</div>
			 	</div>
			 </form>					
		</div>
	</div>
</body>
</html>