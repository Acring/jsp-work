<%@ page contentType="text/html" pageEncoding="UTF-8"%>

<%@ page import="com.acring.util.DBHelper" %>
<%@ page import="com.acring.pojo.Student" %>

<!DOCTYPE html>
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

	String id = request.getParameter("id");
	String password = request.getParameter("password");

	if(id == "" || id == null){
		%>
		<div class="container">
	 	<div class="card-panel red lighten-2 center-align">学号不能为空</div>
		</div>
		<%
		response.setHeader("refresh", "2; URL=login.htm");
		return;
	}
	else if(password == "" || password == null){
		%>
		<div class="container">
	 	<div class="card-panel red lighten-2 center-align">密码不能为空</div>
		</div>
		<%
		response.setHeader("refresh", "2; URL=login.htm");
		return;
	}

	Student student = new Student();
	if(dbHelper.getStudentById(id) != null){
	%>
		<div class="container">
	 	<div class="card-panel red lighten-2 center-align">用户已存在</div>
		</div>
	<%
	}
	else{
		student.setId(id);
		student.setPassword(password);

		dbHelper.insertStudent(student);
		%>
			<div class="container">
		 	<div class="card-panel teal lighten-2 center-align">注册成功, 正在返回</div>
			</div>
		<%
	}
	response.setHeader("refresh", "2; URL=login.htm");


	%>
</body>
</html>