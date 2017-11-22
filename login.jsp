<%@ page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="java.util.*"%>
<html>
<head>
	<title></title>
		<link rel="stylesheet" type="text/css" href="./materialize/css/materialize.min.css">
	<script type="text/javascript" src="./materialize/js/materialize.min.js"></script>
		<script src="https://cdn.bootcss.com/jquery/3.2.1/jquery.js"></script>
</head>
<body>
	<%
		request.setCharacterEncoding("UTF-8") ;
		String username = request.getParameter("username");
		String password = request.getParameter("password");
		String referer = request.getHeader("referer");
		String loginTip = "";
		if(username.equals("acring") && password.equals("123456")){
			session.setAttribute("userid", "1506100007");
			session.setAttribute("username", username);
			response.setHeader("refresh", "1;URL=welcome.jsp");
			loginTip = "登录成功";
		}else{
			loginTip = "登录失败";
			response.setHeader("refresh", "1;URL=main.jsp");
		}
	%>

	<div class="container">
	 	<div class="card-panel teal lighten-2 center-align"><%=loginTip%></div>
	</div>
</body>
</html>