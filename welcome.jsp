<%@ page contentType="text/html" pageEncoding="UTF-8"%>
<jsp:useBean id="student" scope="request" class="com.acring.pojo.Student"/>
<html>
<head>
	<title></title>
	<link rel="stylesheet" type="text/css" href="./materialize/css/materialize.min.css">
		<script src="https://cdn.bootcss.com/jquery/3.2.1/jquery.js"></script>
	<script type="text/javascript" src="./materialize/js/materialize.min.js"></script>
</head>
<body>
	<%
	String id = "";

		if(session.getAttribute("id") == null){
			%>
			<jsp:forward page="trylogin.jsp"/>
			<%
	}else{
		id = session.getAttribute("id").toString();
	}
	%>
	<div class="container">
	 	<div class="card-panel teal lighten-2 center-align">欢迎光临, <%=id%></div>
	 	<a href="logout.jsp">注销</a>
	</div>
</body>
</html>