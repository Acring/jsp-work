<%@ page contentType="text/html" pageEncoding="UTF-8"%>
<html>
<head>
	<title></title>
	<link rel="stylesheet" type="text/css" href="./materialize/css/materialize.min.css">
	<script type="text/javascript" src="./materialize/js/materialize.min.js"></script>
		<script src="https://cdn.bootcss.com/jquery/3.2.1/jquery.js"></script>


</head>
<body>
	<%
	String username = "";
		if(session.getAttribute("userid") == null){
			response.setHeader("refresh", "0;URL=main.jsp");
	}else{
		username = session.getAttribute("username").toString();
	}
	%>
	<div class="container">
	 	<div class="card-panel teal lighten-2 center-align">欢迎光临<%=username%></div>
	 	<a href="logout.jsp">注销</a>
	</div>
</body>
</html>