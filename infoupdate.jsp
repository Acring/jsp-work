<%@ page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="com.acring.util.DBHelper"%>
<%@ page import="com.acring.pojo.Student"%>

<!DOCTYPE html>
<html>
<head>
	<title>信息修改</title>
	<link rel="stylesheet" type="text/css" href="./materialize/css/materialize.min.css">
	<script src="https://cdn.bootcss.com/jquery/3.2.1/jquery.js"></script>
	<script type="text/javascript" src="./materialize/js/materialize.min.js"></script>
</head>
<body>
	<%
	if(session.getAttribute("id") == null){
			response.setHeader("Refresh", "1; login.htm"); // 未登录跳转到登录界面
	}else{


	}

	%>
</body>
</html>