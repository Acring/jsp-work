<%@ page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="java.util.*"%>
<%@ page import="com.acring.util.DBHelper"%>
<%@ page import="com.acring.pojo.Student" %>


<html>
<head>
	<title></title>
	<link rel="stylesheet" type="text/css" href="./materialize/css/materialize.min.css">
	<script src="https://cdn.bootcss.com/jquery/3.2.1/jquery.js"></script>
	<script type="text/javascript" src="./materialize/js/materialize.min.js"></script>
</head>
<body>
	<%
		DBHelper dbHelper = new DBHelper();
		Student student = new Student();

		request.setCharacterEncoding("UTF-8") ;
		String id = request.getParameter("id");
		String password = request.getParameter("password");
		String referer = request.getHeader("referer");
		String loginTip = "";
		if((student = dbHelper.getStudentById(id)) != null){
			if(!student.getPassword().equals(password)){

				response.setHeader("refresh", "1;URL=login.htm");
				%>
				<div class="container">
		 		<div class="card-panel red lighten-2 center-align">密码或账号不正确</div>
				</div>	
				<%
				return;
			}
			session.setAttribute("id", "1506100007");
			response.setHeader("refresh", "1;URL=welcome.jsp");
			%>
			<div class="container">
		 	<div class="card-panel teal lighten-2 center-align">登录成功</div>
			</div>	
		<%
		}
		else{
			
			response.setHeader("refresh", "1;URL=login.htm");
			%>
			<div class="container">
	 		<div class="card-panel red lighten-2 center-align">密码或账号不正确</div>
			</div>	
			<%
		}
		%>

	
</body>
</html>